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
  user: 'postgres://postgres:b-CadfCE*d33gGf3Cc13a322Eb3ba-2b@roundhouse.proxy.rlwy.net:19596/railway',
  /*   host: 'roundhouse.proxy.rlwy.net',  //localhost (I also tried 127.0.0.1)
    database: 'railway',    //database name to connect to
    password:'b-CadfCE*d33gGf3Cc13a322Eb3ba-2b,  //postgres user password
    port: 19596 */
});

module.exports = pool