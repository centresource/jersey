window.CS ||= {}

class CS.Anchors
  constructor: (selector, options) ->
    selector = selector or "#content-primary h1,
                            #content-primary h2,
                            #content-primary h3,
                            #content-primary h4,
                            #content-primary h5"

    elements = document.querySelectorAll(selector)

    i = 0
    while i < elements.length
      elementID = undefined

      unless elements[i].hasAttributes('class') and elements[i].className is 'no-anchor'
        if elements[i].hasAttribute("id")
          elementID = elements[i].getAttribute("id")
        else
          # We need to create an id on our element. First, we find which text selection method is available to the browser.
          textMethod = (if document.body.textContent then "textContent" else "innerText")

          # Get the text inside our element
          roughText = elements[i][textMethod]

          # Refine it so it makes a good ID. Makes all lowercase and hyphen separated.
          # Ex. Hello World > hello-world
          tidyText = roughText.replace(/\s+/g, "-").toLowerCase()

          # Assign it to our element.
          # Currently the setAttribute element is only supported in IE9 and above.
          elements[i].setAttribute "id", tidyText

          # Grab it for use in our anchor.
          elementID = tidyText
          anchor = "<a class=\"anchor-link\" href=\"#" + elementID + "\"><i class=\"fa fa-link\"></i></a>"
          elements[i].innerHTML = elements[i].innerHTML + anchor

      i++

anchors = new CS.Anchors
