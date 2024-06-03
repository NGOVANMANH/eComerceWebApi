const { Router } = require('express')
const authRoute = require('./auth.route')
const userRoute = require('./user.route')
const brandRoute = require('./brand.route')
const categoryRoute = require('./category.route')
const productRoute = require('./product.route')
const productAttrRoute = require('./product-attribute.route')
const cartRoute = require('./cart.route')
const orderRoute = require('./order.route')
const addressRoute = require('./address.route')
const voucherRoute = require('./voucher.route')
const router = Router()

router.use('/users', userRoute)
router.use('/auth', authRoute)
router.use('/brands', brandRoute)
router.use('/categories', categoryRoute)
router.use('/products', productRoute)
router.use('/product-attributes', productAttrRoute)
router.use('/carts', cartRoute)
router.use('/orders', orderRoute)
router.use('/addresses', addressRoute)
router.use('/vouchers', voucherRoute)


module.exports = router
