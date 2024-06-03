const cartDao = require("../dao/cart.dao");

class CartController {
    getCartByUserId(req, res, next) {
        const { userId } = req.query;

        if (!userId) return res.status(400).json({
            success: false,
            message: 'userId is required'
        });

        cartDao.getCartByUserId(userId, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                if (data && data.length > 0) {
                    const cartInfo = {
                        cart_id: data[0].cart_id,
                        total: data.reduce((total, item) => total + item.price * item.quantity, 0),
                        user_id: userId
                    };

                    res.status(200).json({
                        success: true,
                        data: {
                            ...cartInfo,
                            items: data.map(item => ({ ...item, cart_id: undefined }))
                        }
                    });
                } else {
                    // If data is null or empty, return an empty items array
                    res.status(200).json({
                        success: true,
                        data: {
                            cart_id: null,
                            total: 0,
                            user_id: userId,
                            items: []
                        }
                    });
                }
            }
        })
    }

    addToCart(req, res, next) {
        const { userId, productSkuId, quantity } = req.body

        if (!userId || !productSkuId || !quantity) {
            return res.status(400).json({
                success: false,
                message: 'Bad request'
            })
        }
        else {
            cartDao.addToCart({ userId, productSkuId, quantity }, (err, data) => {
                if (err) {
                    res.status(200).json({
                        success: false,
                        message: err.sqlMessage
                    })
                }
                else {
                    res.status(200).json({
                        success: true,
                        message: 'Add to cart successfully'
                    })
                }
            })
        }
    }
    updateCartItem(req, res, next) {
        const { cartId } = req.query
        const { productSkuId, quantity } = req.body

        if (!cartId || !productSkuId || !quantity) {
            return res.status(400).json({
                success: false,
                message: 'Bad request'
            })
        }

        cartDao.updateCartItem({ cartId, productSkuId, quantity }, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(200).json({
                    success: true,
                    message: 'Update cart item successfully'
                })
            }
        })
    }
    emptyCart(req, res, next) {
        const { cartId } = req.query

        if (!cartId) {
            return res.status(400).json({
                success: false,
                message: 'Bad request'
            })
        }

        cartDao.emptyCart(cartId, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(200).json({
                    success: true,
                    message: 'Empty cart successfully'
                })
            }
        })
    }
    deleteCartItem(req, res, next) {
        const { cartId } = req.params
        const { productSkuId } = req.body

        console.log(productSkuId, cartId)

        if (!cartId || !productSkuId) {
            return res.status(400).json({
                success: false,
                message: 'Bad request'
            })
        }
        cartDao.deleteCartItem({ cartId, productSkuId }, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(200).json({
                    success: true,
                    message: 'Delete cart item successfully'
                })
            }
        })
    }
}

module.exports = new CartController();
