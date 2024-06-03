const DAO = require('./dao')

class ProductDao extends DAO {
    constructor() {
        super()
    }

    addProductDetail(product, callback) {

        const sql = `call sp_add_product(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`
        this.connection.query(sql, [
            product.name,
            product.description,
            product.shortDescription,
            product.thumbnail,
            product.brandId,
            product.categoryId,
            product.attributes.size,
            product.attributes.color,
            product.sku,
            product.price,
            product.discountPercent,
            product.quantity,
        ], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }

    getProducts({ limit = null, offset = null }, callback) {
        const sql = `call sp_get_all_product(?,?)`
        this.connection.query(sql, [limit, offset], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }

    addProduct(product, callback) {
        const sql = `call sp_add_product(?,?,?,?,?,?)`
        this.connection.query(sql, [
            product.name,
            product.description,
            product.shortDescription,
            product.thumbnail,
            product.brandId,
            product.categoryId,
        ], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }

    addProductDetail(product, callback) {
        const sql = `call sp_add_product_detail(?,?,?,?,?,?,?,?,?,?,?,?)`
        this.connection.query(sql, [
            product.name,
            product.description,
            product.shortDescription,
            product.thumbnail,
            product.brandId,
            product.categoryId,
            product.attributes.size,
            product.attributes.color,
            product.sku,
            product.price,
            product.discountPercent,
            product.quantity,
        ], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }

    getProductById(id, callback) {
        const sql = `call sp_get_product_detail_by_sku__id(?)`
        this.connection.query(sql, [id], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }

    updateProductById(id, newProduct, callback) {
        const sql = `call sp_update_product_by_id(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`
        this.connection.query(sql, [
            id,
            newProduct.name,
            newProduct.description,
            newProduct.shortDescription,
            newProduct.thumbnail,
            newProduct.brandId,
            newProduct.categoryId,
            newProduct.attributes.size,
            newProduct.attributes.color,
            newProduct.sku,
            newProduct.price,
            newProduct.discountPercent,
            newProduct.quantity,
        ], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    getProductSkusByProductId(id, callback) {
        const sql = `call sp_get_product_skus_from_product_id(?)`
        this.connection.query(sql, [id], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    deleteProductById(id, callback) {
        const sql = `delete from products_skus where id = ${id}`;
        this.connection.query(sql, (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data)
            }
        })
    }
}

module.exports = new ProductDao()