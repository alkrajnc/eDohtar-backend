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
            if (body.password == result.geslo) {
                return true;
            } else {
                return false
            }
            response = result;
            console.log(response)

        });
    });
}


/* GET users listing. */
router.post('/', function(req, res, next) {
    let resp = response(req.body)
    res.send(resp);
});

module.exports = router;
