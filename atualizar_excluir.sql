-- UPDATE ---

-- 1. Aumentar o preço do Arroz em 10%
UPDATE Produto 
SET preco_venda = preco_venda * 1.10 
WHERE nome_produto = 'Arroz Branco 5kg';

-- 2. Corrigir o telefone do fornecedor "Geladão"
UPDATE Fornecedor 
SET telefone = '(11) 99999-8888' 
WHERE id_fornecedor = 1;

-- 3. Atualizar o estoque após uma contagem física (ajuste de quebra)
UPDATE Produto 
SET qtd_estoque = 48 
WHERE id_produto = 10; -- Ajustando estoque da Coca-Cola


-- DELETE ---

-- Atenção: Para deletar dados relacionados, precisamos deletar primeiro os filhos (Item_Venda) depois os pais (Venda/Produto).

-- 1. Excluir um item específico de uma venda (cancelamento de item)
DELETE FROM Item_Venda 
WHERE id_venda = 1002 AND id_produto = 10;

-- 2. Excluir uma venda completa (após excluir seus itens acima)
-- Como deletamos o único item da venda 1002 acima, agora podemos deletar a venda.
DELETE FROM Venda 
WHERE id_venda = 1002;

-- 3. Excluir um fornecedor que NÃO tem produtos cadastrados
-- (Vamos inserir um fornecedor teste primeiro só para poder deletar sem erro de chave estrangeira)
INSERT INTO Fornecedor (id_fornecedor, razao_social) VALUES (99, 'Fornecedor Temporario');
-- Agora deletamos:
DELETE FROM Fornecedor 
WHERE id_fornecedor = 99;
