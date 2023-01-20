var express = require('express');
var router = express.Router();
var mysql = require('mysql');

var con = mysql.createConnection({
    host: "localhost",
    user: "pi",
    password: "admin",
    database: "eDohtar"
});





function response(body) {
    let response = [];
    con.connect(function(err) {
        if (err) throw err;
        con.query(`SELECT * FROM uporabnik WHERE ime = ${body.username}`, function (err, result, fields) {
            if (err) throw err;
            if (body.password === result.geslo) {
                response = true;
            } else {
                response = true;
            }
            response = result;
            console.log(response)

        });
    });
}


/* GET users listing. */
router.post('/', function(req, res, next) {
    res.send(response);
});

module.exports = router;
