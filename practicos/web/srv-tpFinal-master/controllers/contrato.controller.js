const Contrato = require('../models/contrato'); 

const contratoCtrl = {}

contratoCtrl.getContrato = async (req, res) => {
    contratos = await Contrato.find().populate("locales").populate("propietario");
    res.json(contratos);
}

contratoCtrl.createContrato = async (req, res) => {
    const contrato = new Contrato (req.body);
    await contrato.save();
    res.json({
        'status': 'Contrato saved'
    });
}

contratoCtrl.editContrato = async (req, res) => {
    const contr =  new Contrato (req.body);
    await Contrato.findByIdAndUpdate(req.params.id, {$set: contr}, {new: true});
    res.json({
        'status': 'Contrato updated'
    })
}

contratoCtrl.deleteContrato = async (req, res)=>{
    await Contrato.findByIdAndRemove(req.params.id)
    res.json({
        status: 'Contrato removed'
    })
}

module.exports= contratoCtrl;