const Novedad = require('../models/novedad'); 
const Propietario = require ('../models/propietario');

const novedadCtrl = {}

novedadCtrl.getNovedades = async (req, res) => {
    novedades = await Novedad.find().populate("usuario").sort({estado : 1 ,fecha : -1});
    res.json(novedades);
}

novedadCtrl.getNovedadesProp = async (req, res) => {
    console.log(req.params.usuario);
    novedades = await Novedad.find({usuario : req.params.usuario}).populate("usuario");
    res.json(novedades);
}

novedadCtrl.getPropietario = async (req, res) =>{
    prop = await Propietario.findOne({email : req.params.email}, function (err, prop){});
    res.json(prop);
}

novedadCtrl.createNovedad = async (req, res) => {
    const novedad = new Novedad (req.body);
    await novedad.save();
    res.json({
        'status': 'Novedad saved'
    });
}

novedadCtrl.editNovedad = async (req, res) => {
    const vNovedad =  new Novedad (req.body);
    await Novedad.findByIdAndUpdate(req.params.id, {$set: vNovedad}, {new: true});
    res.json({
        'status': 'Novedad updated'
    })
}

novedadCtrl.deleteNovedad = async (req, res)=>{
    await Novedad.findByIdAndRemove(req.params.id)
    res.json({
        status: 'Novedad removed'
    })
}

module.exports= novedadCtrl;