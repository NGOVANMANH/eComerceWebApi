const brandDao = require('../dao/brand.dao')

class BrandController {
    addBrand(req, res, next) {
        const { parentId, name, shortDescription, description } = req.body
        if (!name) {
            return res.status(400).json({
                succsess: false,
                message: 'Name is required'
            })
        }

        brandDao.addBrand({ parentId, name, shortDescription, description }, (err, data) => {
            if (err) {
                res.status(200).json({
                    succsess: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(201).json({
                    succsess: true,
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
                    succsess: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(200).json({
                    succsess: true,
                    data
                })
            }
        })
    }
}

module.exports = new BrandController()