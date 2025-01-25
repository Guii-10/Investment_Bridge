const {DataTypes} = require('sequelize');
const database = require('../db');


const Projetos = database.define(
    'Projetos',
    {
        cod: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,
            allowNull:false
        },
        nome: {
            type: DataTypes.STRING(50),
            allowNull: false
        },
        descricao: {
            type: DataTypes.STRING(200),
            allowNull: false
        },
        valorTotal:{
            type: DataTypes.DECIMAL(10,2),
            allowNull: false
        },
        imagem :{
            type: DataTypes.STRING(100),
            allowNull: true
        }

    }, { tableName: 'Projetos' }
)
module.exports = Projetos;