const { v4: uuidv4 } = require('uuid');
const pool = require("../database/connection.cjs")
const chatController = {
    
    getChatEnterpriseId: async (req, res) => {
        try {
            const { id_enterprise } = req.params;
    
            const sql = `
            SELECT
                u.id_chat,
                u.user_id,
                u.apartament,
                u.usuario,
                u.bloc,
                u.id_enterprise,
                m.date_message,
                m.description
            FROM
                chat u
            JOIN
                chat_message m ON u.user_id = m.user_id
            WHERE
                u.id_enterprise = ?
            AND m.date_message = (
                SELECT MAX(date_message)
                FROM chat_message
                WHERE user_id = u.user_id
            )
            ORDER BY
            m.date_message DESC
            `;
            
            const [rows, fields] = await pool.query(sql, [id_enterprise]);
            
    
            res.json(rows);
            console.log(rows);
        } catch (error) {
            console.error(error);
            res.status(500).json({
                success: false,
                message: "Error: Unable to fetch data from the database"
            });
        }
    }, 

    getChatId: async (req, res) => {
        try {
            const { user_id } = req.params;
    
            const sql = `
                SELECT
                    u.id_chat,
                    m.id_message,
                    u.apartament,
                    u.usuario,
                    u.bloc,
                    u.id_enterprise,
                    m.date_message,
                    u.user_id,
                    m.user_id AS mensagem_user_id,
                    m.user_id_send_message,
                    m.description AS mensagem_description
                FROM
                    chat u
                JOIN
                    chat_message m ON u.user_id = m.user_id
                WHERE
                    u.user_id = ? ORDER BY date_message ASC
            `;
    
            const [rows, fields] = await pool.query(sql, [user_id]);
    
            // Remova mensagens duplicadas com base no horário
            const uniqueMessages = [];
            const seenTimes = new Set();
    
            for (const row of rows) {
                const messageTime = new Date(row.date_message).getTime();
                if (!seenTimes.has(messageTime)) {
                    seenTimes.add(messageTime);
                    uniqueMessages.push(row);
                }
            }
    
            // Organize os dados conforme necessário
            const result = {
                id_chat: uniqueMessages[0].id_chat,
                user_id: uniqueMessages[0].user_id,
                apartament: uniqueMessages[0].apartament,
                usuario: uniqueMessages[0].usuario,
                bloc: uniqueMessages[0].bloc,
                id_enterprise: uniqueMessages[0].id_enterprise,
                chat: uniqueMessages.map(row => ({
                    user_id_send_message: row.user_id_send_message,
                    description: row.mensagem_description,
                    date_message: row.date_message
                }))
            };
    
            res.json(result);
            console.log(result);
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
                    INSERT INTO chat_message (id_message, user_id, user_id_send_message, description, date_message)
                    VALUES ("${randomUUID2}", ?, ?, ?, NOW())
                `;

                for (const mensagem of chat) {
                    const parametrosMensagem = [mensagem.user_id, mensagem.user_id_send_message, mensagem.description];
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
                INSERT INTO chat_message (id_message, user_id, user_id_send_message, description, date_message)
                VALUES ("${randomUUID}", ?, ?, ?, NOW())
            `;
    
            for (const mensagem of chat) {
                const parametrosMensagem = [mensagem.user_id, mensagem.user_id_send_message, mensagem.description];
                await pool.query(sqlMensagens, parametrosMensagem);
            }
    
            // Recupere as mensagens atualizadas do chat
            const sqlConsultaMensagens = `
                SELECT user_id, user_id_send_message, description
                FROM chat_message
                WHERE user_id = ?
            `;
    
            const [rowsConsultaMensagens, fieldsConsultaMensagens] = await pool.query(sqlConsultaMensagens, [id_chat]);
    
            // Construir a resposta JSON com os dados atualizados
            const responseData = {
                chat: rowsConsultaMensagens.map(mensagem => ({
                    user_id: mensagem.user_id,
                    user_id_send_message: mensagem.user_id_send_message,
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