/* Criando o banco de dados e as tabelas para gatilhos */
CREATE DATABASE EXTRIGGER

CREATE TABLE CAIXA
(
	DATAC DATETIME 
	, SALDO_INICIAL DECIMAL(10, 2)
	, SALDO_FINAL DECIMAL(10, 2)
);
GO

INSERT INTO CAIXA
VALUES (CONVERT(DATETIME, CONVERT(VARCHAR, GETDATE(), 103)), 100, 100);
GO

CREATE TABLE VENDAS
(
	DATAV DATETIME
	, CODIGO INT
	, VALOR DECIMAL(10, 2)
);
GO

/* Criando um gatilho */
USE EXTRIGGER;
GO

CREATE TRIGGER TGR_VENDAS
ON VENDAS
FOR INSERT 
AS

BEGIN
	DECLARE
	@VALOR DECIMAL(10, 2)
    , @DATA DATETIME
	SELECT @DATA = DATAV, @VALOR = VALOR FROM INSERTED

	UPDATE CAIXA SET SALDO_FINAL = SALDO_FINAL + @VALOR
	WHERE DATAC = @DATA
END
GO

/* Inserindo valores para usar o gatilho */
USE EXTRIGGER;
GO

INSERT INTO VENDAS
VALUES (CONVERT(DATETIME, CONVERT(VARCHAR, GETDATE(), 103)), 1, 10);

/* Verificando as atualizações */
SELECT * FROM VENDAS
SELECT * FROM CAIXA