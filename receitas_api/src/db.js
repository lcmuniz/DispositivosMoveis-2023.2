const { Client } = require('pg')

const client = new Client({
  user: 'postgres',
  password: 'password',
  database: 'postgres',
  host: 'localhost',
  port: 5432
})

client.connect()

module.exports = client