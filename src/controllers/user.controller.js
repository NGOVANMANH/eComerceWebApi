const userDao = require("../dao/user.dao");

class UserController {
    getUsers(req, res, next) {

        const { limit, offset } = req.query

        userDao.getAllUsers({ limit, offset }, (err, data) => {
            if (err) {
                console.log(err)
                return res.status(200).json({
                    success: false,
                    error: err.message || 'Internal server error'
                })
            }
            else {
                const users = data.map(user => {
                    delete user.password
                    return user
                })
                res.status(200).json({
                    success: true,
                    data: {
                        paginations: {
                            total: users[0].total_count,
                            limit: +limit,
                            offset: +offset
                        },
                        users
                    }
                })
            }
        })
    }

    getUserById(req, res, next) {
        const { id } = req.params
        if (!id) {
            return res.status(404).json({
                success: false,
                message: 'Bad request'
            })
        }

        userDao.getUserById(id, (err, data) => {
            if (err) {
                console.log(err)
                return res.status(200).json({
                    success: false,
                    error: err.message || 'Internal server error'
                })
            }
            else {
                const user = data[0]
                delete user.password
                res.status(200).json({
                    success: true,
                    data: user
                })
            }
        })
    }

    updateUserByEmail(req, res, next) {
        const newUser = req.body

        if (!newUser) {
            return res.status(404).json({
                success: false,
                message: 'Bad request'
            })
        }

        userDao.updateUser(newUser, (err, data) => {
            if (err) {
                console.log(err)
                return res.status(200).json({
                    success: false,
                    error: err.message || 'Internal server error'
                })
            }
            else {
                data = data[0];
                delete data.password;
                res.status(200).json({
                    success: true,
                    message: 'Update successfully',
                    data
                })
            }
        })
    }

    addUser(req, res, next) {
        if (!req.body.email || !req.body.username || !req.body.password) {
            return res.status(404).json({
                success: false,
                message: 'Bad request'
            })
        }
        userDao.addUser(req.body, (err, data) => {
            if (err) {
                console.log(err)
                return res.status(200).json({
                    success: false,
                    error: err.sqlMessage || 'Internal server error'
                })
            }
            else {
                const user = data[0]
                delete user.password
                res.status(200).json({
                    success: true,
                    message: 'Add successfully',
                    data: user
                })
            }
        })
    }
}

module.exports = new UserController()