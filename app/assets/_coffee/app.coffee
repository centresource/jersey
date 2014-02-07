# Toggle sidebar navigation items
$('#nav-primary').on 'click', '.nav-action > a', (e) ->
  e.preventDefault()
  $item    = $(e.target).parent('li')
  isActive = $item.hasClass('active') || $item.hasClass('child-active')

  if isActive
    $item.removeClass('active child-active')
  else
    $item.addClass('active')
