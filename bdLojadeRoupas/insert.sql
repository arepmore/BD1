USE bdLojadeRoupas

INSERT tbFabricante (nomeFabricante)
VALUES ('Malwee')
	, ('Marisol')
	, ('Cia da Malha')

SELECT * FROM tbFabricante

INSERT tbFuncionario(nomeFuncionario, idadeFuncionario,dataAdmissaoFuncionario, salarioFuncionario)
VALUES ('Rafael Oliveira' , '23', '06/02/2019' , '1580,00')
	, ('Catarina Barceloz' , '25', '27/08/2018' , '1600,00')

SELECT * FROM tbFuncionario

INSERT tbCliente(nomeCliente, idadeCliente)
VALUES ('Josefa Dantas' , '71')
	, ('Carlos Magno' , '21')
	, ('Leonardo da Vinci' , '145')
	, (	'Maria Eduarda Dantas' , '16')
	, ('Anna Julia da Hora' , '19')

SELECT * FROM tbCliente


INSERT tbProduto (nomeProduto, precoProduto, dataEntregaProduto, estoqueProduto, codFabricante, codFuncionario)
VALUES ('Camiseta de malha feminina P', '15,00' , '25/09/2021', '10' , 3, 2)
	, ('Camiseta de malha feminina M' , '15,00' , '25/09/2021', '10' , 3, 2)
	, ('Camiseta de malha feminina G','15,00' , '25/09/2021', '10' , 3, 2 )
	, ('Kit camisetas Tigor tigre', '237,00' , '15/08/2021', '37' , 2, 2)
	, ('Blusa Lilica Collection Rosa ', '79,00' , '15/08/2021', '44' , 2, 2)
	, ('Jaqueta moletom piquê', '159,00' , '03/05/2021', '25' , 1, 1)
	, ('Blusão listrado tricô', '89,90' , '03/05/2021', '4' , 1, 1)
	, ('Blusa xadrez tricoline', '119,90' , '03/05/2021', '12' , 1, 1)

INSERT tbProduto (nomeProduto, precoProduto, dataEntregaProduto, estoqueProduto, codFabricante, codFuncionario)
VALUES ('Conjunto Barbie TAM 04', '15.00' , '15/08/2021', '11' , 2, 2)

SELECT * FROM tbProduto

INSERT tbVendedor(nomeVendedor)
VALUES ('João Santana' )
	, ('Raquel Torres' )

SELECT * FROM tbVendedor

INSERT tbVenda (dataVenda,totalVenda, codCliente, codVendedor)
VALUES ('27/09/2021', '60.00', 1, 1 )
	, ('13/08/2021', '160.00', 2, 1 )
	, ('07/04/2021', '519.00', 3, 2 )
	, ('28/09/2021', '100.00', 4, 2 )
	, ('01/17/2021', '85.00', 5, 2 )

SELECT * FROM tbVenda

INSERT tbItensVenda (quantidadeItensVenda, subTotalItensVenda, codProduto, codVenda)
VALUES ('1' , '237.00' , 16, 3)
		, ('1' , '119.00' , 19, 3)
		, ('1' , '159.00' , 18, 3)
		, ('3' , '15.00' , 13, 2)
		, ('2' , '45.00' , 21, 4)

SELECT * FROM tbItensVenda



