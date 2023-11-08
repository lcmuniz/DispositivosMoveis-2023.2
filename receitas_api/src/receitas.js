const express = require('express')
const db = require('./db')

const router = express.Router()

router.get('/', async (req, res) => {
  try {
    const result = await db.query('select * from receitas')
    res.json(result.rows)
  }
  catch(error) {
    console.log(error)
    res.status(500).json({
      error
    })
  }
})

router.get('/:id', async (req, res) => {
  try {
    const { id } = req.params
    const result = await db.query('select * from receitas where id = $1', [id])
    if (result.rows.length === 0) {
      return res.status(404).json({ message: 'Receita não encontrada' });
    }
    res.json(result.rows[0]);
  }
  catch(error) {
    console.log(error)
    res.status(500).json({
      error
    })
  }
})

router.post('/', async (req, res) => {
  try {
    const { id, titulo, acessibilidade, complexidade, url_imagem, duracao, sem_gluten, vegano, vegetariano, sem_lactose, categorias, ingredientes, passos } = req.body
    const result = await db.query('insert into receitas (id, titulo, acessibilidade, complexidade, url_imagem, duracao, sem_gluten, vegano, vegetariano, sem_lactose, categorias, ingredientes, passos) values ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13) returning *', [id, titulo, acessibilidade, complexidade, url_imagem, duracao, sem_gluten, vegano, vegetariano, sem_lactose, categorias, ingredientes, passos]);
    res.status(201).json(result.rows[0]);
  }
  catch(error) {
    console.log(error)
    res.status(500).json({
      error
    })
  }
})

router.put('/:id', async (req, res) => {
  try {
    const { id } = req.params
    const { titulo, acessibilidade, complexidade, url_imagem, duracao, sem_gluten, vegano, vegetariano, sem_lactose, categorias, ingredientes, passos } = req.body
    const result = await db.query('update receitas set titulo = $2, acessibilidade = $3, complexidade = $4, url_imagem = $5, duracao = $6, sem_gluten = $7, vegano = $8, vegetariano = $9, sem_lactose = $10, categorias = $11, ingredientes = $12, passos = $13 where id = $1 returning *', [id, titulo, acessibilidade, complexidade, url_imagem, duracao, sem_gluten, vegano, vegetariano, sem_lactose, categorias, ingredientes, passos]);
    if (result.rows.length === 0) {
      return res.status(404).json({ message: 'Receita não encontrada' });
    }
    res.json(result.rows[0]);
  }
  catch(error) {
    console.log(error)
    res.status(500).json({
      error
    })
  }
})

router.delete('/:id', async (req, res) => {
  try {
    const { id } = req.params;
    const result = await db.query('delete from receitas where id = $1 returning *', [id]);
    if (result.rows.length === 0) {
      return res.status(404).json({ message: 'Receita não encontrada' });
    }
    res.json({ message: 'Receita excluída com sucesso' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: 'Internal Server Error' });
  }
});

module.exports = router