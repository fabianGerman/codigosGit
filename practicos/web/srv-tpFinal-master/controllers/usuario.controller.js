const Usuario = require('../models/usuario'); 

const usuarioCtrl = {}

usuarioCtrl.getUsuarios = async (req, res) => {
    usuarios = await Usuario.find();
    res.json(usuarios);
}

usuarioCtrl.createUsuario = async (req, res) => {
    const usuario = new Usuario (req.body);
    await usuario.save();
    res.json({
        'status': 'Usuario saved'
    });
    
}

usuarioCtrl.editUsuario = async (req, res) => {
    const usu =  new Usuario (req.body);

    await Usuario.findByIdAndUpdate(req.params.id, {$set: usu}, {new: true});
    res.json({
        'status': 'Usuario updated'
    })
}

usuarioCtrl.deleteUsuario = async (req, res)=>{
    await Usuario.findByIdAndRemove(req.params.id)
    res.json({
        status: 'Usuario removed'
    })
}


usuarioCtrl.getUsuario = async (req, res) => {
    usuario = await Usuario.findOne({ usuario: req.params.usuario }, function (err, usuario) {});
    res.json(usuario);
}

usuarioCtrl.loginUsuario = async (req, res)=>{
    const criteria = {
    usuario: req.body.usuario,
    password: req.body.password      
    }
    Usuario.findOne(criteria, function(err, user) {    
    if (err) {
    res.json({
    status: 0,
    message: 'error'})
    };
    if (!user) {
    res.json({
    status: 0,
    message: "not found" })
    };
    if (!user.activo) {
    res.json({
    status: 2,
    message: "usuario inactivo"})
    }
    else {
    res.json({
    status: 1,
    message: "success",
    usuario: user.usuario,
    perfil: user.perfil });
    }
    })
   }
   

module.exports= usuarioCtrl;