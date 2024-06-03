const { Router } = require('express')
const categoryController = require('../controllers/category.controller')

const router = Router()

router.post('/', categoryController.addCategory)
router.get('/', categoryController.getAllCategories)

module.exports = router