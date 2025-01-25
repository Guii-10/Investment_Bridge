const Usuario = require('./usuario');
const Projetos = require('./projetos');
const FormasPagamento = require('./formasPagamento');
const Pagamentos = require('./pagamentos');
const DadosCartao = require('./dadosCartao');
const Chat = require('./chat');
const UsuarioProjeto = require('./usuarioProjeto');
const PerfilProjeto = require('./perfilProjeto');

module.exports = () => {
    Pagamentos.belongsTo(Usuario, { foreignKey: 'fkUsuarioId' });
    Pagamentos.belongsTo(Projetos, { foreignKey: 'fkProjetosCod' });
    Pagamentos.belongsTo(FormasPagamento, { foreignKey: 'fkFormaPagamentoId' });
    
    DadosCartao.belongsTo(Usuario, { foreignKey: 'fkUsuarioId' });
    
    Chat.belongsTo(Usuario, { foreignKey: 'remetenteId', as: 'Remetente' });
    Chat.belongsTo(Usuario, { foreignKey: 'destinatarioId', as: 'Destinatario' });
    
    Usuario.belongsToMany(Projetos, { through: UsuarioProjeto, foreignKey: 'usuarioId' });
    Projetos.belongsToMany(Usuario, { through: UsuarioProjeto, foreignKey: 'projetoId' });
    
    PerfilProjeto.belongsTo(Projetos, { foreignKey: 'projetoId' });
}
