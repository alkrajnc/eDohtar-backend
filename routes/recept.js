var express = require('express');
var router = express.Router();
var mysql = require('mysql');

var con = mysql.createConnection({
    host: "localhost",
    user: "pi",
    password: "admin",
    database: "eDohtar"
});






    let response = [];
    con.connect(function(err) {
        if (err) throw err;
        con.query("SELECT * FROM recepti", function (err, result, fields) {
            if (err) throw err;
            response = result;
            console.log(response)
        });
    });





/* GET home page. */
router.get('/', function(req, res, next) {
    res.send(response)
});

module.exports = router;
