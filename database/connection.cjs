const mysql = require('mysql2')

const pool = mysql.createPool({
    host: process.env.DATABASE_URL,
   /*  user: process.env.PGUSER,
    database: process.env.PGDATABASE,
    password: process.env.PGPASSWORD, */

});

module.exports = pool.promise()