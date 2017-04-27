var express = require('express');
var database = require('../utils/database');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    database.connection.query('SELECT * FROM tags;', function(error, results, fields) {
        console.log(results);
        res.render('index', { 
            tags: results
        });
    })
});

module.exports = router;
