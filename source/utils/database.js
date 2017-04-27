var mysql = require('mysql');
var database = { connection: null };

database.connect = function(dbConfig) {
    this.connection = mysql.createConnection(dbConfig);
    this.connection.connect();
}

exports = module.exports = database;