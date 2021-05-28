USE Logistica;
GO

/* Criando a Stored Procedure */
CREATE PROCEDURE CadastraCategoria
	@CodigoDaCategoria int,
	@NomeDaCategoria varchar(30),
	@Descricao varchar(100)
AS
	INSERT INTO TblCategorias
	VALUES (@CodigoDaCategoria, @NomeDaCategoria, @Descricao);

/* Inserindo dados  na SP */
EXECUTE CadastraCategoria
	9, 'Legumes', 'Berinjela, Abobrinha e Cenoura';