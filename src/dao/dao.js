const database = require('../database/mysql.database')

class DAO {
    constructor() {
        this.connection = database.getConnection()
    }
}

module.exports = DAO