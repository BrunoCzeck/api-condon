// seu-arquivo.cjs
const express = require('express')
const app = express()

require('dotenv').config() /* Config o env */

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

const PORT = process.env.PORT || 3000

app.listen(PORT, () => {
    console.log("Server RUN")
})