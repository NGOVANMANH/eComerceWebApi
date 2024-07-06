const DAO = require('./dao')

class OrderDao extends DAO {
    addNewOrder({ userId, items, voucherCode, addressId }, callback) {
        const sql = `CALL sp_make_order(?, ?, ?, ?)`;
        this.connection.query(sql, [userId, JSON.stringify(items), voucherCode, addressId], (err, data) => {
            if (err) {
                callback(err);
            } else {
                callback(null, data[0]);
            }
        });
    }
    getOrderById(id, callback) {
        const sql = `call sp_get_order_by_order_id(?)`
        this.connection.query(sql, [id], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    getOrderByUserId(userId, callback) {
        const sql = `call sp_get_order_by_user_id(?)`
        this.connection.query(sql, [userId], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    cancelOrder(id, callback) {
        const sql = `call sp_cancel_order(?)`
        this.connection.query(sql, [id], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    getOrders({ limit, offset }, callback) {
        const sql = `call sp_get_orders(?,?)`
        this.connection.query(sql, [limit, offset], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    updateStatusOrder(id, status, callback) {
        const sql = `call sp_update_status_order(?,?)`
        this.connection.query(sql, [id, status], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
}

module.exports = new OrderDao()
