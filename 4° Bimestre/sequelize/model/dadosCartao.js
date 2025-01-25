const { DataTypes } = require('sequelize');
const database = require('../db');

const DadosCartao = database.define(
  'DadosCartao',
  {
    id:
    {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    fkUsuarioId:
    {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'Usuario',
        key: 'id',
      },
    },
    nomeTitular:
    {
      type: DataTypes.STRING(50),
      allowNull: false
    },
    numeroCartao:
    {
      type: DataTypes.STRING(16),
      allowNull: false
    },
    validade:
    {
      type: DataTypes.STRING(7),
      allowNull: false
    },
    cvv:
    {
      type: DataTypes.INTEGER,
      allowNull: false
    },
  },
  { tableName: 'DadosCartao' }
);

module.exports = DadosCartao;