const { v4: uuidv4 } = require('uuid');
const pool = require("../database/connection.cjs")
const schedulerController = {
    getScheduler: async(req, res) => {
        try {
            const [rows, fields] = await pool.query("SELECT * FROM scheduler")
            res.json({
                data:rows
            })
        } catch(error) {
            console.log(error)
        }
    },

    getSchedulerId: async(req, res) => {
        try {
            const { id } = req.params
            const [rows, fields] = await pool.query("SELECT * FROM scheduler where id_scheduler = ?", [id])
            res.json({
                data:rows
            })
        } catch(error) {
            console.log(error)
        }
    },

    postScheduler: async(req, res) => {
        try {
            const randomUUID = uuidv4();  
            const { user_id, apartament, bloc, date_reserve, hours_reserve_init, hours_reserve_end, id_enterprise } = req.body
            const sql = `INSERT INTO scheduler (id_scheduler, user_id, apartament, bloc, date_reserve, hours_reserve_init, hours_reserve_end, date_created, id_enterprise) values ("${randomUUID}", ?, ?, ?, ?, ?, ?, NOW(), ?)`
            const [rows, fields] = await pool.query(sql, [ user_id, apartament, bloc, date_reserve, hours_reserve_init, hours_reserve_end, id_enterprise])
            res.json({
                id:randomUUID,
                success:true,
                message:"Success create scheduler"
            })
        } catch(error) {
            console.log(error)
        }
    },

    updateScheduler: async(req, res) => {
        try {
            const { date_reserve, hours_reserve_init, hours_reserve_end, } = req.body
            const { id } = req.params
            const sql = "UPDATE scheduler SET date_reserve = ?, hours_reserve_init = ?, hours_reserve_end = ? where id_scheduler = ?"
            const [rows, fields] = await pool.query(sql, [ date_reserve, hours_reserve_init, hours_reserve_end, id ])
            res.json({
                data:rows
            })
        } catch(error) {
            console.log(error)
        }
    },
    
    deleteSchedulerId: async(req, res) => {
        try {
            const { id } = req.params
            const sql = "DELETE FROM scheduler where id_scheduler = ?"
            const [rows, fields] = await pool.query(sql, [id])
            res.json({
                data:rows
            })
        } catch(error) {
            console.log(error)
        }
    }
}

module.exports = schedulerController