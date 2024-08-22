#Tipo de Investidor "Anjo"
SELECT * FROM INVESTIDOR WHERE TIPO = "Anjo";

#Valores de projetos maiores que 700.000,00
SELECT * FROM PROJETOS WHERE VALOR_TOTAL >= 700000;

#Quantidade de Cliente "Pessoa"
SELECT COUNT(*) AS Quantidade_De_Clientes_Pessoa FROM CLIENTE WHERE TIPO = "Pessoa";

#Clientes do Estado "RJ"
SELECT * FROM CLIENTE WHERE UF = "RJ";

#Valores máximo e mínimo dos Projetos
SELECT MAX(VALOR_TOTAL) AS Maior_Valor, MIN(VALOR_TOTAL) AS Menor_Valor FROM PROJETOS;

#Média dos valores totais do projeto
SELECT AVG(VALOR_TOTAL) AS Média_Do_Valor_Total_Dos_Projetos FROM PROJETOS;

#Top 3 Mais caros
SELECT NOME AS Nome_Dos_Projetos, MAX(VALOR_TOTAL) AS MAIS_CAROS FROM PROJETOS GROUP BY NOME ORDER BY MAIS_CAROS DESC LIMIT 3;

#Média dos valores negociados
SELECT AVG(VALOR_NEGOCIADO) AS Media_Dos_Valores_Negociados FROM INVESTIDOR_PROJETO;

#Quantos projetos cada cliente possui
SELECT FK_CLIENTE_ID AS Cliente, COUNT(FK_PROJETOS_COD) AS Quantidade_de_Projetos FROM CLIENTE_PROJETO GROUP BY Cliente;

#Quantos clientes o investidor tem
SELECT FK_INVESTIDOR_ID AS Investidor, COUNT(FK_CLIENTE_ID) AS Clientes FROM INVESTIDOR_CLIENTE GROUP BY Investidor;
