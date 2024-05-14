const { Router } = require('express')
const categoryController = require('../controllers/category.controller')

const router = Router()

router.post('/', categoryController.addBrand)
router.get('/', categoryController.getAllBrands)

module.exports = router