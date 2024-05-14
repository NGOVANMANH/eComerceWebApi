const express = require('express')
const compression = require('compression')
const cors = require('cors')
const morgan = require('morgan')
const helmet = require('helmet')

const app = express()

app.use(helmet())
app.use(cors())
app.use(morgan('dev'))
app.use(compression())
app.use(express.json())

app.use('/api', require('./routes/init.route'))

app.get('/', (req, res) => {
    res.send('Hello World!')
})


module.exports = app
