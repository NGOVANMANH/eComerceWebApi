const DAO = require('./dao')

class ProductAttributeDao extends DAO {
    constructor() {
        super()
    }
    addProductAttribute({ type, value }, callback) {
        const sql = `call sp_add_product_attribute(?, ?)`
        this.connection.query(sql, [type, value], (err, data) => {
            if (err) {
                console.log(err)
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    getProductAttributeByType(type, callback) {
        const sql = `call sp_get_product_attribute_by_type(?)`
        this.connection.query(sql, [type], (err, data) => {
            if (err) {
                console.log(err)
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
}

module.exports = new ProductAttributeDao();