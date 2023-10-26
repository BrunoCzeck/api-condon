const express = require("express");
const cors = require('cors');
const { v4: uuidv4 } = require('uuid');
const pool = require('../database/connection.cjs')
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
            const client = await pool.connect();
            const result = await pool.query('SELECT * FROM usuario where id = $1', [id])
            res.json(result.rows);
            client.release();
        } catch(err) {
            console.error('Erro na consulta:', err);
            res.status(500).json({ error: 'Erro interno do servidor' });
        }
    },
    postUser: async(req, res, next) => {
        try {      
            app.use((req, res, next) => {
                res.header('Access-Control-Allow-Origin', '*')
                res.header('Access-Control-Allow-Headers', 'Content-Type')
                res.header('Access-Control-Allow-Methods', 'PUT, PATCH, DELETE, POST, GET')
                res.header('Access-Control-Allow-DOIS', '2T')
                
                app.use(cors())
                next();
            });    
            const randomUUID = uuidv4();
            const prioridade = '1'
            const { id, usuario, senha, apartament, bloc, email, id_enterprise } = req.body;
            const client = await pool.connect();
            const sql = 'INSERT INTO usuario (id, usuario, senha, apartament, bloc, email, date_created, id_enterprise, priority) VALUES ($1, $2, $3, $4, $5, $6, NOW(), $7, $8) RETURNING *';
            const values = [randomUUID, usuario, senha, apartament, bloc, email, id_enterprise, prioridade];
            const result = await client.query(sql, values);
            console.log(result.rows);
            res.json(result.rows);
            client.release();
        } catch (err) {
        console.error('Erro na consulta:', err);
        res.status(500).json({ error: 'Erro interno do servidor' });
        }
    },
    updateUser: async(req, res) => {
        try {
            const { usuario, senha, email } = req.body;
            const { id } = req.params;
            const values = [id, usuario, senha, email]
            const client = await pool.connect();
            const sql = "UPDATE usuario SET usuario = $2, senha = $3, email = $4 where id = $1"
            const result = await client.query(sql, values)
            res.json(result.rows);
        } catch(err) {
            console.log(err)
        }
    },
    deleteUserId: async(req, res) => {
        try {
            const { id } = req.params
            const client = await pool.connect();
            const sql = "DELETE FROM usuario where id = $1"
            const result = await client.query(sql, [id])
            res.json(result.rows);
        } catch (err) {
            console.error('Erro na consulta:', err);
            res.status(500).json({ error: 'Erro interno do servidor' });
        }
    }
}

module.exports = usersController
