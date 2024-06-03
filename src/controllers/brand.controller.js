const brandDao = require('../dao/brand.dao')

class BrandController {
    addBrand(req, res, next) {
        const { name, shortDescription, description, logoUrl } = req.body
        if (!name) {
            return res.status(400).json({
                success: false,
                message: 'Name is required'
            })
        }

        brandDao.addBrand({ name, shortDescription, description, logoUrl }, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(201).json({
                    success: true,
                    message: 'Brand added successfully',
                    data
                })
            }
        })
    }

    getAllBrands(req, res, next) {
        const { limit, offset } = req.query
        brandDao.getAllBrands({ limit, offset }, (err, data) => {
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

module.exports = new BrandController()