USE bdLojadeRoupas

UPDATE tbFabricante
SET nomeFabricante = 'Turma da malha'
WHERE codFabricante = 3


UPDATE tbProduto
SET precoProduto = 284.40
WHERE codProduto = 16

UPDATE tbProduto
SET precoProduto = 94.80
WHERE codProduto = 17

UPDATE tbProduto
SET precoProduto = 42.00
WHERE codProduto = 21

UPDATE tbProduto
SET estoqueProduto = 0
WHERE codProduto = 15

DELETE FROM tbVenda
WHERE codVenda =  2

--Acabei trocando a ordem das instru��es, sem querer kk.

DELETE FROM tbItensVenda
WHERE codVenda = 3

DELETE FROM tbFabricante
WHERE codFabricante = 1

-- N�o � possivel deletar uma tabela que est� vinculada com outras, uma vez vinculada, a rela��o permanece para sempre