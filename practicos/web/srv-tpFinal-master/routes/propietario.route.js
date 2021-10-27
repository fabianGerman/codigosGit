const express = require('express');
const router = express.Router();

const propietarioCtrl = require('./../controllers/propietario.controller');

router.get('/', propietarioCtrl.getPropietarios);
router.post('/', propietarioCtrl.createPropietario);
router.put('/:id', propietarioCtrl.editPropietario);
router.delete('/:id', propietarioCtrl.deletePropietario);

module.exports = router;