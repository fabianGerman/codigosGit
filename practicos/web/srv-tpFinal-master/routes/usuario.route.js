const express = require('express');
const router = express.Router();

const usuarioCtrl = require('./../controllers/usuario.controller');

router.get('/', usuarioCtrl.getUsuarios);
router.get('/:usuario', usuarioCtrl.getUsuario);
router.post('/', usuarioCtrl.createUsuario);
router.post('/login', usuarioCtrl.loginUsuario);
router.put('/:id', usuarioCtrl.editUsuario);
router.delete('/:id', usuarioCtrl.deleteUsuario);

module.exports = router;