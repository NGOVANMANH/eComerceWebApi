const productAttributeDao = require('../dao/product-attribute.dao')

class ProductAttributeController {
    addProductAttribute(req, res, next) {
        const { type, value } = req.body
        if (!type || !value) {
            return res.status(400).json({
                success: false,
                message: 'Type and value are required'
            })
        }
        else {
            productAttributeDao.addProductAttribute({ type, value }, (err, data) => {
                if (err) {
                    res.status(200).json({
                        success: false,
                        message: err.sqlMessage
                    })
                }
                else {
                    res.status(200).json({
                        success: true,
                        data
                    })
                }

            })
        }
    }
    getProductAttributeByType(req, res, next) {
        const { type } = req.query
        if (!type) {
            return res.status(400).json({
                success: false,
                message: 'Type is required'
            })
        }
        else {
            productAttributeDao.getProductAttributeByType(type, (err, data) => {
                if (err) {
                    res.status(200).json({
                        success: false,
                        message: err.sqlMessage
                    })
                }
                else {
                    res.status(200).json({
                        success: true,
                        data
                    })
                }
            })
        }
    }
}

module.exports = new ProductAttributeController()