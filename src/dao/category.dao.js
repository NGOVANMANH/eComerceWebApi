const DAO = require('./dao')

class CategoryDao extends DAO {
    constructor() {
        super()
    }
    addCategory({ name, shortDescription, description, logoUrl }, callback) {
        const sql = `call sp_add_category(?,?,?,?)`
        this.connection.query(sql, [name, shortDescription, description, logoUrl], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }

    getAllCategories({ limit = null, offset = null }, callback) {
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

module.exports = new CategoryDao()