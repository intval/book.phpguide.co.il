(function() {
  var HighlightCode, RunPhpAssist, _gaq, config;

  config = {
    codeElem: 'pre',
    phpassistSelector: '.php_live',
    codeHighlighterSelector: '.code',
    googleAnalyticsId: "UA-18788673-4"
  };

  window.load = function(js, callback) {
    var firstScriptTag, node, scriptTags;
    node = document.createElement("script");
    node.type = "text/javascript";
    node.async = true;
    node.src = js;
    if (callback) {
      node.onload = callback;
    }
    scriptTags = document.getElementsByTagName("script");
    if (!firstScriptTag) {
      firstScriptTag = scriptTags[scriptTags.length - 1];
    }
    return firstScriptTag.parentNode.insertBefore(node, firstScriptTag);
  };

  if (window.document.location.hostname === "book.phpguide.co.il") {
    _gaq = _gaq || [];
    _gaq.push(["_setAccount", config.googleAnalyticsId]);
    _gaq.push(["_trackPageview"]);
    window.load("http://www.google-analytics.com/ga.js");
  }

  jQuery(document).ready(function() {
    RunPhpAssist(config.codeElem + config.phpassistSelector);
    return HighlightCode(config.codeElem + config.codeHighlighterSelector);
  });

  RunPhpAssist = function(selector) {
    if (typeof window.PHPAssist === 'undefined') {
      throw "PHPAssist is not defined. Did you include the api script";
    }
    return window.PHPAssist(selector);
  };

  HighlightCode = function(selector) {
    if (typeof window.prettyPrint === 'undefined') {
      throw "prettyPrint is not defined. Did you include the api script";
    }
    jQuery(selector).each(function(index, elem) {
      var jqElem, lang;
      jqElem = jQuery(elem);
      if (!jqElem.hasClass(config.phpassistSelector.replace('.', ''))) {
        lang = jqElem.hasClass('javascript') ? 'js' : 'php';
        jqElem.addClass('prettyprint linenums lang-' + lang);
        return jqElem.html("<code>" + jqElem.html() + "</code>");
      }
    });
    return window.prettyPrint();
  };

}).call(this);
