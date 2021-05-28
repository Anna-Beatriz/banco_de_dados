USE Logistica;
GO

/* Mai�sculas */
SELECT NomeDoContato
	   , UPPER(NomeDoContato) AS NomeUpper
	   , NomeDaEmpresa
	   , UPPER(NomeDaEmpresa) 
FROM TblClientes

/* Min�sculas */
SELECT NomeDaEmpresa
	   , LOWER(NomeDaEmpresa) AS NomeLower
FROM TblClientes

/* Remove espa�os anteriores(esquerda) */
SELECT LTRIM(' Maria') AS NomeLtrim

/* Remove espa�os posteriores(direita) */
SELECT RTRIM('Maria ') + 'Braga' AS NomeRtrim

/* Extrai uma parte de caracteres a partir da esquerda */
SELECT NomeDaCategoria
	   , LEFT(NomeDaCategoria, 5) AS NomeLeft
FROM TblCategorias

/* Extrai uma parte de caracteres a partir da direita */
SELECT NomeDaCategoria
	   , RIGHT(NomeDaCategoria, 5) AS NomeRight
FROM TblCategorias

/* Sele��o ao contr�rio */
SELECT NomeDaEmpresa
	   , REVERSE(NomeDaEmpresa) AS NomeReverse
FROM TblClientes

/* N�mero de caracteres */
SELECT NomeDoProduto
	   , LEN(NomeDoProduto) AS NomeLen
FROM TblProdutos

/* Extrai dados de caracteres de um conjunto de textos */
SELECT SUBSTRING(Telefone, 1, 5) AS ColSubstring
FROM TblTransportadoras

/* Retorna a posi��o de um caractere em um texto */
SELECT CHARINDEX('-', Telefone) AS ColCharindex
FROM TblTransportadoras
