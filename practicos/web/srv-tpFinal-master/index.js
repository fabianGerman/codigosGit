var express = require('express');
var app = express();

const {mongoose} = require('./database')
const cors = require('cors');

//middlewares
app.use(express.json({limit:'50mb'}));
app.use(cors({origin: 'http://localhost:4200'}));

//Cargamos el modulo de direccionamiento de rutas para puntos
app.use('/api/contrato', require('./routes/contrato.route'));
app.use('/api/local', require('./routes/local.route'));
app.use('/api/noticia', require('./routes/noticia.route'));
app.use('/api/novedad', require('./routes/novedad.route'));
app.use('/api/propietario', require('./routes/propietario.route'));
app.use('/api/usuario', require('./routes/usuario.route'));

//setting
app.set('port', process.env.PORT || 3000);

//starting the server
app.listen(app.get('port'), () => {
    console.log(`Server started on port`, app.get('port'));
});