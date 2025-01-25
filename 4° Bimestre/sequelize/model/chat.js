const { DataTypes } = require('sequelize');
const database  = require('../db');

const Chat = database.define(
    'Chat', 
    {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    remetenteId: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'Usuario', 
        key: 'id',
      },
    },
    destinatarioId: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'Usuario', 
        key: 'id', 
      },
    },
    mensagem: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    dataHora: {
      type: DataTypes.DATE,
    },
  },
);
  
  module.exports = Chat;