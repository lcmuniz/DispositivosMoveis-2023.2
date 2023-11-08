const express = require('express')
const categorias = require('./categorias')
const receitas = require('./receitas')

const app = express();

app.use(express.json())

app.get('/', (req, res) => {
  res.json({
    timestamp: new Date().getTime(),
    version: '1.0'
  })
})

app.use('/categorias', categorias)
app.use('/receitas', receitas)

app.listen(3000, () => {
  console.log('Servidor iniciado na porta 3000')
})