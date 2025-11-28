-- Consulta Simples com WHERE e ORDER BY
-- Listar produtos com estoque baixo (menor que 60 unidades)
SELECT nome_produto, qtd_estoque, preco_venda 
FROM Produto 
WHERE qtd_estoque < 60 
ORDER BY qtd_estoque ASC;

-- Consulta com JOIN
-- Mostrar o nome do produto e o nome do seu fornecedor
SELECT p.nome_produto, f.razao_social 
FROM Produto p
INNER JOIN Fornecedor f ON p.id_fornecedor = f.id_fornecedor;

-- Consulta com JOIN e Filtro
-- Listar todas as vendas feitas pela funcionária 'Ana Souza'
SELECT v.id_venda, v.data_hora, v.valor_total_venda 
FROM Venda v
INNER JOIN Usuario u ON v.id_usuario = u.id_usuario
WHERE u.nome_completo = 'Ana Souza';

-- Consulta com Função de Agregação (SUM) e GROUP BY
-- Somar o total vendido por cada forma de pagamento
SELECT forma_pagamento, SUM(valor_total_venda) as total_arrecadado
FROM Venda
GROUP BY forma_pagamento;
