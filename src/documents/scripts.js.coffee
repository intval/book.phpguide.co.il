
# void Load(string url, func callback)
# Loads a javascript from remote url and injects it into the page
window.load = (js, callback) ->
    node = document.createElement("script")
    node.type = "text/javascript"
    node.async = true
    node.src = js

    if callback
        node.onload = callback

    scriptTags = document.getElementsByTagName("script")
    firstScriptTag = scriptTags[scriptTags.length - 1]  unless firstScriptTag
    firstScriptTag.parentNode.insertBefore node, firstScriptTag



# Integrate google analytics
if window.document.location.hostname == "book.phpguide.co.il"
    _gaq = _gaq or []
    _gaq.push ["_setAccount", "UA-18788673-4"]
    _gaq.push ["_trackPageview"]
    window.load "http://www.google-analytics.com/ga.js"