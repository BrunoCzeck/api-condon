const { v4: uuidv4 } = require('uuid');
const pool = require("../database/connection.cjs")
const muralController = {
    getPosts: async(req, res) => {
        try {
            const [rows, fields] = await pool.query("SELECT * FROM mural")
            res.json({
                data:rows
            })
        } catch(error) {
            console.log(error)
        }
    },
    
    getPostsId: async(req, res) => {
        try {
            const { id } = req.params
            const [rows, fields] = await pool.query("SELECT * FROM mural where id_mural = ?", [id])
            res.json({
                data:rows
            })
        } catch(error) {
            console.log(error)
        }
    },
    
    postMural: async(req, res) => {
        try {
            const randomUUID = uuidv4();  
            const { title, description, user_id } = req.body
            const sql = `INSERT INTO mural (id_mural, title, description, date_created, user_id) values ("${randomUUID}", ?, ?, NOW(), ?)`
            const [rows, fields] = await pool.query(sql, [title, description, user_id])
            res.json({
                id_mural:randomUUID,
                success:true,
                message:"Create post"
            })
        } catch(error) {
            console.log(error)
        }
    }
}

module.exports = muralController