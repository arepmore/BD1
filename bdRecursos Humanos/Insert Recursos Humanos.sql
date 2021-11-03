USE bdRecursosHumanos

INSERT tbDepto(nomeDepto)
VALUES ('Comercial')
	, ('Diretoria')
	, ('Rh')
	, ('Tecnologia da Informação')
	, ('Vendas')

SELECT * FROM tbDepto

INSERT tbFuncionario(nomeFuncionario, cpfFuncionario, rgFuncionario, 
	dtNasctoFuncionario, salarioFuncionario, idDepto)
VALUES ('Ermenegildo de Souza', '111.111.111-11', '987654',
	'01/04/2000', 1567.80, 1)
	, ('Astrogildo de Souza', '222.222.222-22', '987965',
	'01/04/2000', 5409.10, 2)
	,('Juninho Gameplays', '333.333.333-33', '85402',
	'01/05/2000', 50.10, 5)
	, ('Conceiso Fonsequinha', '444.444.444-44', '98796565',
	'01/10/2000', 29.10, 4)
	, ('Marcelinho Figueredo', '555.555.555-55', '222231',
	'28/04/2000', 32150.10, 2)

SELECT * FROM tbFuncionario

INSERT tbDependente (nomeDependente, dtNasctoDependente, idFuncionario)
VALUES ('Juliazinha Marianinho' , '17/05/2005', 2)
		, ('Cirolis de Souza' , '17/06/2005', 4)
		, ('Vanessinha Camarguinho' , '20/05/2000', 1)
		, ('Dudinha de Campinhos' , '30/09/2005', 5)
		, ('Anninha Da Horinha' , '15/09/2005', 3)
		
SELECT * FROM tbDependente

INSERT tbConjuge (nomeConjuge, idFuncionario)
VALUES ('Astrogilda de	Souza' , 1)
		, ('Cirolis de Souza' ,  2)
		, ('Fulaninha Gamer', 3)
		, ('Conceição Fonsequinha' ,  4)
		, ('Landinha Dantinhas' ,  5)

SELECT * FROM tbConjuge

INSERT tbFoneFuncionario (numFoneFuncionario, idFuncionario)
VALUES ('11 99999-9999', 1)
		, ('11 98888-8888', 2)
		, ('11 97777-7777', 3)
		, ('11 94002-8922', 4)
		, ('11 90800-6666', 5)

SELECT * FROM tbFoneFuncionario

INSERT tbProjeto (nomeProjeto, cargaHoraria)
VALUES ('Prj. Ursinho Pooh', '2021-11-10 23:00:00')
		, ('Prj. Tinker Bell', '2021-09-29 08:00:00')
		, ('Prj. Mickey Mouse', '2021-10-01 48:00:00')
		, ('Prj. Minions', '2021-09-15 03:00:00')
		, ('Prj. Hora de Aventura', '2022-01-22 72:00:00')

SELECT * FROM tbProjeto

INSERT tbFuncionarioProjeto (idFuncionario, idProjeto)
VALUES (1, 3)
		, (2, 2)
		, (3, 5)
		, (4, 1)
		, (5, 4)

SELECT * FROM tbFuncionarioProjeto