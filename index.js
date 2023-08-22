import express from 'express'

const app = express()

app.get('/users')

app.listen(3000)
console.log('Rodando na porta 3000')