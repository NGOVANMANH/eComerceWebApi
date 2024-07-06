const DAO = require('./dao')

class VoucherDao extends DAO {
    checkVoucher({ userId, voucherCode, orderTotal }, callback) {
        const sql = `call sp_get_voucher(?,?,?)`
        this.connection.query(sql, [userId, voucherCode, orderTotal], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    getVouchers({ limit, offset }, callback) {
        const sql = `call sp_get_vouchers(?,?)`
        this.connection.query(sql, [limit, offset], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    createVoucher(voucher, callback) {
        const sql = `call sp_add_voucher(?,?,?,?,?,?,?,?,?)`
        this.connection.query(sql, [
            voucher.code,
            voucher.name,
            voucher.description,
            voucher.discountType,
            voucher.discountValue,
            voucher.startDate,
            voucher.endDate,
            voucher.minimumOrderValue,
            voucher.quantity
        ], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    getVoucherById(id, callback) {
        const sql = `select * from vouchers where id = ${id}`
        this.connection.query(sql, [id], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    updateVoucher(id, newVoucher, callback) {
        const sql = `call sp_update_voucher(?,?,?,?,?,?,?,?,?,?)`
        this.connection.query(sql, [
            id,
            newVoucher.code,
            newVoucher.name,
            newVoucher.description,
            newVoucher.discountType,
            newVoucher.discountValue,
            newVoucher.startDate,
            newVoucher.endDate,
            newVoucher.minimumOrderValue,
            newVoucher.quantity
        ], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    deleteVoucherById(id, callback) {
        const sql = `delete from vouchers where id=${id}`
        this.connection.query(sql, [id], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    userGetVoucher(userId, voucherId, callback) {
        const sql = `call sp_add_user_voucher(?,?)`
        this.connection.query(sql, [userId, voucherId], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    getVouchersByUserId(userId, callback) {
        const sql = `select v.*, uv.is_usable from users_vouchers uv, vouchers v where uv.user_id=${userId} and uv.voucher_id = v.id`
        this.connection.query(sql, (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data)
            }
        })
    }
}

module.exports = new VoucherDao()
