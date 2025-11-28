-- Povoando a tabela Fornecedor
INSERT INTO Fornecedor (id_fornecedor, razao_social, cnpj, telefone) VALUES 
(1, 'Distribuidora de Bebidas Geladão', '12.345.678/0001-90', '(11) 99999-0001'),
(2, 'Atacado de Alimentos Bom Gosto', '98.765.432/0001-10', '(11) 98888-0002'),
(3, 'Padaria e Confeitaria Central', '11.222.333/0001-44', '(11) 97777-0003');

-- Povoando a tabela Usuario
INSERT INTO Usuario (id_usuario, nome_completo, login, senha, perfil) VALUES 
(1, 'Carlos Silva', 'carlos.gerente', 'senha123', 'Gerente'),
(2, 'Ana Souza', 'ana.caixa', 'caixa2024', 'Caixa'),
(3, 'Roberto Dias', 'beto.repositor', 'estoque99', 'Repositor');

-- Povoando a tabela Produto
INSERT INTO Produto (id_produto, nome_produto, preco_venda, qtd_estoque, id_fornecedor) VALUES 
(10, 'Refrigerante Coca-Cola 2L', 12.50, 50, 1),
(20, 'Arroz Branco 5kg', 25.90, 100, 2),
(30, 'Feijão Carioca 1kg', 8.50, 80, 2),
(40, 'Pão de Forma Tradicional', 9.00, 20, 3);

-- Povoando a tabela Venda
INSERT INTO Venda (id_venda, data_hora, valor_total_venda, forma_pagamento, id_usuario) VALUES 
(1001, '2024-11-20 10:30:00', 38.40, 'Dinheiro', 2),
(1002, '2024-11-20 11:15:00', 12.50, 'Débito', 2),
(1003, '2024-11-21 09:00:00', 51.80, 'Crédito', 2);

-- Povoando a tabela Item_Venda 
INSERT INTO Item_Venda (id_venda, id_produto, quantidade, valor_unitario_aplicado) VALUES 
(1001, 10, 1, 12.50), -- Venda 1001: 1 Coca-Cola
(1001, 20, 1, 25.90), -- Venda 1001: 1 Arroz
(1002, 10, 1, 12.50), -- Venda 1002: 1 Coca-Cola
(1003, 20, 2, 25.90); -- Venda 1003: 2 Sacos de Arroz
