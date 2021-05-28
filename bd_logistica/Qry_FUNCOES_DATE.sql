USE Logistica;
GO

/* Pegando data e horário atual */
/* Padrão: aaaa-mm-dd hh:mm */
SELECT GETDATE();

/* Pegando data e horário atual com formatação */
/* dd/mm/aaaa */
SELECT CONVERT(varchar, GETDATE(), 103);

/* Pegando apenas o dia */
SELECT DAY(GETDATE());

/* Pegando apenas o mês */
SELECT MONTH(GETDATE());

/* Pegando apenas o ano */
SELECT YEAR(GETDATE());

/* Pegando parte da data dia, mês ou ano */
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