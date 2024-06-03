const categoryDao = require('../dao/category.dao')

class CategoryController {
    addCategory(req, res, next) {
        const { parentId, name, shortDescription, description } = req.body
        if (!name) {
            return res.status(400).json({
                success: false,
                message: 'Name is required'
            })
        }

        categoryDao.addCategory({ parentId, name, shortDescription, description }, (err, data) => {
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

    getAllCategories(req, res, next) {
        const { limit, offset } = req.query
        categoryDao.getAllCategories({ limit, offset }, (err, data) => {
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

module.exports = new CategoryController()