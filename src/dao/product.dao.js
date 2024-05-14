const DAO = require('./dao')

class ProductDao extends DAO {
    constructor() {
        super()
    }

    addProduct(product, callback) {

        console.log(product)

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

    getAllProducts(callback) {
        const sql = `call sp_get_all_product()`
        this.connection.query(sql, (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
}

module.exports = new ProductDao()