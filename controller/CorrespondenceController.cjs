const { v4: uuidv4 } = require('uuid');
const pool = require("../database/connection.cjs")
const correspondenceController = {
    getCorrespondence: async(req, res) => {
        try {
            const { id } = req.params
            const [rows, fields] = await pool.query("SELECT * FROM correspondence where id_enterprise = ? order by date_correspondence desc", [id])
            res.json({
                data:rows
            })
        } catch(error) {
            console.log(error)
        }
    },

    getCorrespondenceId: async(req, res) => {
        try {
            const { id } = req.params
            const [rows, fields] = await pool.query("SELECT * FROM correspondence where user_id = ? order by date_correspondence desc", [id])
            res.json({
                data:rows
            })
        } catch(error) {
            console.log("Sem dados")
        }
    },

    postCorrespondence: async(req, res, next) => {
        try {
            const randomUUID = uuidv4();  
            const { user_id, nome, apartament, bloc, tipo, date_correspondence, id_enterprise } = req.body;
            
            const sql = `INSERT INTO correspondence (id, user_id, nome, apartament, bloc, tipo, date_correspondence, date_created, id_enterprise) values ("${randomUUID}", ?, ?, ?, ?, ?, ?, NOW(), ?)`;
    
            const [rows, fields] = await pool.query(sql, [user_id, nome, apartament, bloc, tipo, date_correspondence, id_enterprise]);
    
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

    /* Correspondence Type */
    getCorrespondenceIdType: async(req, res) => {
        try {
            const { id } = req.params
            const [rows, fields] = await pool.query("SELECT * FROM correspondence_type where id_enterprise = ?", [id])
            res.json({
                data:rows
            })
        } catch(error) {
            console.log("Sem dados")
        }
    },

    postCorrespondenceType: async(req, res, next) => {
        try {
            const randomUUID = uuidv4();  
            const { id_enterprise, nome } = req.body;
            
            const sql = `INSERT INTO correspondence_type (id, id_enterprise, nome) values ("${randomUUID}", ?, ?)`;
    
            const [rows, fields] = await pool.query(sql, [id_enterprise, nome]);
    
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

module.exports = correspondenceController
