import express from 'express'

const app = express()

app.get('/teste', (req, res) => {
    res.send('Welcome')
})

app.listen(3000)
console.log('Rodando na porta 3000')