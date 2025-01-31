const database = require("./db");
const Usuario = require('./model/usuario')
const Projeto = require('./model/projetos')
const UsuarioProjeto = require('./model/usuarioProjeto')
const Pagamentos = require('./model/pagamentos')
const FormasPagamento = require('./model/formasPagamento')
const Chat = require('./model/chat')

const setupRelacoes = require('./model/relacoes');

(async () => {
    try {
        setupRelacoes();  

        await database.sync();
        console.log('DB sync');
    } catch (error) {
        console.log("Erro!", error);
    }
})();
