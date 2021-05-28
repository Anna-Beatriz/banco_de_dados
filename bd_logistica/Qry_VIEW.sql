USE Logistica;
GO

/* Consulta rápida. Pode ser considerada uma tabela virtual ou uma consulta armazenada */
CREATE VIEW ExibeCategorias
AS
	SELECT * FROM TblCategorias;

/* Chamando a View */
SELECT * FROM ExibeCategorias