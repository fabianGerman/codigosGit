const Propietario = require('../models/propietario'); 

const propietarioCtrl = {}

propietarioCtrl.getPropietarios = async (req, res) => {
    propietarios = await Propietario.find();
    res.json(propietarios);
}

propietarioCtrl.getPropietario = async (req, res) =>{
    prop = await Propietario.findOne({email : req.params.email}, function (err, prop){});
    res.json(prop);
}

propietarioCtrl.createPropietario = async (req, res) => {
    const propietarios = new Propietario (req.body);
    await propietarios.save();
    res.json({
        'status': 'Propietario saved'
    });
}

propietarioCtrl.editPropietario = async (req, res) => {
    const prop =  new Propietario (req.body);

    await Propietario.findByIdAndUpdate(req.params.id, {$set: prop}, {new: true});
    res.json({
        'status': 'Propietario updated'
    })
}

propietarioCtrl.deletePropietario = async (req, res)=>{
    await Propietario.findByIdAndRemove(req.params.id)
    res.json({
        status: 'Propietario removed'
    })
}

module.exports= propietarioCtrl;