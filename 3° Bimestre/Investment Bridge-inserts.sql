

INSERT INTO USUARIO (NOME, EMAIL, SENHA, CPF, CEP, TELEFONE, TIPO) VALUES
('Sandro Curio', 'tedigoverdade@gmail.com', 'verdades123', '12385310212', '57842-000', '(82)4171-3542', 'Investidor'),
('Gordão do Investimento', 'gordoinveste@gmail.com', 'carol23', '12324224212', '57995-000', '(82)9347-1292', 'Usuario');

INSERT INTO PROJETOS (NOME, DESCRICAO, VALOR_TOTAL, IMAGEM) VALUES
('Cachorro Robô', 'Robô autônomo com IA para interação com humanos, sensores de navegação para evitar obstáculos e rodas nas patas para mobilidade versátil em diversos ambientes.', 372560.00, 'cachorro_robo.png'),
('Carro Voador', 'Veículo elétrico de decolagem vertical, com controle autônomo e design aerodinâmico leve, visando transporte seguro e rápido em áreas urbanas.', 620000.00, 'carro_voador.png'),
('Smartphone 2077', 'Smartphone com design futurista, funcionalidades avançadas e integração total com sistemas inteligentes, visando usabilidade de ponta.', 150000.00, 'smartphone_2077.png'),
('Chip da Besta', 'Protótipo de um cérebro humano interconectado com circuitos e dispositivos tecnológicos ilustrando a integração entre neurociência e tecnologia.', 100000.00, 'chip_besta.png'),
('Tenis Abidas Air', 'Tênis futurista com design tecnológico, estrutura translúcida e luz azul, acompanhado por sensores integrados e conectividade inteligente.', 250000.00, 'tenis_abidas_air.png'),
('Caneta S Pin', 'Caneta capaz de escrever com ajuda externa, interagindo com dispositivos para gerar escrita automaticamente.', 50000.00, 'caneta_s_pin.png');

INSERT INTO USUARIO_PROJETO (FK_USUARIO_ID, FK_PROJETOS_COD) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6);

INSERT INTO CHAT (REMETENTE_ID, DESTINATARIO_ID, MENSAGEM, DATA_HORA) VALUES
(1, 2, 'Olá! Gostaria de mais informações sobre o projeto Cachorro Robô.', '2024-11-20'),
(2, 1, 'Claro! Podemos marcar uma reunião para conversarmos sobre o Carro Voador.', '2024-11-21'),
(1, 2, 'O projeto Tenis Abidas Air está ganhando bastante atenção no mercado, você viu?', '2024-11-22');

INSERT INTO PERFIL_USUARIO (FK_USUARIO_ID, BIOGRAFIA) VALUES
(1, 'Empreendedor de inovação tecnológica e automação.'),
(2, 'Especialista em tecnologia e investimentos.');

INSERT INTO FORMAS_PAGAMENTO (NOME) VALUES
('Cartão de Crédito'),
('Pix');

INSERT INTO PAGAMENTOS (FK_USUARIO_ID, FK_PROJETOS_COD, FK_FORMA_PAGAMENTO_ID, VALOR_PAGO, DATA_PAGAMENTO) VALUES
(1, 1, 1, 50000.00, '2024-11-22'),
(1, 2, 2, 100000.00, '2024-11-23'),
(2, 3, 3, 25000.00, '2024-11-24'),
(1, 4, 1, 75000.00, '2024-11-25'),
(2, 5, 2, 150000.00, '2024-11-26'),
(1, 6, 3, 20000.00, '2024-11-27');

INSERT INTO DADOS_CARTAO (FK_USUARIO_ID, NOME_TITULAR, NUMERO_CARTAO, VALIDADE) VALUES
(1, 'Sandro Curio', '4111111111111111', '12/2026'),
(2, 'Gordão do Investimento', '5555555555554444', '11/2028');