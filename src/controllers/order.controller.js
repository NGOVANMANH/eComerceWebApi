const orderDao = require("../dao/order.dao");

class OrderConttroller {
    addNewOrder(req, res, next) {
        const { userId, items, voucherCode, addressId } = req.body
        if (!userId || !items || !addressId) {
            return res.status(400).json({
                success: false,
                message: 'userId, items, voucherCode, addressId are required'
            })
        }
        orderDao.addNewOrder({ userId, items, voucherCode, addressId }, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(200).json({
                    success: true,
                    message: 'Add new order successfully',
                    data
                })
            }
        })
    }
    getOrderById(req, res, next) {
        const { id } = req.query
        orderDao.getOrderById(id, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                if (data && data.length > 0) {
                    // Extract order details assuming the order structure
                    const order = {
                        order_id: data[0].order_id,
                        total: data.reduce((total, item) => total + item.price * item.quantity, 0),
                        user_id: data[0].user_id,
                        voucher_id: data[0].voucher_id,
                        status: data[0].status,
                        address_id: data[0].address_id,
                        address_title: data[0].address_title,
                        created_at: data[0].created_at,
                        discount_type: data[0].discount_type,
                        discount_value: data[0].discount_value,
                        province_id: data[0].province_id,
                        district_id: data[0].district_id,
                        ward_id: data[0].ward_id,
                        address_phone_number: data[0].phone_number,
                        customer_name: data[0].customer_name,
                        items: data.map(item => ({
                            ...item,
                            order_id: undefined,
                            user_id: undefined,
                            total: undefined,
                            voucher_id: undefined,
                            address_id: undefined,
                            status: undefined,
                            created_at: undefined,
                            address_title: undefined,
                            discount_type: undefined,
                            discount_value: undefined,
                            province_id: undefined,
                            district_id: undefined,
                            ward_id: undefined,
                            phone_number: undefined,
                            customer_name: undefined
                        }))
                    };

                    res.status(200).json({
                        success: true,
                        data: order
                    });
                } else {
                    res.status(200).json({
                        success: true,
                        data: {
                            order_id: null,
                            total: 0,
                            user_id: null,
                            voucher_id: null,
                            address_id: null,
                            items: []
                        }
                    });
                }
            }
        })
    }

    getOrderByUserId(req, res, next) {
        const { userId } = req.params
        if (!userId) {
            return res.status(400).json({
                success: false,
                message: 'userId is required'
            })
        }
        orderDao.getOrderByUserId(userId, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(200).json({
                    success: true,
                    data
                })
            }
        })
    }
    cancelOrder(req, res, next) {
        const { id } = req.body
        if (!id) {
            return res.status(400).json({
                success: false,
                message: 'id is required'
            })
        }
        orderDao.cancelOrder(id, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(200).json({
                    success: true,
                    message: 'Cancel order successfully'
                })
            }
        })
    }
    getOrders(req, res, next) {
        const { limit, offset } = req.query

        orderDao.getOrders({ limit, offset }, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(200).json({
                    success: true,
                    data: {
                        paginations: {
                            total: data[0].total_count,
                            limit: +limit,
                            offset: +offset
                        },
                        orders: data
                    }
                })
            }
        })
    }
    updateStatusOrder(req, res, next) {
        const { id, status } = req.body
        if (!id || !status) return res.status(400).json({
            success: false,
            message: 'id, status are required'
        })
        orderDao.updateStatusOrder(id, status, (err, data) => {
            if (err) {
                res.status(200).json({
                    success: false,
                    message: err.sqlMessage
                })
            }
            else {
                res.status(200).json({
                    success: true,
                    message: 'Update status order successfully'
                })
            }
        })
    }
}

module.exports = new OrderConttroller();
