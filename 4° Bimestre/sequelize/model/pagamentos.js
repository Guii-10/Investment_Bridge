const { DataTypes } = require('sequelize');
const database = require('../db');

const Pagamentos = database.define(
    'Pagamentos',
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        fkUsuarioId: {
            type: DataTypes.INTEGER,
            references: {
                model: 'Usuario',
                key: 'id',
            },
        },
        fkProjetosCod: {
            type: DataTypes.INTEGER,
            references: {
                model: 'Projetos',
                key: 'cod',
            },
        },
        fkFormaPagamentoId: {
            type: DataTypes.INTEGER,
            references: {
                model: 'FormasPagamento',
                key: 'id',
            },
        },
        valorPago: {
            type: DataTypes.DOUBLE,
            allowNull: false,
        },
        dataPagamento: {
            type: DataTypes.DATEONLY,
        },
    },
    { tableName: 'Pagamentos' }
)

module.exports = Pagamentos
