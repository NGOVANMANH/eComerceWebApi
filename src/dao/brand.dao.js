const DAO = require('./dao')

class BrandDao extends DAO {
    constructor() {
        super()
    }
    addBrand({ parentId = null, name, shortDescription, description }, callback) {
        const sql = `call sp_add_category(?,?,?,?)`
        this.connection.query(sql, [parentId, name, shortDescription, description], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }

    getAllBrands({ limit = null, offset = null }, callback) {
        const sql = `call sp_get_all_category(?, ?)`
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