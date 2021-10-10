var express = require('express');
var http = require('http');
var fs = require('fs');
var dir = 'pic';
var files = fs.readdirSync(dir);
var mysql = require('mysql');

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'kickrani',
    password: 'kickrani',
    database: 'kickrani'
});

var app = express();

connection.connect(function(err){
        if(!err){
            console.log("Database is connected ... \n\n");
        } else{
            console.log("Error connecting database ... \n\n");
        }
});

app.get("/", function(req, res){
        connection.query('SELECT * FROM catched', function(err, rows, fields){
            if(!err){
                res.send(rows);
                console.log('The solution is: ', rows);
            }
            else console.log('Error while performing Query.');
        });
});


app.get("/", function(req, res){
        res.send('kickwassssss')
});
app.use('/pic',express.static(__dirname+'/pic'));

app.listen(8888);

    
    