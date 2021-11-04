const { students } = require('./students');
var express = require('express');
var app = express();
app.use(express.json());
app.use(express.urlencoded({
    extended: true
}));
var port = 5000;


app.get('/',function(req,res){
    res.send('<h1> mensaje para el punto 7 </h1>');
});

app.get('/students', function(req,res){
    res.json(students);
});

app.get('/students/:lu',function(req,res){
    const {lu} = req.params;
    const finds = students.find(e => e.lu === Number(lu));
    res.json(finds);
});

app.post('/students',function(req,res){
    res.json({
        students: req.body
    })
});

app.listen(port,function(){
    console.log('escuchando puerto 5000');
});