USE Logistica;
GO

SELECT NomeDaEmpresa
	   , NomeDoContato
	   , Endereco
	   , Pais
FROM TableClientes
WHERE Pais IN ('Brasil', 'Alemanha', 'Reino Unido');