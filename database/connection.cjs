import pg from "pg";
const { Pool } = pg;

dotenv.config();

const databaseConfig = { connectionString: process.env.DATABASE_URL };
const pool = new Pool(databaseConfig);

export default pool;
