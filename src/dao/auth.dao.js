const DAO = require("./dao");

class AuthDao extends DAO {
    constructor() {
        super();
    }

    login({ email, username, password }, callback) {
        let sql = `call sp_login_with_username(?, ?)`
        let usernameParam = username
        if (email) {
            sql = `call sp_login_with_email(?, ?)`
            usernameParam = email
        }

        console.log(sql)
        console.log(usernameParam, password)

        this.connection.query(sql, [usernameParam, password], (err, data) => {
            if (err) {
                console.log(err)
                callback(err)
            } else {
                callback(null, data[0])
            }
        })

    }

    register({ email, username, password }, callback) {
        const sql = `call sp_register(?,?,?)`
        this.connection.query(sql, [email, username, password], (err, data) => {
            if (err) {
                console.log(err)
                callback(err)
            } else {
                callback(null, data)
            }
        })

    }
}

module.exports = new AuthDao();
