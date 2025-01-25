const { DataTypes } = require('sequelize');
const database = require('../db');

const FormasPagamento = database.define('FormasPagamento', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  nome: {
    type: DataTypes.STRING(50),
    allowNull: false,
  },
},
  { tableName: 'FormasPagamento' }
)

module.exports = FormasPagamento;
