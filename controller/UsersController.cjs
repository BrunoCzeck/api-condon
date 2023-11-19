const express = require("express");
const { v4: uuidv4 } = require('uuid');
const pool = require('../database/connection.cjs')

const usersController = {
    getUsers: async(req, res) => {
    try {
        const [rows, fields] = await pool.query("SELECT * FROM usuario")
        res.json({
            data:rows
        })
        } catch(error) {
            console.log("Sem dados")
        }
    },

    getUserId: async(req, res) => {
        try {
            const { id } = req.params
            const [rows, fields] = await pool.query("SELECT * FROM usuario where id = ?", [id])
            res.json({
                data:rows
            })
        } catch(error) {
            console.log("Sem dados")
        }
    },

    postUser: async(req, res, next) => {
        try {
            const randomUUID = uuidv4();  
            const { usuario, senha, apartament, bloc, email, id_enterprise } = req.body;
            
            const sql = `INSERT INTO usuario (id, usuario, senha, apartament, bloc, email, date_created, id_enterprise, priority) values ("${randomUUID}", ?, ?, ?, ?, ?, NOW(), ?, 1)`;
    
            const [rows, fields] = await pool.query(sql, [usuario, senha, apartament, bloc, email, id_enterprise]);
    
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
    
    postUserValidate: async (req, res, next) => {
        try {
            const { senha, email } = req.body;
            
            const sql = `SELECT * FROM usuario WHERE email = ? AND senha = ?`;
    
            const [rows, fields] = await pool.query(sql, [email, senha]);
    
            if (rows.length > 0) {
                // Se houver pelo menos um usuário correspondente, retorne o primeiro encontrado
                res.json({
                    data: rows[0] // Retorna o primeiro usuário encontrado
                });
            } else {
                res.status(404).json({ error: 'Usuário não encontrado' });
            }
        } catch (error) {
            console.log(error);
            res.status(500).json({ error: 'Internal Server Error' });
        }
    },
    
    updateUser: async(req, res) => {
        try {
            const { usuario, senha, email } = req.body
            const { id } = req.params

            const sql = "UPDATE usuario SET usuario = ?, senha = ?, email = ? where id = ?"
            const [rows, fields] = await pool.query(sql, [usuario, senha, email, id])
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
            const sql = "DELETE FROM usuario where id = ?"
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