USE Logistica;
GO

/* M�dia */
SELECT AVG(UnidadesPedidas) FROM TblProdutos

/* Valor m�ximo */
SELECT MAX(PrecoUnitario) FROM TblProdutos

/* Valor m�nimo */
SELECT MIN(PrecoUnitario) FROM TblProdutos

/* Soma */
SELECT SUM(UnidadesPedidas) FROM TblProdutos

/* N�mero de valores ou n�mero total de linhas */
SELECT COUNT(CodigoDoCliente) FROM TblClientes
WHERE Cidade = 'S�o Paulo'