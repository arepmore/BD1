CREATE DATABASE bdLojadeRoupas

USE bdLojadeRoupas

CREATE TABLE tbFabricante(
	codFabricante INT PRIMARY KEY IDENTITY(1,1)
	, nomeFabricante VARCHAR(30) NOT NULL
)

CREATE TABLE tbFuncionario(
	codFuncionario INT PRIMARY KEY IDENTITY (1,1)
	, nomeFuncionario VARCHAR (30) NOT NULL
	, idadeFuncionario VARCHAR (3) NOT NULL
	, dataAdmissaoFuncionario SMALLDATETIME NOT NULL
	, salarioFuncionario SMALLMONEY NOT NULL 
)

CREATE TABLE tbProduto(
	codProduto INT PRIMARY KEY IDENTITY (1,1)
	, nomeProduto VARCHAR (30) NOT NULL
	, precoProduto SMALLMONEY NOT NULL
	, dataEntregaProduto SMALLDATETIME NOT NULL
	, estoqueProduto VARCHAR (100)
	, codFabricante INT FOREIGN KEY REFERENCES tbFabricante (codFabricante)
	, codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (codFuncionario)
)

CREATE TABLE tbCliente(
	codCliente INT PRIMARY KEY IDENTITY (1,1)
	, nomeCliente VARCHAR (40)
	, idadeCliente VARCHAR (3) NOT NULL
)

CREATE TABLE tbVendedor(
	codVendedor INT PRIMARY KEY IDENTITY (1,1)
	, nomeVendedor VARCHAR (40) NOT NULL
)

CREATE TABLE tbVenda (
	codVenda INT PRIMARY KEY IDENTITY (1,1)
	, dataVenda VARCHAR (10) NOT NULL
	, totalVenda SMALLMONEY NOT NULL
	, codCliente INT FOREIGN KEY REFERENCES tbCliente (codCliente)
	, codVendedor INT FOREIGN KEY REFERENCES tbVendedor (codVendedor)
)

CREATE TABLE tbItensVenda (
	codItensVenda INT PRIMARY KEY IDENTITY (1,1)
	, quantidadeItensVenda VARCHAR (35)
	, subTotalItensVenda SMALLMONEY NOT NULL
	, codVenda INT FOREIGN KEY REFERENCES tbVenda (codVenda)
	, codProduto INT FOREIGN KEY REFERENCES tbProduto (codProduto)

)

