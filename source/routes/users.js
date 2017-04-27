var express = require('express');
var database = require('../utils/database');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

/* GET users listing. */
router.get('/list', function(req, res, next) {
    database.connection.query('SELECT * FROM users;', function(error, results, fields) {
        if (error) throw error;
        return res.json(results);
    })
});

module.exports = router;
