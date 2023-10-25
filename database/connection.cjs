/* const mysql = require('mysql2')

const pool = mysql.createPool({
    host: process.env.DATABASE_URL,
    user: process.env.PGUSER,
    database: process.env.PGDATABASE,
    password: process.env.PGPASSWORD,

});

module.exports = pool; */

const { Pool } = require('pg');

const pool = new Pool({
  user: process.env.PGUSER,                     /* 'postgres' */
  host: process.env.PGHOST,                     /* 'roundhouse.proxy.rlwy.net' */
  database: process.env.PGDATABASE,             /* 'railway' */
  password:process.env.PGPASSWORD,              /* 'b-CadfCE*d33gGf3Cc13a322Eb3ba-2b' */
  port: process.env.PGPORT                      /* 19596 */
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


/* const mysql = require('')

const pool = mysql.createPool({
    host: process.env.DATABASE_URL,
    user: process.env.PGUSER,
    database: process.env.PGDATABASE,
    password: process.env.PGPASSWORD,

});

module.exports = pool; */