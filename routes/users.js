var express = require('express');
var router = express.Router();
var mysql = require('mysql');

var con = mysql.createConnection({
    host: "localhost",
    user: "pi",
    password: "admin",
    database: "eDohtar"
});










/* GET users listing. */
router.post('/', function(req, res, next) {
    let response = [];
    con.connect(function(err) {
        if (err) throw err;
        con.query(`SELECT * FROM uporabnik WHERE ime = ${req.body.username}`, function (err, result, fields) {
            if (err) throw err;
            if (req.body.password === result.geslo) {
                response = true;
            } else {
                response = true;
            }
            response = result;
            console.log(response)

        });
    });

    res.send(response);


});

module.exports = router;
