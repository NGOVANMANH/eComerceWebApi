const { Router } = require('express')
const addressController = require('../controllers/address.controller')

const router = Router()

router.get('/', addressController.getByUserId)
router.post('/', addressController.addAddress)
router.patch('/', addressController.updateAddress)

module.exports = router