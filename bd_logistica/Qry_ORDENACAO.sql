USE Logistica;
GO

/* Ordenando os dados */
SELECT * FROM TblClientes
ORDER BY CargoDoContato ASC;

/* Agrupando um conjunto de linhas */
SELECT NumeroDoPedido
	   , SUM(Quantidade) AS QtdPorPedido
FROM TblDetalhesDoPedido
GROUP BY NumeroDoPedido;

/* Especificando um critério de pesquisa para um grupo */
SELECT NumeroDoPedido
	   , SUM(Quantidade) AS QtdPorPedido
FROM TblDetalhesDoPedido
GROUP BY NumeroDoPedido
HAVING NumeroDoPedido BETWEEN 10200 AND 10260;

/* Conexões entre as tabelas, relacionando as informações entre elas */
SELECT TC.NomeDaEmpresa
	   , TC.NomeDoContato
	   , TC.Cidade
	   , TC.Regiao
FROM TblClientes AS TC

INNER JOIN TblPedidos AS TP
ON TC.CodigoDoCliente = TP.CodigoDoCliente

INNER JOIN TblDetalhesDoPedido AS TD
ON TP.NumeroDoPedido = TD.NumeroDoPedido

INNER JOIN TblProdutos AS TPROD
ON TD.CodigoDoProduto = TPROD.CodigoDoProduto

WHERE TC.Cidade = 'São Paulo' AND TPROD.NomeDoProduto LIKE 'Chai';

/* Pega todas as linhas da tabela esquerda e combina com as linhas da tabela direita */
SELECT TC.NomeDaEmpresa
	   , TC.NomeDoContato
	   , TP.NumeroDoPedido
FROM TblClientes AS TC

LEFT OUTER JOIN TblPedidos AS TP
ON TC.CodigoDoCliente = TP.CodigoDoCliente
ORDER BY TP.NumeroDoPedido;

/* Pega todas as linhas da tabela esquerda e combina com as linhas da tabela direita */
/* Exibindo somente clientes que não realizaram pedidos */
SELECT TC.NomeDaEmpresa
	   , TC.NomeDoContato
	   , TP.NumeroDoPedido
FROM TblClientes AS TC

LEFT OUTER JOIN TblPedidos AS TP
ON TC.CodigoDoCliente = TP.CodigoDoCliente
WHERE TP.NumeroDoPedido IS NULL;


SELECT NomeDoContato
	   , CargoDoContato
	   , Telefone
FROM TblClientes
WHERE Pais = 'Brasil'

UNION

SELECT NomeDoContato
	   , CargoDoContato
	   , Telefone
FROM TblClientes
WHERE Pais = 'EUA'

UNION

SELECT NomeDoContato
	   , CargoDoContato
	   , Telefone
FROM TblClientes
WHERE Pais = 'Alemanha'

ORDER BY CargoDoContato, Telefone