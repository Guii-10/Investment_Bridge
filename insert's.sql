-- Inserindo registros na tabela INVESTIDOR
INSERT INTO INVESTIDOR (TIPO, NOME, TELEFONE, EMAIL) VALUES 
('Anjo', 'João Silva', '+55 (31)99176-9087', 'joao.silva@gmail.com'),
('Venture Capital', 'LeoTrônicos', '+55 (21)99246-9187', 'carro.robot@hotmail.com'),
('Anjo', 'Pedro Santos', '+55 (31)99572-9087', 'pedro.santos@gmail.com'),
('Venture Capital', 'DoWhile', '+55 (41)99026-9087', 'repetir.sempre@hotmail.com'),
('Anjo', 'Carlos Sousa', '+55 (51)99326-9087', 'carlos.sousa@gmail.com'),
('Venture Capital', 'FunctionEmprise', '+55 (61)99772-9087', 'funct.parametro@hotmail.com'),
('Anjo', 'José Costa', '+55 (21)99176-3080', 'jose.costa@gmail.com'),
('Venture Capital', 'TecIF', '+55 (81)99176-4057', 'tecs.condicao@hotmail.com'),
('Anjo', 'Roberto Ferreira', '+55 (92)99121-9087', 'roberto.ferreira@gmail.com'),
('Venture Capital', 'InforTECH', '+55 (62)99176-9087', 'infor.tech@hotmail.com');

-- Inserindo registros na tabela CLIENTE
INSERT INTO CLIENTE (TIPO, NOME, TELEFONE, EMAIL, ENDERECO, UF) VALUES 
('Pessoa', 'Dom Pedro I', '+55 (31)99176-9087', 'ouro.dinheiro@gmail.com', 'Rua A, 100', "MG"),
('Empresa', 'Health Corp', '+55 (21)93216-9187', 'health.corp@hotmail.com', 'Rua B, 200', 'RJ'),
('Pessoa', 'Gleison', '+55 (31)99242-9087', 'pop.100@gmail.com', 'Rua C, 300,', 'MG'),
('Empresa', 'AgroTech', '+55 (41)99124-9387', 'agro.tech@hotmail.com', 'Rua D, 400', 'PR'),
('Pessoa', 'Leo Bruno', '+55 (51)99346-1037', 'if.else@gmail.com', 'Rua E, 500', 'RS'),
('Empresa', 'Green Energy', '+55 (61)99632-9087', 'green.energy@hotmail.com', 'Rua F, 600', 'DF'),
('Pessoa', 'João do gás', '+55 (21)99126-3280', 'jj.gas@gmail.com', 'Rua G, 700', 'RJ'),
('Empresa', 'Foodies', '+55 (81)99136-4053', 'foodies@hotmail.com', 'Rua H, 800', 'PE'),
('Pessoa', 'Tiburcio Lima', '+55 (92)99161-9067', 'tib.lima@gmail.com', 'Rua I, 900', 'AM'),
('Empresa', 'AutoTech', '+55 (62)99176-9187', 'auto.tech@hotmail.com', 'Rua J, 1000', 'GO');

-- Inserindo registros na tabela PROJETOS
INSERT INTO PROJETOS (NOME, TIPO, NECESSIDADE_INVESTIMENTO, VALOR_TOTAL) VALUES 
('Projeto Alpha', 'Tecnologia', 'Desenvolvimento de software', 500000.00),
('Projeto Beta', 'Saúde', 'Equipamentos médicos', 1000000.00), 
('Projeto Gamma', 'Educação', 'Plataforma de ensino', 300000.00),
('Projeto Delta', 'Agronegócio', 'Tecnologia agrícola', 750000.00),
('Projeto Epsilon', 'Construção', 'Materiais sustentáveis', 850000.00),
('Projeto Zeta', 'Energia', 'Fontes renováveis', 950000.00),
('Projeto Eta', 'Turismo', 'Inovação em viagens', 400000.00),
('Projeto Theta', 'Alimentação', 'Tecnologia alimentar', 600000.00),
('Projeto Iota', 'Esportes', 'Equipamentos fitness', 200000.00),
('Projeto Kappa', 'Automotivo', 'Veículos autônomos', 1200000.00);

-- Inserindo registros na tabela INVESTIDOR_CLIENTE
INSERT INTO INVESTIDOR_CLIENTE (FK_INVESTIDOR_ID, FK_CLIENTE_ID) VALUES 
(1, 1), (10, 2), (3, 3), (10, 4), (5, 5), (7, 6), (7, 7), (8, 8), (9, 9), (10, 10);

-- Inserindo registros na tabela INVESTIDOR_PROJETO
INSERT INTO INVESTIDOR_PROJETO (FK_INVESTIDOR_ID, FK_PROJETOS_COD, VALOR_NEGOCIADO, DATA) VALUES 
(1, 1, 100000.00, '2024-01-15'),
(4, 2, 200000.00, '2024-02-20'),
(3, 3, 150000.00, '2024-03-10'),
(4, 4, 250000.00, '2024-04-25'),
(1, 5, 300000.00, '2024-05-05'),
(2, 6, 350000.00, '2024-06-15'),
(7, 7, 400000.00, '2024-07-20'),
(2, 8, 450000.00, '2024-08-25'),
(9, 9, 500000.00, '2024-09-30'),
(10, 1, 550000.00, '2024-10-10');

-- Inserindo registros na tabela CLIENTE_PROJETO
INSERT INTO CLIENTE_PROJETO (FK_CLIENTE_ID, FK_PROJETOS_COD) VALUES 
(1, 1), (2, 2), (2, 1), (4, 4), (5, 5), (6, 6), (10, 7), (8, 9), (2, 9), (7, 10);

-- Inserindo registros na tabela CHAT
INSERT INTO CHAT (FK_INVESTIDOR_ID, FK_CLIENTE_ID, ARMAZENAR) VALUES 
(1, 1, 'Primeira conversa sobre o projeto Alpha.'),
(2, 2, 'Discussão inicial sobre o projeto Beta.'),
(3, 3, 'Reunião sobre o projeto Gamma.'),
(3, 4, 'Primeiros passos no projeto Delta.'),
(5, 5, 'Negociações para o projeto Epsilon.'),
(6, 6, 'Detalhes do projeto Zeta.'),
(8, 8, 'Planejamento do projeto Theta.'),
(9, 9, 'Considerações sobre o projeto Iota.'),
(10, 10, 'Discussão sobre o projeto Kappa.');