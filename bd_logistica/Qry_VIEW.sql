USE Logistica;
GO

/* Consulta r�pida. Pode ser considerada uma tabela virtual ou uma consulta armazenada */
CREATE VIEW ExibeCategorias
AS
	SELECT * FROM TblCategorias;

/* Chamando a View */
SELECT * FROM ExibeCategorias