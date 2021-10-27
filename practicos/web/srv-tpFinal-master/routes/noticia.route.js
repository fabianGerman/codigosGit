const express = require('express');
const router = express.Router();

const noticiaCtrl = require('./../controllers/noticia.controller');

router.get('/', noticiaCtrl.getNoticia);
router.get('/vigentes/', noticiaCtrl.getNoticiasVigen);
router.post('/', noticiaCtrl.createNoticia);
router.put('/:id', noticiaCtrl.editNoticia);
router.delete('/:id', noticiaCtrl.deleteNoticia);

module.exports = router;