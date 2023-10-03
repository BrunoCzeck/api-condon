// seu-arquivo.cjs
const express = require('express')
const app = express()

require('dotenv').config() /* Config o env */

const usersRouter = require('./routes/routes.condon.cjs') /* Chama as rotas */

app.use(express.urlencoded({extended: false}))
app.use(express.json())
app.use("/api/v1/users", usersRouter)


const PORT = process.env.PORT || 3000

app.listen(PORT, () => {
    console.log("Server RUN")
})