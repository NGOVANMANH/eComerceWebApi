require('dotenv').config()
const app = require('./src/app')

app.listen(process.env.APP_PORT || 3001, () => {
    console.log(`Server is listening on http://localhost:${process.env.APP_PORT || 3001}`)
})