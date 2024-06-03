const { Router } = require('express')
const cartController = require('../controllers/cart.controller')

const router = Router();

router.get('/', cartController.getCartByUserId)
router.post('/', cartController.addToCart)
router.patch('/', cartController.updateCartItem)
router.delete('/:cartId', cartController.deleteCartItem)
router.delete('/', cartController.emptyCart)

module.exports = router;