const DAO = require('./dao')

class CategoryDao extends DAO {
    constructor() {
        super()
    }
    addCategory({ parentId, name, shortDescription, description }, callback) {
        const sql = `call sp_add_category(?,?,?,?)`
        this.connection.query(sql, [parentId, name, shortDescription, description], (err, data) => {
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