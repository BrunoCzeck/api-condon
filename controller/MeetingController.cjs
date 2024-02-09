const { v4: uuidv4 } = require('uuid');
const pool = require("../database/connection.cjs")
const meetingController = {
    getMeeting: async(req, res) => {
        try {
            const [rows, fields] = await pool.query("SELECT * FROM meeting")
            res.json({
                data:rows
            })
        } catch(error) {
            console.log(error)
        }
    },
    
    getMeetingsId: async(req, res) => {
        try {
            const { id } = req.params
            const [rows, fields] = await pool.query("SELECT * FROM meeting where id_enterprise = ?", [id])
            res.json({
                data:rows
            })
        } catch(error) {
            console.log(error)
        }
    },
    
    postMeeting: async(req, res) => {
        try {
            const randomUUID = uuidv4();  
            const { title, link, date_meeting, id_enterprise } = req.body
            const sql = `INSERT INTO meeting (id_meeting, title, link, date_meeting, date_created, id_enterprise) values ("${randomUUID}", ?, ?, ?, NOW(), ?)`
            const [rows, fields] = await pool.query(sql, [title, link, date_meeting, id_enterprise])
            res.json({
                id_meeting:randomUUID,
                success:true,
                message:"Create post"
            })
        } catch(error) {
            console.log(error)
        }
    }
}

module.exports = meetingController