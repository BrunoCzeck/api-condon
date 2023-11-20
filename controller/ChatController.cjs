const { v4: uuidv4 } = require('uuid');
const pool = require("../database/connection.cjs")
const chatController = {
    getChat: async(req, res) => {
        try {
            const [rows, fields] = await pool.query("SELECT * FROM chat")
            res.json({
                data:rows
            })
        } catch(error) {
            console.log(error)
        }
    },
    
    getChatId: async(req, res) => {
        try {
            const { user_id } = req.params
            const [rows, fields] = await pool.query("SELECT * FROM chat where user_id = ?", [user_id])
            res.json({
                data:rows
            })
        } catch(error) {
            console.log(error)
        }
    },

    postChat: async(req, res) => {
        try {
            const randomUUID = uuidv4();  
            const { message, bloc, apartament, user_id} = req.body
            const sql = `INSERT INTO chat (id_chat, message, bloc, apartament, user_id, date_created) values ("${randomUUID}", ?, ?, ?, ?, NOW())`
            const [rows, fields] = await pool.query(sql, [message, bloc, apartament, user_id])
            res.json({
                id:randomUUID,
                success:true,
                message:"Message created"
            })
        } catch(error) {
            console.log(error)
        }
    },
}

module.exports = chatController