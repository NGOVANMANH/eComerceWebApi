const voucherDao = require("../dao/voucher.dao");

class VoucherConttroller {
    checkVoucher(req, res, next) {
        const { userId, voucherCode, orderTotal } = req.body;

        if (!userId || !voucherCode || !orderTotal) {
            return res.status(400).json({
                success: false,
                message: 'userId, voucherCode, orderTotal are required'
            })
        }

        voucherDao.checkVoucher({ userId, voucherCode, orderTotal }, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(200).json({
                    success: true,
                    data: data[0]
                })
            }
        })
    }
    getVouchers(req, res, next) {
        const { limit, offset } = req.query
        voucherDao.getVouchers({ limit, offset }, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(200).json({
                    success: true,
                    data: {
                        paginations: {
                            total: data[0].total_count,
                            limit: +limit,
                            offset: +offset
                        },
                        vouchers: data
                    }
                })
            }
        })
    }
    createVoucher(req, res, next) {
        const {
            code,
            name,
            description,
            discountType,
            discountValue,
            startDate,
            endDate,
            minimumOrderValue,
            quantity
        } = req.body;

        // Validate required fields
        if (!code || !name || !discountType || !discountValue || !startDate || !endDate || minimumOrderValue === undefined || !quantity) {
            return res.status(400).json({
                success: false,
                message: 'code, name, description, discountType, discountValue, startDate, endDate, minimumOrderValue, and quantity are required'
            });
        }

        // Create the voucher
        voucherDao.createVoucher(req.body, (err, data) => {
            if (err) {
                return res.status(500).json({
                    success: false,
                    message: err.sqlMessage || 'Internal Server Error'
                });
            }

            res.status(201).json({
                success: true,
                data: data
            });
        });
    }
    getVoucherById(req, res, next) {
        const { id } = req.params;
        if (!id) return res.status(400).json({
            success: false,
            message: 'id is required'
        })
        voucherDao.getVoucherById(id, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(200).json({
                    success: true,
                    data: data || null
                })
            }
        })
    }
    updateVoucher(req, res, next) {
        if (!req.params.id) {
            return res.status(400).json({
                success: false,
                message: 'id is required'
            })
        }
        voucherDao.updateVoucher(req.params.id, req.body, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(200).json({
                    success: true,
                    message: 'Updated successfully',
                    data: data || null
                })
            }
        })
    }
    deleteVoucherById(req, res, next) {
        const { id } = req.params;
        if (!id) {
            return res.status(400).json({
                success: false,
                message: 'id is required'
            })
        }
        voucherDao.deleteVoucherById(id, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(200).json({
                    success: true,
                    message: 'Deleted successfully',
                    data: data || null
                })
            }
        })
    }
    userGetVoucher(req, res, next) {
        const { userId, voucherId } = req.body
        if (!userId || !voucherId) {
            return res.status(400).json({
                success: false,
                message: 'userId and voucherId are required'
            })
        }
        else {
            voucherDao.userGetVoucher(userId, voucherId, (err, data) => {
                if (err) {
                    res.status(200).json({
                        success: false,
                        message: err.sqlMessage
                    })
                }
                else {
                    res.status(200).json({
                        success: true,
                        message: 'Get voucher successfully',
                        data: data || null
                    })
                }
            })
        }
    }
    getVouchersByUserId(req, res, next) {
        const { userId } = req.params
        if (!userId) {
            return res.status(400).json({
                success: false,
                message: 'userId is required'
            })
        }
        voucherDao.getVouchersByUserId(userId, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(200).json({
                    success: true,
                    data: data || null
                })
            }
        })
    }
}

module.exports = new VoucherConttroller();
