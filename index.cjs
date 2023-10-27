// seu-arquivo.cjs
const express = require('express')
const cors = require('cors');
const app = express()
require('dotenv').config() /* Config o env */


const allowedOrigins = ['http://localhost:3000', 'https://api-condon-production.up.railway.app'];

app.use(cors({
    origin: allowedOrigins,
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE', // Adicione os métodos HTTP que deseja permitir
    preflightContinue: false,
    optionsSuccessStatus: 204,
    allowedHeaders: 'Content-Type,Authorization', // 
  }));
  
const usersRouter = require('./routes/routes.condon.cjs')           /* Chama a rota usuário */
const muralRouter = require('./routes/routes.mural.cjs')           /* Chama a rota mural */
const chatRouter = require('./routes/routes.chat.cjs')            /* Chama a rota chat */
const schedulerRouter = require('./routes/routes.scheduler.cjs') /* Chama a rota scheduler */

app.use(express.urlencoded({extended: false}))
app.use(express.json())

app.use("/api/v1/users", usersRouter)
app.use("/api/v1/mural", muralRouter)
app.use("/api/v1/chat", chatRouter)
app.use("/api/v1/scheduler", schedulerRouter)

const PORT = process.env.PORT || 3333

app.listen(PORT, () => {
    console.log("Server RUN")
})