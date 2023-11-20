const { v4: uuidv4 } = require('uuid');
const pool = require("../database/connection.cjs")
const enterpriseController = {
    getEnterprise: async(req, res) => {
        try {
            const [rows, fields] = await pool.query("SELECT * FROM enterprise_condon")
            res.json({
                data:rows
            })
        } catch(error) {
            console.log(error)
        }
    },
}

module.exports = enterpriseController