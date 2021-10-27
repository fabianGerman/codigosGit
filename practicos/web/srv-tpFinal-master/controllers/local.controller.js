const Local = require('../models/local'); 

const localCtrl = {}

localCtrl.getLocales = async (req, res) => {
    locales = await Local.find();
    res.json(locales);
}

localCtrl.getLocalesLibres = async (req, res) => {
    locales = await Local.find({alquilado : false});
    res.json(locales);
}

localCtrl.getLocal = async (req, res) => {
    local = await Local.findById(req.params.id);
    res.json(local);
}

localCtrl.createLocal = async (req, res) => {
    const local = new Local (req.body);
    await local.save();
    res.json({
        'status': 'Local saved'
    });
}

localCtrl.editLocal = async (req, res) => {
    const vLocal =  new Local (req.body);

    await Local.findByIdAndUpdate(req.params.id, {$set: vLocal}, {new: true});
    res.json({
        'status': 'Local updated'
    })
}

localCtrl.deleteLocal = async (req, res)=>{
    await Local.findByIdAndRemove(req.params.id)
    res.json({
        status: 'Local removed'
    })
}

module.exports= localCtrl;