USE Logistica;
GO


INSERT INTO TableClientes(CodigoDoCliente, NomeDaEmpresa, NomeDoContato, CargoDoContato, Endereco, Cidade, Regiao, CEP, Pais, Telefone, Fax)
VALUES('DEPLE', 'Deep Purple', 'Ian Gillan', 'Representante Comercial', 'Osasco', 'Brasil');

INSERT INTO TableClientes(CodigoDoCliente, NomeDaEmpresa, NomeDoContato, CargoDoContato, Cidade, Pais)
VALUES('ACDC', 'ACDC', 'Angus McKinnon Young', 'Proprietário', 'São Paulo', 'Brasil');

INSERT INTO TableClientes(CodigoDoCliente, NomeDaEmpresa, NomeDoContato, CargoDoContato, Cidade, Pais)
VALUES('QUEENB', 'Queen', 'Freddie Mercury', 'Proprietário', 'Londres', 'Reino Unido')

/*
Inserindo os dados acima com uma query só

INSERT INTO TableClientes(CodigoDoCliente, NomeDaEmpresa, NomeDoContato, CargoDoContato, Endereco, Cidade, Regiao, CEP, Pais, Telefone, Fax)
VALUES('DEPLE', 'Deep Purple', 'Ian Gillan', 'Representante Comercial', 'Osasco', 'Brasil'),
	  ('ACDC', 'ACDC', 'Angus McKinnon Young', 'Proprietário', 'São Paulo', 'Brasil'),
	  ('QUEENB', 'Queen', 'Freddie Mercury', 'Proprietário', 'Londres', 'Reino Unido');
*/


/* Outra forma de inserir */
INSERT INTO TableClientes
						  (CodigoDoCliente
						  , NomeDaEmpresa
						  , NomeDoContato
						  , CargoDoContato
						  , Endereco
						  , Cidade
						  , Regiao
						  , CEP
						  , Pais
						  , Telefone
						  , Fax)
VALUES('WTNSK'
	   , 'United Artists Records'
	   , 'David Coverdale'
	   , 'Gerente de Marketing'
	   , 'Rua dos Artistas, 199'
	   , 'Londres'
	   , 'Westlake Clark'
	   , 'OH 45344'
	   , 'Reino Unido'
	   , '+44 843 538 0298'
	   , '+44 121 240 5844')


SELECT * FROM TableClientes
WHERE CodigoDoCliente = 'WTNSK'