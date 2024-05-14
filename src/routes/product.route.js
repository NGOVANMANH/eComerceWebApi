const { Router } = require('express')
const productController = require('../controllers/product.controller')

const router = Router()

router.get('/:id', productController.getProductById)
router.get('/', productController.getProducts)
router.post('/', productController.addProduct)

module.exports = router