const mysql = require('mysql')

class MySQLDatabase {
    constructor() {
        this.connection = mysql.createConnection({
            host: process.env.DATABASE_HOST,
            user: process.env.DATABASE_USERNAME,
            password: process.env.DATABASE_PASSWORD,
            database: process.env.DATABASE_NAME,
            port: process.env.DATABASE_PORT,
            multipleStatements: true,
        })
    }

    connect = () => {
        this.connection.connect(function (err) {
            if (err) throw err;
            console.log("Console connection established!")
        });
    }

    getConnection = () => {
        return this.connection;
    }
}

module.exports = new MySQLDatabase()