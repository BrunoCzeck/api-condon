const { v4: uuidv4 } = require('uuid');
const pool = require("../database/connection.cjs")
const enterpriseController = {
    getEnterprise: async(req, res) => {
        try {
            const [rows, fields] = await pool.query("SELECT * FROM enterprise")
            res.json({
                data:rows
            })
        } catch(error) {
            console.log(error)
        }
    },
    getEnterpriseId: async(req, res) => {
        try {
            const { id } = req.params
            const [rows, fields] = await pool.query("SELECT * FROM enterprise where id_enterprise = ?", [id])
            res.json({
                data:rows
            })
        } catch(error) {
            console.log("Sem dados")
        }
    },
    postEnterprise: async(req, res, next) => {
        try {
            const randomUUID = uuidv4();  
            const { name, address, cep, city, state, number } = req.body;
            
            const sql = `INSERT INTO enterprise (id_enterprise, name, address, cep, city, state, number, date_created) values ("${randomUUID}", ?, ?, ?, ?, ?, ?, NOW())`;
    
            const [rows, fields] = await pool.query(sql, [name, address, cep, city, state, number]);
    
            res.json({
                id: randomUUID,
                success: true,
                message: "Success create usuario" 
            });
        } catch(error) {
            console.log(error);
            res.status(500).json({ error: 'Internal Server Error' });
        }
    },
}

module.exports = enterpriseController
