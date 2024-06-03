const { Router } = require('express')
const userController = require('../controllers/user.controller')

const router = Router()

router.get('/:id', userController.getUserById)
router.post('/', userController.addUser)
router.patch('/', userController.updateUserByEmail)
router.get('/', userController.getUsers)

module.exports = router