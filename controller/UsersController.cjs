const { v4: uuidv4 } = require('uuid');
const pool = require('../database/connection.cjs')
const express = require("express");
const app = express();

const usersController = {
    getUsers: async(req, res) => {
        try {
            const client = await pool.connect();
            const result = await pool.query('SELECT * FROM usuario');
            res.json(result.rows);
            client.release();
        } catch (err) {
            console.error('Erro na consulta:', err);
            res.status(500).json({ error: 'Erro interno do servidor' });
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
            const { usuario, senha, apartament, bloc, email, id_enterprise,  priority} = req.body
            const { } = req.header
            const sql = `INSERT INTO usuario (1, usuario, senha, apartament, bloc, email, date_created, id_enterprise, priority) values ("${randomUUID}", ?, ?, ?, ?, ?, NOW(), ?, 1)`
            const [rows, fields] = await pool.query(sql, [ usuario, senha, apartament, bloc, email, id_enterprise, priority])
            res.json({
                id:randomUUID,
                success:true,
                message:"Success create usuario" 
            })
        } catch(error) {
            console.log(error)
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
