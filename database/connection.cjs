/* const mysql = require('mysql2')
 */
const { Pool } = require('pg');

/* const pool = mysql.createPool({
    host: process.env.DATABASE_URL,
 user: process.env.PGUSER,
    database: process.env.PGDATABASE,
    password: process.env.PGPASSWORD,

}); */

const pool = new Pool({
    host: process.env.DATABASE_URL,
    user: process.env.PGUSER,
    database: process.env.PGDATABASE,
    password: process.env.PGPASSWORD,
    port: process.env.PGPORT,
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});

module.exports = pool;

