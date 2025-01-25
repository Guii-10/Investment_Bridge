const { DataTypes } = require('sequelize');
const database = require('../db');

const Usuario = database.define(
    'Usuario',
    {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            allowNull: false,
            unique: true,
            primaryKey: true
        },
        nome: {
            type: DataTypes.STRING(50),
            unique: true,
            allowNull: false
        },
        email: {
            type: DataTypes.STRING(100),
            unique: true,
            allowNull: false
        },
        senha: {
            type: DataTypes.STRING(100),
            allowNull: false
        },
        cpf: {
            type: DataTypes.STRING(11),
            unique: true,
            allowNull: true
        },
        cep: {
            type: DataTypes.STRING(10),
            allowNull: true
        },
        telefone: {
            type: DataTypes.STRING(19),
            unique: true,
            allowNull: true
        },
        foto: {
            type: DataTypes.STRING(100),
            allowNull: true
        },
        biografia: {
            type: DataTypes.TEXT,
            allowNull: true
        },
        tipo: {
            type: DataTypes.ENUM('Investidor', 'Usuario'),
            allowNull: false,
            defaultValue: 'Usuario'
        }
    },
    { tableName: 'Usuario' }
)
module.exports = Usuario