const addressDao = require('../dao/address.dao')

class AddressController {
    getByUserId(req, res, next) {
        const { userId } = req.query
        if (!userId) {
            return res.status(400).json({
                success: false,
                message: 'userId is required'
            })
        }
        addressDao.getByUserId(userId, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(200).json({
                    success: true,
                    data: data
                })
            }
        })
    }
    addAddress(req, res, next) {
        const { userId, title, province, district, ward, phoneNumber } = req.body;

        if (!userId || !province || !district || !ward || !title) {
            return res.status(400).json({
                success: false,
                message: 'userId, title, province, district, ward, are required'
            })
        }

        addressDao.addAddress({ userId, title, province, district, ward, phoneNumber }, (err, data) => {
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
    updateAddress(req, res, next) {
        const { addressId,
            district,
            phoneNumber,
            province,
            title,
            ward } = req.body

        console.log()

        if (!addressId) {
            return res.status(400).json({
                success: false,
                message: 'addressId is required'
            })
        }
        else {
            addressDao.updateAddress({ addressId, title, province, district, ward, phoneNumber }, (err, data) => {
                if (err) {
                    res.status(200).json({
                        success: false,
                        message: err.sqlMessage
                    })
                }
                else {
                    res.status(200).json({
                        success: true,
                        message: 'Update successfully',
                        data: data[0]
                    })
                }
            })
        }
    }
}

module.exports = new AddressController();
