const { Router } = require('express')
const productController = require('../controllers/product.controller')

const router = Router()

router.get('/:id', productController.getProductById)
router.delete('/:id', productController.deleteProductById)
router.get('/product-skus/:productId', productController.getProductSkusByProductId)
router.patch('/:id', productController.updateProductById)
router.get('/', productController.getProducts)
router.post('/add-detail', productController.addProductDetail)
router.get('/search/:key', productController.findProductByKey)
router.post('/', productController.addProduct)

module.exports = router