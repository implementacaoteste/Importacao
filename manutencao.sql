USE master
GO
DROP DATABASE Manutencao
GO
CREATE DATABASE Manutencao
GO
USE Manutencao
GO

CREATE TABLE Produto
(
	ID INT PRIMARY KEY,
	TESTE VARCHAR(50)
)
GO

INSERT INTO Produto VALUES(1, 'Rapadura')
GO

INSERT INTO Produto VALUES(2147483645, 'Tripa de carneiro')
GO

CREATE PROC SP_InserirProduto
	@Descricao VARCHAR(50)
AS
	DECLARE @Id INT = (SELECT MAX(ID) + 1 FROM Produto)
	INSERT INTO Produto VALUES(@Id, @Descricao)
	SELECT*FROM Produto
GO
