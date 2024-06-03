const DAO = require('./dao')

class UserDao extends DAO {
    constructor() {
        super()
    }
    getAllUsers({ limit = null, offset = null }, callback) {
        const sql = `call sp_get_all_user(?, ?)`
        this.connection.query(sql, [limit, offset], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }

    getUserById(id, callback) {
        const sql = `call sp_get_user_by_id(?)`
        this.connection.query(sql, [id], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }

    updateUser(newUser, callback) {
        const sql = `call sp_update_user_by_email(?,?,?,?,?,?,?)`
        this.connection.query(sql, [
            newUser.email,
            newUser.avatar,
            newUser.firstName,
            newUser.lastName,
            newUser.birthDate,
            newUser.phoneNumber,
            newUser.role
        ], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }

    addUser(user, callback) {
        const sql = `call sp_add_user(?,?,?,?,?,?,?,?,?)`
        this.connection.query(sql, [
            user.avatar,
            user.firstName,
            user.lastName,
            user.username,
            user.email,
            user.password,
            user.birthOfDate, // Ensure this is provided in 'YYYY-MM-DD' format
            user.phoneNumber,
            user.role,
        ], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
}

module.exports = new UserDao()