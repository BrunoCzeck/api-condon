 const { Pool } = require('pg');

const pool = new Pool({
  user: process.env.PGUSER,                     
  host: process.env.PGHOST,                    
  database: process.env.PGDATABASE,             
  password:process.env.PGPASSWORD,              
  port: process.env.PGPORT                      
}); 

/* pool.query('SELECT * FROM usuario', (err, res) => {
    if (err) {
      console.error('Erro na consulta:', err);
    } else {
      console.log('Resultado da consulta:', res.rows[0]);
    }
  });
 */

module.exports = pool 