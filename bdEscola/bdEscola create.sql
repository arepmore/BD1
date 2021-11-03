CREATE DATABASE bdEscola

USE bdEscola

CREATE TABLE tbCurso(
	codCurso INT PRIMARY KEY IDENTITY(1,1)
	, nomeCurso VARCHAR(50) NOT NULL
	, cargahorariaCurso VARCHAR (6) NOT NULL
	, valorCurso SMALLMONEY NOT NULL
)

CREATE TABLE tbTurma(
	codTurma INT PRIMARY KEY IDENTITY(1,1)
	, nomeTurma VARCHAR(30) NOT NULL
	, codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso)
	, horarioTurma SMALLDATETIME NOT NULL
)

CREATE TABLE tbAluno(
	codAluno INT PRIMARY KEY IDENTITY(1,1)
	, nomeAluno VARCHAR (50) NOT NULL
	, dataNascimentoAluno SMALLDATETIME NOT NULL
	, rgAluno VARCHAR(20) NOT NULL
	, naturalidadeAluno VARCHAR (30) NOT NULL
)

CREATE TABLE tbMatricula(
	codMatricula INT PRIMARY KEY IDENTITY(1,1)
	, dataMatricula SMALLDATETIME NOT NULL
	, codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno)
	, codTurma INT FOREIGN KEY REFERENCES tbTurma(codTurma)
)

