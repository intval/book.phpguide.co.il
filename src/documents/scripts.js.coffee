# config
config =
    codeElem: 'pre'
    phpassistSelector: '.php_live'
    codeHighlighterSelector: '.code'
    googleAnalyticsId: "UA-18788673-4"

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
    _gaq.push ["_setAccount", config.googleAnalyticsId]
    _gaq.push ["_trackPageview"]
    window.load "http://www.google-analytics.com/ga.js"


jQuery(document).ready ->
    RunPhpAssist config.codeElem + config.phpassistSelector
    HighlightCode config.codeElem + config.codeHighlighterSelector



RunPhpAssist = (selector) ->
    throw "PHPAssist is not defined. Did you include the api script" if typeof(window.PHPAssist) is 'undefined'
    window.PHPAssist selector


HighlightCode = (selector) ->
    throw "prettyPrint is not defined. Did you include the api script" if typeof(window.prettyPrint) is 'undefined'

    jQuery(selector).each (index, elem) ->
        jqElem = jQuery(elem)
        if not jqElem.hasClass config.phpassistSelector.replace('.', '')
            lang = if jqElem.hasClass('javascript') then 'js' else 'php'
            jqElem.addClass 'prettyprint linenums lang-' + lang
            jqElem.html "<code>"+jqElem.html()+"</code>"

    window.prettyPrint()