const { v4: uuidv4 } = require('uuid');
const pool = require("../database/connection.cjs")
const schedulerController = {
   /*  getScheduler: async(req, res) => {
        try {
            const [rows, fields] = await pool.query("SELECT * FROM scheduler")
            res.json({
                data:rows
            })
        } catch(error) {
            console.log(error)
        }
    }, */

    getSchedulerId: async(req, res) => {
        try {
            const { id } = req.params
            const [rows, fields] = await pool.query("SELECT * FROM scheduler where user_id = ?", [id])
            res.json({
                data:rows
            })
        } catch(error) {
            console.log(error)
        }
    },

    getSchedulerEntepriseId: async(req, res) => {
        try {
            const { id } = req.params
            const [rows, fields] = await pool.query("SELECT * FROM scheduler where id_enterprise = ?", [id])
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
            const { id_enterprise, user_id, apartament, bloc, date_reserve, hours_reserve_init, hours_reserve_end } = req.body
            const sql = `INSERT INTO scheduler (id_scheduler, id_enterprise, user_id, apartament, bloc, date_reserve, hours_reserve_init, hours_reserve_end, date_created) 
            values ("${randomUUID}", ?, ?, ?, ?, ?, ?, ?, NOW())`
            const [rows, fields] = await pool.query(sql, [ id_enterprise, user_id, apartament, bloc, date_reserve, hours_reserve_init, hours_reserve_end])
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
    },

    /* Get Scheduler Type */
    getSchedulerTypeId: async (req, res) => {
        try {
            const { id } = req.params;
            const [rows, fields] = await pool.query("SELECT * FROM scheduler_types where id_enterprise = ?", [id]);
    
            // Mapeando os resultados para o formato desejado
            const data = rows.map(row => {
                return {
                    id_enterprise:row.id_enterprise,
                    type: row.tipo,
                    hours: row.hours // Retorna diretamente row.hours
                }
            });
            res.json({
                data
            });
        } catch(error) {
            console.error(error);
            res.status(500).json({
                success: false,
                message: "Error retrieving scheduler types"
            });
        }
    },

    getSchedulerIdEnterprise: async (req, res) => {
        try {
            const { id } = req.params;
            const [rows, fields] = await pool.query("SELECT * FROM scheduler_types where id_scheduler = ?", [id]);
    
            // Mapeando os resultados para o formato desejado
            const data = rows.map(row => {
                return {
                    id_enterprise:row.id_enterprise,
                    type: row.tipo,
                    hours: row.hours // Retorna diretamente row.hours
                }
            });
            res.json({
                data
            });
        } catch(error) {
            console.error(error);
            res.status(500).json({
                success: false,
                message: "Error retrieving scheduler types"
            });
        }
    },
    
    postSchedulerType: async (req, res) => {
        try {
            const randomUUID = uuidv4();
            const { id_enterprise, tipo, hours } = req.body;
    
            // Objeto com a estrutura desejada
            const data = {
                type: tipo // Assumindo que 'tipo' corresponde ao valor 'academia'
            };
    
            const sql = `INSERT INTO scheduler_types (id_scheduler, id_enterprise, tipo, hours, date_created) 
                VALUES (?, ?, ?, ?, NOW())`;
    
            // Formato dos dados 'hours' para serem inseridos no banco como JSON
            const hoursJSON = JSON.stringify({
                hours
            });
    
            const [rows, fields] = await pool.query(sql, [randomUUID, id_enterprise, tipo, hoursJSON]);
    
            res.json({
                id: randomUUID,
                success: true,
                message: "Success create scheduler"
            });
        } catch(error) {
            console.error(error);
            res.status(500).json({
                success: false,
                message: "Error creating scheduler"
            });
        }
    },
    
    updateSchedulerType: async(req, res) => {
        try {
            const { id } = req.params;
            const { hours } = req.body;
            const sql = `UPDATE scheduler_types SET hours = ? where id_scheduler = ?`;

            // Formato dos dados 'hours' para serem inseridos no banco como JSON
            const hoursJSON = JSON.stringify({
                hours
            });
    
            const [rows, fields] = await pool.query(sql, [hoursJSON, id]);
    
            res.json({
                success: true,
                message: "Success Put scheduler type"
            });
        } catch(error) {
            console.error(error);
            res.status(500).json({
                success: false,
                message: "Error creating scheduler"
            });
        }
    },
    
    deleteSchedulerTypeId: async(req, res) => {
        try {
            const { id } = req.params
            const sql = "DELETE FROM scheduler_types where id_scheduler = ?"
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