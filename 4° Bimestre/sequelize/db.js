const { Sequelize } = require("sequelize");
const sequelize = new Sequelize(
    'sequelize',
    'root',
    'Miguelsql123@',
    {       
        host: 'localhost',
        dialect: 'mysql',
    }
)
module.exports = sequelize;