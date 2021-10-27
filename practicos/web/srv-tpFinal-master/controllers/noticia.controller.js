const Noticia = require('../models/noticia'); 

const noticiaCtrl = {}

noticiaCtrl.getNoticia = async (req, res) => {
    noticias = await Noticia.find().populate("usuario");
    res.json(noticias);
}

noticiaCtrl.getNoticiasVigen = async (req, res) => {
    noticias = await Noticia.find({vigente : true});
    res.json(noticias);
}

noticiaCtrl.createNoticia = async (req, res) => {
    const noticia = new Noticia (req.body);
    await noticia.save();
    res.json({
        'status': 'Noticia saved'
    });
}

noticiaCtrl.editNoticia = async (req, res) => {
    const noti =  new Noticia (req.body);

    await Noticia.findByIdAndUpdate(req.params.id, {$set: noti}, {new: true});
    res.json({
        'status': 'Noticia updated'
    })
}

noticiaCtrl.deleteNoticia = async (req, res)=>{
    await Noticia.findByIdAndRemove(req.params.id)
    res.json({
        status: 'Noticia removed'
    })
}

module.exports= noticiaCtrl;