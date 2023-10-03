const { v4: uuidv4 } = require('uuid');
const pool = require("../database/connection.cjs")
const usersController = {
    getUsers: async(req, res) => {
        try {
            const [rows, fields] = await pool.query("SELECT * FROM users")
            res.json({
                data:rows
            })
        } catch(error) {
            console.log(error)
        }
    },
    getUserId: async(req, res) => {
        try {
            const { id } = req.params
            const [rows, fields] = await pool.query("SELECT * FROM users where id = ?", [id])
            res.json({
                data:rows
            })
        } catch(error) {
            console.log(error)
        }
    },
    postUser: async(req, res) => {
        try {
            const randomUUID = uuidv4();  
            const { user, password, apartament, bloc, email, enterprise,  priority} = req.body
            const sql = `INSERT INTO users (id, user, password, apartament, bloc, email, date_created, enterprise, priority) values ("${randomUUID}", ?, ?, ?, ?, ?, NOW(), ?, 1)`
            const [rows, fields] = await pool.query(sql, [ user, password, apartament, bloc, email, enterprise, priority])
            res.json({
                id:randomUUID,
                success:true,
                message:"Success create user"
            })
        } catch(error) {
            console.log(error)
        }
    },
    updateUser: async(req, res) => {
        try {
            const { user, password, email } = req.body
            const { id } = req.params

            const sql = "UPDATE users SET user = ?, password = ?, email = ? where id = ?"
            const [rows, fields] = await pool.query(sql, [user, password, email, id])
            res.json({
                data:rows
            })
        } catch(error) {
            console.log(error)
        }
    },
    deleteUserId: async(req, res) => {
        try {
            const { id } = req.params
            const sql = "DELETE FROM users where id = ?"
            const [rows, fields] = await pool.query(sql, [id])
            res.json({
                data:rows
            })
        } catch(error) {
            console.log(error)
        }
    }
}

module.exports = usersController