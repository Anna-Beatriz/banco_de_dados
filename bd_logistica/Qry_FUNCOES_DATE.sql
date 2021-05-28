USE Logistica;
GO

/* Pegando data e hor�rio atual */
/* Padr�o: aaaa-mm-dd hh:mm */
SELECT GETDATE();

/* Pegando data e hor�rio atual com formata��o */
/* dd/mm/aaaa */
SELECT CONVERT(varchar, GETDATE(), 103);

/* Pegando apenas o dia */
SELECT DAY(GETDATE());

/* Pegando apenas o m�s */
SELECT MONTH(GETDATE());

/* Pegando apenas o ano */
SELECT YEAR(GETDATE());

/* Pegando parte da data dia, m�s ou ano */
SELECT DATEPART(DAY, GETDATE());

/* Adicionando 3 meses da data atual */
SELECT CONVERT(varchar, DATEADD(MONTH, 3, GETDATE()), 105);

/* Adicionando 3 meses da data atual */
SET DATEFORMAT ymd;
SELECT DATEDIFF(DAY, DataDoPedido, GETDATE())
FROM TblPedidos
WHERE DataDoPedido = '2011-04-18';

/* Pegando o dia da semana do dia 18-04-2011 */
SET DATEFORMAT ymd;
SELECT DATENAME(WEEKDAY, DataDoPedido)
FROM TblPedidos
WHERE DataDoPedido = '2011-04-18';