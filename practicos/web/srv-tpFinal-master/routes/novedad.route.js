const express = require('express');
const router = express.Router();

const novedadCtrl = require('./../controllers/novedad.controller');
const propCtrl = require('./../controllers/propietario.controller');

router.get('/', novedadCtrl.getNovedades);
//router.get('/:email', propCtrl.getPropietario);
router.get('/:prop',novedadCtrl.getNovedadesProp);
router.post('/', novedadCtrl.createNovedad);
router.put('/:id', novedadCtrl.editNovedad);
router.delete('/:id', novedadCtrl.deleteNovedad);

module.exports = router;