const { DataTypes } = require('sequelize');
const database = require('../db');
const Usuario = require('./usuario');
const Projetos = require('./projetos');


const UsuarioProjeto = database.define('UsuarioProjeto', {
  FK_USUARIO_ID: {
    type: DataTypes.INTEGER,
    references: {
      model: Usuario,
      key: 'id',
    },
  },
  FK_PROJETOS_COD: {
    type: DataTypes.INTEGER,
    references: {
      model: Projetos,
      key: 'cod',
    },
  },
  dataAssociacao: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
  },
}, {
  tableName: 'USUARIO_PROJETO',

});

module.exports = UsuarioProjeto;