/*
var express = require('express');
var app = express();

app.get('/', function (req, res) {
    res.send('Hola Mundo');
});

app.listen(3000, function() {
    console.log(' aplicacion ejemplo2, escuchando puerto 3000');
})
*/
const http = require('http');

http.createServer((req, res) => {
    res.writeHead(200, {'Content-Type': 'aplication/json'});
    let salida = {
        nombre: 'fabian',
        apellido: 'ontiveros',
        url: req.url
    }
    res.write(JSON.stringify(salida));
    res.end();
})
.listen(8080);
console.log('escuchando el puerto 8080');
