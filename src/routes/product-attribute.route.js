const { Router } = require('express')
const productAttributeController = require('../controllers/product-attribubte.controller')

const router = Router()

router.post('/', productAttributeController.addProductAttribute)
router.get('/', productAttributeController.getProductAttributeByType)

module.exports = router