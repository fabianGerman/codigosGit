const { buscar, mostrar } = require('./student.js')
var express = require('express');
var app = express();
app.use(express.json());




app.get('/', function (req, res) {
    
    res.send('Mensaje de prueba ');
});

app.get('/students',function(req,res){
    res.send(mostrar());
})

app.get('/students/:id', function (req, res) {
    let id = Number(req.params.lu);
    res.send(buscar(id));
});

app.post('/students', function (req, res) {
    let body = res.body;
    res.json[{
        students: body
    }]; 
});

app.listen(5000, function() {
    console.log('escuchando puerto 5000');
})