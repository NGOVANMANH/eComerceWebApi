const { Router } = require('express')
const orderController = require('../controllers/order.controller')

const router = Router()

router.get('/u/:userId', orderController.getOrderByUserId)
router.get('/', orderController.getOrderById)
router.get('/o/', orderController.getOrders)
router.post('/', orderController.addNewOrder)
router.put('/status', orderController.updateStatusOrder)
router.put('/', orderController.cancelOrder)

module.exports = router
