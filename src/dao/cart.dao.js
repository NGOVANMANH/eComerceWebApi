const DAO = require("./dao");

class CartDao extends DAO {
    getCartByUserId(userId, callback) {
        const sql = `call sp_get_cart(?)`
        this.connection.query(sql, [userId], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }

    addToCart({ userId, productSkuId, quantity }, callback) {
        const sql = `call sp_add_to_cart(?,?,?)`
        console.log({ userId, productSkuId, quantity })
        this.connection.query(sql, [userId, productSkuId, quantity], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }

    updateCartItem({ cartId, productSkuId, quantity }, callback) {
        const sql = `call sp_update_cart_item(?,?,?)`
        this.connection.query(sql, [cartId, productSkuId, quantity], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    emptyCart(cartId, callback) {
        const sql = `call sp_empty_cart(?)`
        this.connection.query(sql, [cartId], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    deleteCartItem({ cartId, productSkuId }, callback) {
        const sql = `call sp_remove_from_cart(?,?)`
        this.connection.query(sql, [cartId, productSkuId], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
}

module.exports = new CartDao();