const mysql = require('mysql2')

const pool = mysql.createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USERNAME,
    database: process.env.DB_DBNAME,
    password: process.env.DB_PASSWORD,
    port: process.env.DB_PORT,
});

module.exports = pool.promise()

/*  const { Pool } = require('pg');

const pool = new Pool({
  user: process.env.PGUSER,                     
  host: process.env.PGHOST,                    
  database: process.env.PGDATABASE,             
  password:process.env.PGPASSWORD,              
  port: process.env.PGPORT                      
}); 


 module.exports = pool */