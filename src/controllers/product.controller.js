const productDao = require("../dao/product.dao");

class ProductController {
    addProduct(req, res, next) {
        const {
            name,
            description,
            shortDescription,
            thumbnail,
            brandId,
            categoryId,
            attributes,
            sku,
            price,
            discountPercent,
            quantity
        } = req.body

        if (!name || !categoryId || !attributes || !attributes.size || !attributes.color) {
            res.status(404).json({
                success: false,
                message: 'Bad request'
            })
        }
        productDao.addProduct({
            name,
            description,
            shortDescription,
            thumbnail,
            brandId,
            categoryId,
            attributes,
            sku,
            price,
            discountPercent,
            quantity
        }, (err, data) => {
            if (err) {
                console.log(err);
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(201).json({
                    success: true,
                    message: 'Product added successfully',
                    data
                })
            }
        })
    }
    getProductById(req, res, next) {
        res.send('Product')
    }

    getProducts(req, res, next) {
        productDao.getAllProducts((err, data) => {
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

module.exports = new ProductController()