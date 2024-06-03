const authDao = require('../dao/auth.dao')

class AuthController {
    login(req, res, next) {
        const { username, email, password } = req.body

        console.log(req.body)

        authDao.login({ email, username, password }, (err, data) => {

            if (!data[0]) {
                return res.status(200).json({
                    success: false,
                    message: 'Invalid username or password'
                })
            }
            return res.status(200).json({
                success: true,
                data: data[0],
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
                    delete data.password;
                    res.status(200).json({
                        success: true,
                        message: 'Register successfully',
                        data
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