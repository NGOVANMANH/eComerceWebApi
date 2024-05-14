const { Router } = require('express')
const userController = require('../controllers/user.controller')

const router = Router()

router.get('/:id', userController.getUserById)
router.patch('/:id', userController.updateUserByEmail)
router.get('/', userController.getUsers)

module.exports = router