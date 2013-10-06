var utils = require('../utils.js'),
    _ = require('underscore');
    
exports.index = function(req, res){
    var fileJSON = null;
    
    if (!_.isUndefined(req.query.slug)) {
        //Track down the post for editing
        fileJSON = utils.getFileFromSlug(req.query.slug);   
    }

    var escapeme = function(str)
    { return str
        .replace(/&/g, "&amp;")
        .replace(/</g, "&lt;")
        .replace(/>/g, "&gt;")
        .replace(/"/g, "&quot;")
        .replace(/'/g, "&#039;");
    };

    res.locals.collectionItem = fileJSON;
    res.render('edit', { title: 'Edit Collection Item', func: {'escapeme': escapeme} });
};