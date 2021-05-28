USE Logistica;
GO

/* Média */
SELECT AVG(UnidadesPedidas) FROM TblProdutos

/* Valor máximo */
SELECT MAX(PrecoUnitario) FROM TblProdutos

/* Valor mínimo */
SELECT MIN(PrecoUnitario) FROM TblProdutos

/* Soma */
SELECT SUM(UnidadesPedidas) FROM TblProdutos

/* Número de valores ou número total de linhas */
SELECT COUNT(CodigoDoCliente) FROM TblClientes
WHERE Cidade = 'São Paulo'