const { DataTypes } = require('sequelize');
const database = require('../db');
const Projetos = require('./projetos'); 
const PerfilProjeto = database.define(
  'PerfilProjeto', 
  {
  cod: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  FK_PROJETOS_COD: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: {
      model: Projetos, 
      key: 'cod', 
    },
  },
},
{ tableName: 'PerfilProjeto' }
) 

module.exports = PerfilProjeto;
