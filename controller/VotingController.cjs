const { v4: uuidv4 } = require('uuid');
const pool = require("../database/connection.cjs")
const votingController = {
     
    getVotingUsersEnterpriseId: async (req, res) => {
        try {
            const { id_enterprise } = req.params;
    
            const sql = `
            SELECT
                (SELECT COUNT(DISTINCT a.id) FROM usuario a WHERE a.id_enterprise = ? AND a.priority <> "2") AS all_users,
                m.id_enterprise,
                u.votacao_change,
                u.title,
                u.description,
                u.date_init,
                u.date_end,
                m.user_id,
                m.usuario,
                m.apartament,
                m.bloc,
                m.date_voting,
                m.option_1 AS "votos.option-1",
                m.option_2 AS "votos.option-2",
                m.option_3 AS "votos.option-3",
                m.option_4 AS "votos.option-4",
                m.option_5 AS "votos.option-5",
                m.option_6 AS "votos.option-6",
                m.option_7 AS "votos.option-7",
                m.option_8 AS "votos.option-8",
                m.option_9 AS "votos.option-9",
                m.option_10 AS "votos.option-10"
            FROM
                voting u
            JOIN
                voting_users m ON u.id_enterprise = m.id_enterprise
            WHERE
                u.id_enterprise = ?
            
            `;
    
            const [rows, fields] = await pool.query(sql, [id_enterprise, id_enterprise]);
    
            // Organize os dados conforme necessário
            const result = {
                id_enterprise: rows[0].id_enterprise,
                votacao_change: rows[0].votacao_change,
                title: rows[0].title,
                description: rows[0].description,
                date_init: rows[0].date_init,
                date_end: rows[0].date_end,
                all_users: rows[0].all_users,
                votacao: rows.map(row => ({
                    user_id: row.user_id,
                    usuario: row.usuario,
                    apartament: row.apartament,
                    bloc: row.bloc,
                    date_voting: row.date_voting,
                    votos: {
                        "option-1": row["votos.option-1"],
                        "option-2": row["votos.option-2"],
                        "option-3": row["votos.option-3"],
                        "option-4": row["votos.option-4"],
                        "option-5": row["votos.option-5"],
                        "option-6": row["votos.option-6"],
                        "option-7": row["votos.option-7"],
                        "option-8": row["votos.option-8"],
                        "option-9": row["votos.option-9"],
                        "option-10": row["votos.option-10"],
                    }
                }))
            };
    
            res.json(result);
        } catch (error) {
            console.error(error);
            res.status(500).json({
                success: false,
                message: "Error: Unable to fetch data from the database"
            });
        }
    },
    
    postVoting: async(req, res) => {
        try {
            const randomUUID = uuidv4();
            const {
                id_enterprise, title, description, votacao_change, date_init, date_end,
                option_1, option_2, option_3, option_4, option_5, option_6, option_7, option_8, option_9, option_10
            } = req.body;
    
            const sqlPrincipal = `
                INSERT INTO voting (id_voting, id_enterprise, title, description, votacao_change, date_init, date_end, 
                    option_1, option_2, option_3, option_4, option_5, option_6, option_7, option_8, option_9, option_10)
                VALUES ("${randomUUID}", ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            `;
    
            const parametrosPrincipal =  [ 
                id_enterprise, title, description, votacao_change, date_init, date_end,
                option_1, option_2, option_3, option_4, option_5, option_6, option_7, option_8, option_9, option_10
            ];
            const [rowsPrincipal, fieldsPrincipal] = await pool.query(sqlPrincipal, parametrosPrincipal);

            res.json({
                id: randomUUID,
                success: true,
                message: "Success: Chat data inserted"
            });
        } catch (error) {
            console.error(error);
            res.status(500).json({
                success: false,
                message: "Error: Unable to insert chat data"
            });
        }
    },

    postVotingUsers: async(req, res) => {
        try {
            const randomUUID = uuidv4();
            const {
                user_id, id_enterprise, usuario, apartament, bloc, date_voting,
                option_1, option_2, option_3, option_4, option_5, option_6, option_7, option_8, option_9, option_10
            } = req.body;
    
            const sqlPrincipal = `
                INSERT INTO voting_users (id_voting_users, user_id, id_enterprise, usuario, apartament, bloc, date_voting,
                option_1, option_2, option_3, option_4, option_5, option_6, option_7, option_8, option_9, option_10)
                VALUES ("${randomUUID}", ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            `;
    
            const parametrosPrincipal =  [ 
                user_id, id_enterprise, usuario, apartament, bloc, date_voting,
                option_1, option_2, option_3, option_4, option_5, option_6, option_7, option_8, option_9, option_10
            ];
            const [rowsPrincipal, fieldsPrincipal] = await pool.query(sqlPrincipal, parametrosPrincipal);

            res.json({
                id: randomUUID,
                success: true,
                message: "Success: Chat data inserted"
            });
        } catch (error) {
            console.error(error);
            res.status(500).json({
                success: false,
                message: "Error: Unable to insert chat data"
            });
        }
    }
}


module.exports = votingController