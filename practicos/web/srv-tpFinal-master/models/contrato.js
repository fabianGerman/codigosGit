const mongoose = require('mongoose');
const Local = require('./local');
const propietario = require ('./propietario');
const {Schema} = mongoose;

const ContratoSchema = new Schema({
    fecha: {type: String, required: true},
    propietario: {type: Schema.Types.ObjectId, ref: propietario, required: true},
    locales : [{type: Schema.Types.ObjectId, ref:Local}],
    costoTotalAlq : {type : Number, required : true},
    cerrado : {type : Boolean, required : true}
})

module.exports = mongoose.model('Contrato', ContratoSchema);