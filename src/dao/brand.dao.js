const DAO = require('./dao')

class BrandDao extends DAO {
    constructor() {
        super()
    }
    addBrand({ name, shortDescription, description, logoUrl }, callback) {
        const sql = `call sp_add_brand(?,?,?,?)`
        this.connection.query(sql, [name, shortDescription, description, logoUrl], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }

    getAllBrands({ limit = null, offset = null }, callback) {
        const sql = `call sp_get_all_brand(?, ?)`
        this.connection.query(sql, [limit, offset], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
}

module.exports = new BrandDao()