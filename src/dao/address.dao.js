const DAO = require("./dao");

class AddressDao extends DAO {
    getByUserId(userId, callback) {
        const sql = `call sp_get_user_addresses(?)`
        this.connection.query(sql, [userId], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    addAddress(address, callback) {
        const sql = `call sp_add_user_address(?,?,?,?,?,?,?,?)`
        this.connection.query(sql, [
            address.userId,
            address.title,
            address.province,
            address.district,
            address.ward,
            null,
            null,
            address.phoneNumber
        ], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    updateAddress(newAddress, callback) {
        const sql = `call sp_update_user_address(?,?,?,?,?,?,?,?)`
        this.connection.query(sql, [
            newAddress.addressId,
            newAddress.title,
            newAddress.province,
            newAddress.district,
            newAddress.ward,
            null,
            null,
            newAddress.phoneNumber
        ], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
}

module.exports = new AddressDao();
