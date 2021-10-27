const mongoose = require('mongoose');
const Usuario = require ('./usuario');
const {Schema} = mongoose;

const NoticiaSchema = new Schema({
    titulo : {type: String , require : true},
    descripcion: {type: String, required: true},
    fecha : {type : String, required : true},
    usuario: {type: Schema.Types.ObjectId, ref: Usuario, required:true},
    vigente: {type: Boolean, required: true}
})

module.exports = mongoose.model('Noticia', NoticiaSchema);