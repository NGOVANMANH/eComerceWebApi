const DAO = require('./dao')

class ProductDao extends DAO {
    constructor() {
        super()
    }

    addProductDetail(product, callback) {

        const sql = `call sp_add_product(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`
        this.connection.query(sql, [
            product.name,
            product.description,
            product.shortDescription,
            product.thumbnail,
            product.brandId,
            product.categoryId,
            product.attributes.size,
            product.attributes.color,
            product.sku,
            product.price,
            product.discountPercent,
            product.quantity,
        ], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }

    getProducts({ limit = null, offset = null }, callback) {
        const sql = `call sp_get_all_product(?,?)`
        this.connection.query(sql, [limit, offset], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }

    addProduct(product, callback) {
        const sql = `call sp_add_product(?,?,?,?,?,?)`
        this.connection.query(sql, [
            product.name,
            product.description,
            product.shortDescription,
            product.thumbnail,
            product.brandId,
            product.categoryId,
        ], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }

    addProductDetail(product, callback) {
        const sql = `call sp_add_product_detail(?,?,?,?,?,?,?,?,?,?,?,?)`
        this.connection.query(sql, [
            product.name,
            product.description,
            product.shortDescription,
            product.thumbnail,
            product.brandId,
            product.categoryId,
            product.attributes.size,
            product.attributes.color,
            product.sku,
            product.price,
            product.discountPercent,
            product.quantity,
        ], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }

    getProductById(id, callback) {
        const sql = `call sp_get_product_detail_by_sku__id(?)`
        this.connection.query(sql, [id], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }

    updateProductById(id, newProduct, callback) {
        const sql = `call sp_update_product_by_id(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`
        this.connection.query(sql, [
            id,
            newProduct.name,
            newProduct.description,
            newProduct.shortDescription,
            newProduct.thumbnail,
            newProduct.brandId,
            newProduct.categoryId,
            newProduct.attributes.size,
            newProduct.attributes.color,
            newProduct.sku,
            newProduct.price,
            newProduct.discountPercent,
            newProduct.quantity,
        ], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    getProductSkusByProductId(id, callback) {
        const sql = `call sp_get_product_skus_from_product_id(?)`
        this.connection.query(sql, [id], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data[0])
            }
        })
    }
    deleteProductById(id, callback) {
        const sql = `delete from products_skus where id = ${id}`;
        this.connection.query(sql, (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data)
            }
        })
    }
    findProductByKey(key, callback) {
        const sql = `
            SELECT
                ps.id,
                p.id AS product_id,
                p.name,
                p.description,
                p.short_description,
                p.thumbnail,
                b.name AS brand_name,
                b.id AS brand_id,
                c.name AS category_name,
                c.id AS category_id,
                pa1.value AS size,
                pa2.value AS color,
                ps.sku AS sku,
                ps.price AS price,
                ps.discount_percent,
                ps.quantity AS quantity
            FROM
                products p
            LEFT JOIN
                products_skus ps ON p.id = ps.product_id
            LEFT JOIN
                product_attributes pa1 ON ps.size_attribute_id = pa1.id AND pa1.type = 'size'
            LEFT JOIN
                product_attributes pa2 ON ps.color_attribute_id = pa2.id AND pa2.type = 'color'
            LEFT JOIN
                brands b ON p.brand_id = b.id
            LEFT JOIN
                categories c ON p.category_id = c.id
            WHERE
                p.name LIKE CONCAT('%', ?, '%') OR
                p.description LIKE CONCAT('%', ?, '%') OR
                p.short_description LIKE CONCAT('%', ?, '%')
            ORDER BY
                p.created_at DESC;
        `
        this.connection.query(sql, [key, key, key], (err, data) => {
            if (err) {
                callback(err)
            } else {
                callback(null, data)
            }
        })
    }
}

module.exports = new ProductDao()