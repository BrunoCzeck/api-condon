/* const mysql = require('mysql')

const pool = mysql.createPool({
    host: process.env.DATABASE_URL,
    user: process.env.PGUSER,
    database: process.env.PGDATABASE,
    password: process.env.PGPASSWORD,

});

module.exports = pool; */

const { Pool } = require('pg');

const pool = new Pool({
  user: 'postgres://postgres:b-CadfCE*d33gGf3Cc13a322Eb3ba-2b@roundhouse.proxy.rlwy.net:19596/railway'
 /*  host: 'localhost',
  database: 'sua_database',
  password: 'sua_senha',
  port: 5432, */
});

module.exports = {
  query: (text, params, callback) => {
    return pool.query(text, params, callback);
  },
};
