const { Router } = require('express')
const voucherController = require('../controllers/voucher.controller')

const router = Router()

router.post('/create', voucherController.createVoucher)
router.post('/user-get-voucher', voucherController.userGetVoucher)
router.get('/user/:userId', voucherController.getVouchersByUserId)
router.patch('/:id', voucherController.updateVoucher)
router.post('/', voucherController.checkVoucher)
router.get('/:id', voucherController.getVoucherById)
router.delete('/:id', voucherController.deleteVoucherById)
router.get('/', voucherController.getVouchers)

module.exports = router
