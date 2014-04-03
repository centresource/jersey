window.CS ||= {}

class CS.Flyover
  constructor: (element, options) ->
    @$element = $(element)
    @$body    = $('body')
    @options  = options

  @DEFAULTS =
    show: true
    panelInClass: 'in'
    bodyClass: 'flyover-in'

  toggle: ->
    if @$element.hasClass(@options.panelInClass) then @hide() else @show()

  show: (_relatedTarget) ->
    e = $.Event('shown.cs.flyover', { relatedTarget: _relatedTarget })

    @$element.addClass(@options.panelInClass)
    @$body.addClass(@options.bodyClass)
    @$element.on('click.dismiss.cs.flyover', '[data-dismiss="flyover"]', $.proxy(this.hide, this)).trigger(e)

  hide: (_relatedTarget) ->
    e = $.Event('hidden.cs.flyover', { relatedTarget: _relatedTarget })

    @$element.removeClass(@options.panelInClass)
    @$body.removeClass(@options.bodyClass)
    @$element.off('click.dismiss.cs.flyover').trigger(e)



clearFlyovers = (e) ->
  $('body').removeClass('flyover-in')
  $('[data-toggle="flyover"]').each ->
    $this   = $(this)
    href    = $this.attr('href')
    $target = $($this.data('target') || (href && href.replace(/.*(?=#[^\s]+$)/, '')))

    e = $.Event('hidden.cs.flyover', { relatedTarget: this })
    $target.removeClass('in').off('click.dismiss.cs.flyover').trigger(e)



# Flyover Plugin Definition
# ========================
old = $.fn.flyover

$.fn.flyover = (option, _relatedTarget) ->
  return this.each ->
    $this   = $(this)
    data    = $this.data('cs.flyover')
    options = $.extend({}, CS.Flyover.DEFAULTS, $this.data(), typeof option == 'object' && option)

    if !data
      $this.data('cs.flyover', (data = new CS.Flyover(this, options)))

    # debugger
    if typeof option == 'string'
      data[option](_relatedTarget)
    else if options.show
      data.show(_relatedTarget)


$.fn.flyover.Constructor = CS.Flyover



# Flyover No Conflict
# ==================
$.fn.flyover.noConflict = ->
  $fn.flyover = old
  return this



# Flyover Data API
# ===============
$(document).on 'click.cs.flyover.data-api', '[data-toggle="flyover"]', (e) ->
  $this   = $(e.currentTarget)
  href    = $this.attr('href')
  $target = $($this.data('target') || (href && href.replace(/.*(?=#[^\s]+$)/, '')))
  option  = if $target.data('cs.flyover') then 'toggle' else $.extend({}, $target.data(), $this.data())

  e.preventDefault() if $this.is('a')

  $target.flyover(option, this)

$(document).on 'keyup', (e) ->
  clearFlyovers() if e.which == 27
