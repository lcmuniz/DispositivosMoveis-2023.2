const express = require('express')
const db = require('./db')

const router = express.Router()

router.get('/', async (req, res) => {
  try {
    const result = await db.query('select * from categorias')
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
    const result = await db.query('select * from categorias where id = $1', [id])
    if (result.rows.length === 0) {
      return res.status(404).json({ message: 'Categoria não encontrada' });
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
    const { id, titulo, cor } = req.body
    const result = await db.query('insert into categorias (id, titulo, cor) values ($1, $2, $3) returning *', [id, titulo, cor]);
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
    const { titulo, cor } = req.body
    const result = await db.query('update categorias set titulo = $2, cor = $3 where id = $1 returning *', [id, titulo, cor]);
    if (result.rows.length === 0) {
      return res.status(404).json({ message: 'Categoria não encontrada' });
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
    const result = await db.query('delete from categorias where id = $1 returning *', [id]);
    if (result.rows.length === 0) {
      return res.status(404).json({ message: 'Categoria não encontrada' });
    }
    res.json({ message: 'Categoria excluída com sucesso' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: 'Internal Server Error' });
  }
});

module.exports = router