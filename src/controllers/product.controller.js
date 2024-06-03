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
        } = req.body

        if (!name || !brandId || !categoryId) {
            return res.status(400).json({
                success: false,
                message: 'Name, brandId and categoryId are required'
            })
        }

        productDao.addProduct({
            name,
            description,
            shortDescription,
            thumbnail,
            brandId,
            categoryId,
        }, (err, data) => {
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
    addProductDetail(req, res, next) {
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
        productDao.addProductDetail({
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
        const { id } = req.params
        productDao.getProductById(id, (err, data) => {
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

    getProducts(req, res, next) {

        const { limit, offset } = req.query

        productDao.getProducts({ limit, offset }, (err, data) => {
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
                        products: data
                    }
                })
            }
        })

    }

    updateProductById(req, res, next) {
        const { id } = req.params

        productDao.updateProductById(id, req.body, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(200).json({
                    success: true,
                    message: 'Update product successfully',
                    data: data[0]
                })
            }
        })
    }
    getProductSkusByProductId(req, res, next) {
        const { productId } = req.params
        productDao.getProductSkusByProductId(productId, (err, data) => {
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
    deleteProductById(req, res, next) {
        const { id } = req.params
        if (!id) {
            return res.status(400).json({
                success: false,
                message: 'id is required'
            })
        }
        productDao.deleteProductById(id, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: 'Unable to delete product'
                })
            }
            else {
                res.status(200).json({
                    success: true,
                    message: 'Delete product successfully',
                })
            }
        })
    }
}

module.exports = new ProductController()