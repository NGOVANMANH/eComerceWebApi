const authDao = require('../dao/auth.dao')
const toObject = require('../utils/toObject')

class AuthController {
    login(req, res, next) {
        const { username, email, password } = req.body

        authDao.login({ email, username, password }, (err, data) => {
            const dataFormated = toObject(data)
            const user = dataFormated[0][0]
            if (Object.keys(user).includes('NULL')) {
                return res.status(200).json({
                    success: false,
                    message: 'Invalid username or password'
                })
            }
            delete user.password
            return res.status(200).json({
                success: true,
                data: {
                    ...user
                }
            })
        })
    }

    register(req, res, next) {
        const { username, email, password } = req.body

        if (username && password && email) {
            authDao.register({ username, email, password }, (err, data) => {
                if (err) {
                    res.status(200).json({
                        success: false,
                        message: err.sqlMessage
                    })
                }
                else {
                    res.status(200).json({
                        success: true,
                        message: 'Register successfully'
                    })
                }
            })
        }
        else {
            res.status(404).json({
                message: 'Bad request'
            })
        }
    }
}

module.exports = new AuthController()