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
            const {
                user_id
            } = req.params;
    
            const sql = `
            SELECT
            u.user_id,
            u.date_created,
            u.apartament,
            u.usuario,
            u.bloc,
            u.id_enterprise,
            m.date_message,
            m.user_id AS mensagem_user_id,
            m.description AS mensagem_description
            FROM
                chat u
            JOIN
                chat_message m ON u.user_id = m.user_id
            WHERE
                u.user_id = ? ORDER BY date_message DESC
            `;
    
            const [rows, fields] = await pool.query(sql, [user_id]);
    
            // Organize os dados conforme necessário
            const result = {
                user_id: rows[0].user_id,
                day: rows[0].day,
                apartament: rows[0].apartament,
                usuario: rows[0].usuario,
                bloc: rows[0].bloc,
                id_enterprise: rows[0].id_enterprise,
                chat: rows.map(row => ({
                    user_id: row.mensagem_user_id,
                    description: row.mensagem_description
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

    postChat: async(req, res) => {
        try {
            const randomUUID = uuidv4();
            const randomUUID2 = uuidv4();

            const {
                user_id,
                apartament,
                usuario,
                bloc,
                id_enterprise,
                chat,

            } = req.body;
    
            const sqlPrincipal = `
                INSERT INTO chat (id_chat, user_id, apartament, usuario, bloc, id_enterprise, date_created)
                VALUES ("${randomUUID}", ?, ?, ?, ?, ?, NOW())
            `;
    
            const parametrosPrincipal =  [ user_id, apartament, usuario, bloc, id_enterprise];
            const [rowsPrincipal, fieldsPrincipal] = await pool.query(sqlPrincipal, parametrosPrincipal);
    
            const id_inserido = rowsPrincipal.insertId;
    
            if (chat && chat.length > 0) {
                const sqlMensagens = `
                    INSERT INTO chat_message (id_message, user_id, description, date_message)
                    VALUES ("${randomUUID2}", ?, ?, NOW())
                `;

                for (const mensagem of chat) {
                    const parametrosMensagem = [mensagem.user_id, mensagem.description];
                    await pool.query(sqlMensagens, parametrosMensagem);
                }
            }   
    
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

    putChat: async(req, res) => {
        try {
            const { chat } = req.body;
            const randomUUID = uuidv4();

            // Verifique se o chat existe na requisição
            if (!chat || !Array.isArray(chat) || chat.length === 0) {
                return res.status(400).json({
                    success: false,
                    message: "Error: Chat array is missing or empty"
                });
            }
    
            // Obtenha o ID do chat a ser atualizado
            const id_chat = req.params.id;
    
            // Adicione novas mensagens ao chat existente
            const sqlMensagens = `
                INSERT INTO chat_message (id_message, user_id, description, date_message)
                VALUES ("${randomUUID}", ?, ?, NOW())
            `;
    
            for (const mensagem of chat) {
                const parametrosMensagem = [mensagem.user_id, mensagem.description];
                await pool.query(sqlMensagens, parametrosMensagem);
            }
    
            // Recupere as mensagens atualizadas do chat
            const sqlConsultaMensagens = `
                SELECT user_id, description
                FROM chat_message
                WHERE user_id = ?
            `;
    
            const [rowsConsultaMensagens, fieldsConsultaMensagens] = await pool.query(sqlConsultaMensagens, [id_chat]);
    
            // Construir a resposta JSON com os dados atualizados
            const responseData = {
                chat: rowsConsultaMensagens.map(mensagem => ({
                    user_id: mensagem.user_id,
                    description: mensagem.description
                }))
            };
    
            res.json(responseData);
        } catch (error) {
            console.error(error);
            res.status(500).json({
                success: false,
                message: "Error: Unable to update chat data"
            });
        }
    }
}

module.exports = chatController