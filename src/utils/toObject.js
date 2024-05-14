const toObject = (data) => {
    return Object.values(JSON.parse(JSON.stringify(data)))
}

module.exports = toObject
