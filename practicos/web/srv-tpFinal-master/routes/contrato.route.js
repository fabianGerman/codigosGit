const express = require('express');
const router = express.Router();

const contratoCtrl = require('./../controllers/contrato.controller');

router.get('/', contratoCtrl.getContrato);
router.post('/', contratoCtrl.createContrato);
router.put('/:id', contratoCtrl.editContrato);
router.delete('/:id', contratoCtrl.deleteContrato);

module.exports = router;