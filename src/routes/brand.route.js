const { Router } = require('express')
const brandController = require('../controllers/brand.controller')

const router = Router()

router.post('/', brandController.addBrand)
router.get('/', brandController.getAllBrands)

module.exports = router