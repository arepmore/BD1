CREATE DATABASE bdRecursosHumanos

USE bdRecursosHumanos

CREATE TABLE tbDepto(
	idDepto INT PRIMARY KEY IDENTITY(1,1)
	, nomeDepto VARCHAR(30) NOT NULL
)

CREATE TABLE tbFuncionario(
	idFuncionario INT PRIMARY KEY IDENTITY(1,1)
	, nomeFuncionario VARCHAR(50) NOT NULL
	, cpfFuncionario CHAR(14) NOT NULL
	, rgFuncionario VARCHAR(25) NOT NULL
	, dtNasctoFuncionario SMALLDATETIME NOT NULL
	, salarioFuncionario SMALLMONEY NOT NULL
	, idDepto INT FOREIGN KEY REFERENCES tbDepto(idDepto)
)

CREATE TABLE tbDependente (
	idDependente INT PRIMARY KEY IDENTITY (1,1)
	, nomeDependente VARCHAR (50) NOT NULL
	, dtNasctoDependente SMALLDATETIME NOT NULL
	, idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (idFuncionario)
)

CREATE TABLE tbConjuge(
	idConjuge INT PRIMARY KEY IDENTITY (1,1)
	, nomeConjuge VARCHAR (50) NOT NULL 
	, idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (idFuncionario)
)

CREATE TABLE tbFoneFuncionario(
	idFoneFuncionario INT PRIMARY KEY IDENTITY (1,1)
	, numFoneFuncionario VARCHAR (20) NOT NULL
	, idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (idFuncionario)
)

CREATE TABLE tbProjeto(
	idProjeto INT PRIMARY KEY IDENTITY (1,1)
	, nomeProjeto VARCHAR (50) NOT NULL
	, cargaHoraria SMALLDATETIME NOT NULL 
)

CREATE TABLE tbFuncionarioProjeto(
	idFuncionarioProjeto INT PRIMARY KEY IDENTITY (1,1)
	,  idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (idFuncionario)
)
