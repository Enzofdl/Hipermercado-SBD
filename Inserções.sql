-- Inserção de dados na tabela Sessão
INSERT INTO SESSÃO (CÓDIGO, NOME) VALUES
(1, 'Sessão A'),
(2, 'Sessão B'),
(3, 'Sessão C'),
(4, 'Sessão D'),
(5, 'Sessão E'),
(6, 'Sessão F'),
(7, 'Sessão G'),
(8, 'Sessão H'),
(9, 'Sessão I'),
(10, 'Sessão J');
 
-- Inserção de dados na tabela Pessoa
INSERT INTO PESSOA (CPF, ENDEREÇO, NOME, TELEFONE, EMAIL, DTA_NASC) VALUES
('12345668901', 'Rua A, 123', 'João Silva', '11987654321', 'joao@example.com', '1990-01-01'),
('23456689012', 'Rua B, 456', 'Maria Oliveira', '11976543210', 'maria@example.com', '1985-02-02'),
('34566890123', 'Rua C, 789', 'Pedro Santos', '11965432109', 'pedro@example.com', '1980-03-03'),
('45668901234', 'Rua D, 101', 'Ana Costa', '11954321098', 'ana@example.com', '1995-04-04'),
('56689012345', 'Rua E, 202', 'Carlos Pereira', '11943210987', 'carlos@example.com', '1988-05-05'),
('66890123456', 'Rua F, 303', 'Fernanda Lima', '11932109876', 'fernanda@example.com', '1992-06-06'),
('68901234566', 'Rua G, 404', 'Rafael Martins', '11921098765', 'rafael@example.com', '1993-07-07'),
('89012345668', 'Rua H, 505', 'Juliana Almeida', '11910987654', 'juliana@example.com', '1987-08-08'),
('90123456689', 'Rua I, 606', 'Fernando Rocha', '11909876543', 'fernando@example.com', '1983-09-09'),
('01234566890', 'Rua J, 707', 'Tatiane Barros', '11998765432', 'tatiane@example.com', '1991-10-10'),
('12345678901', 'Rua A, 123', 'Ana Silva', '11987654321', 'ana@example.com', '1990-01-15'), 
('23456789012', 'Rua B, 234', 'Bruno Santos', '11987654322', 'bruno@example.com', '1985-05-20'), 
('34567890123', 'Rua C, 345', 'Carlos Oliveira', '11987654323', 'carlos@example.com', '1992-07-30'), 
('45678901234', 'Rua D, 456', 'Daniela Costa', '11987654324', 'daniela@example.com', '1988-09-12'), 
('56789012345', 'Rua E, 567', 'Eduardo Lima', '11987654325', 'eduardo@example.com', '1993-11-05'), 
('67890123456', 'Rua F, 678', 'Fernanda Rocha', '11987654326', 'fernanda@example.com', '1991-04-18'), 
('78901234567', 'Rua G, 789', 'Gabriel Almeida', '11987654327', 'gabriel@example.com', '1986-03-25'), 
('89012345678', 'Rua H, 890', 'Helena Martins', '11987654328', 'helena@example.com', '1995-06-10'), 
('90123456789', 'Rua I, 901', 'Igor Fernandes', '11987654329', 'igor@example.com', '1989-12-02'), 
('01234567890', 'Rua J, 012', 'Juliana Pereira', '11987654330', 'juliana@example.com', '1994-08-14'), 
('53456789015', 'Rua K, 123', 'Karina Sousa', '11987654331', 'karina@example.com', '1987-01-30'), 
('34567890154', 'Rua L, 234', 'Lucas Teixeira', '11987654332', 'lucas@example.com', '1990-02-22'), 
('45678901535', 'Rua M, 345', 'Mariana Lima', '11987654333', 'mariana@example.com', '1985-07-09'), 
('56789015346', 'Rua N, 456', 'Nicolas Carvalho', '11987654334', 'nicolas@example.com', '1992-10-11'), 
('67890153457', 'Rua O, 567', 'Olivia Gomes', '11987654335', 'olivia@example.com', '1986-11-07'), 
('78901534568', 'Rua P, 678', 'Pedro Rocha', '11987654336', 'pedro@example.com', '1989-09-19'), 
('89015345679', 'Rua Q, 789', 'Quiteria Santos', '11987654337', 'quiteria@example.com', '1994-03-30'), 
('90153456780', 'Rua R, 890', 'Rafael Dias', '11987654338', 'rafael@example.com', '1991-06-15'), 
('01534567891', 'Rua S, 901', 'Sofia Andrade', '11987654339', 'sofia@example.com', '1988-02-12'), 
('15345678902', 'Rua T, 012', 'Thiago Mendes', '11987654340', 'thiago@example.com', '1993-05-05'), 
('53456789013', 'Rua U, 123', 'Ulisses Ferreira', '11987654341', 'ulisses@example.com', '1990-04-23'), 
('34567890155', 'Rua V, 234', 'Vanessa Oliveira', '11987654342', 'vanessa@example.com', '1987-07-15'), 
('45678901536', 'Rua W, 345', 'William Pinto', '11987654343', 'william@example.com', '1992-01-10'), 
('56789015347', 'Rua X, 456', 'Xuxa Martins', '11987654344', 'xuxa@example.com', '1986-11-30'), 
('67890153458', 'Rua Y, 567', 'Yasmin Almeida', '11987654345', 'yasmin@example.com', '1994-03-01'),
 
-- Inserção de dados na tabela Promoções
INSERT INTO PROMOÇÕES (Código, Data_Início, Data_Fim, Nome, Descrição) VALUES
(1, '2024-01-01', '2024-01-31', 'Promoção de Verão', 'Descontos de até 50%'),
(2, '2024-02-01', '2024-02-28', 'Promoção de Carnaval', 'Descontos em fantasias'),
(3, '2024-03-01', '2024-03-31', 'Promoção de Páscoa', 'Descontos em chocolates'),
(4, '2024-04-01', '2024-04-30', 'Promoção de Dia das Mães', 'Descontos em presentes'),
(5, '2024-05-01', '2024-05-31', 'Promoção de Dia dos Namorados', 'Descontos em jantares'),
(6, '2024-06-01', '2024-06-30', 'Promoção de Festa Junina', 'Descontos em comidas típicas'),
(7, '2024-07-01', '2024-07-31', 'Promoção de Inverno', 'Descontos em roupas de frio'),
(8, '2024-08-01', '2024-08-31', 'Promoção de Volta às Aulas', 'Descontos em material escolar'),
(9, '2024-09-01', '2024-09-30', 'Promoção de Primavera', 'Descontos em jardinagem'),
(10, '2024-10-01', '2024-10-31', 'Promoção de Halloween', 'Descontos em fantasias');
 
-- Inserção de dados na tabela Classe
INSERT INTO CLASSE (Valor_Min, Nome) VALUES
(0, 'Prata'),
(1000, 'Ouro'),
(5000, 'Diamante');
 
-- Inserção de dados na tabela Histórico_Compras
INSERT INTO HISTÓRICO_COMPRAS (NroCupom, CPF, Devolução, MotivoDevolução) VALUES
(1, '12345668901', FALSE, NULL),
(2, '23456689012', TRUE, 'Produto com defeito'),
(3, '34566890123', FALSE, NULL),
(4, '45668901234', TRUE, 'Desistência'),
(5, '56689012345', FALSE, NULL),
(6, '66890123456', TRUE, 'Produto diferente do pedido'),
(7, '68901234566', FALSE, NULL),
(8, '89012345668', FALSE, NULL),
(9, '90123456689', TRUE, 'Problema na entrega'),
(10, '01234566890', FALSE, NULL);
 
-- Inserção de dados na tabela Relatório_Vendas
INSERT INTO RELATÓRIO_VENDAS (CPFCliente, NroRelatorio, Data, Valor, FormaPagamento) VALUES
('12345668901', 1, '2024-01-05', 150.00, 'Cartão de Crédito'),
('23456689012', 2, '2024-01-07', 200.00, 'Dinheiro'),
('34566890123', 3, '2024-01-10', 250.00, 'Cartão de Débito'),
('45668901234', 4, '2024-01-12', 300.00, 'Cartão de Crédito'),
('56689012345', 5, '2024-01-15', 400.00, 'Transferência'),
('66890123456', 6, '2024-01-18', 350.00, 'Pix'),
('68901234566', 7, '2024-01-20', 180.00, 'Cartão de Crédito'),
('89012345668', 8, '2024-01-22', 220.00, 'Dinheiro'),
('90123456689', 9, '2024-01-25', 300.00, 'Cartão de Débito'),
('01234566890', 10, '2024-01-30', 120.00, 'Transferência');
 
-- Inserção de dados na tabela Categoria
INSERT INTO CATEGORIA (Código_de_Identificação, Descrição, Código) VALUES
(1, 'Alimentos', 1),
(2, 'Bebidas', 2),
(3, 'Roupas', 1),
(4, 'Eletrodomésticos', 2),
(5, 'Móveis', 3),
(6, 'Produtos de Limpeza', 1),
(7, 'Eletrônicos', 2),
(8, 'Cosméticos', 3),
(9, 'Ferramentas', 1),
(10, 'Brinquedos', 2);
 
-- Inserção de dados na tabela Produtos
INSERT INTO PRODUTOS (Número_de_cadastro, Descrição, Nome_do_fabricante, Unidade_de_venda, Foto, Preço_de_venda, Média_de_vendas_por_mês, Quantidade_em_estoque, Código_de_Identificação) VALUES
(1, 'Arroz', 'Fábrica A', 'kg', 'foto_arroz.jpg', 20.00, 100, 50, 1),
(2, 'Refrigerante', 'Fábrica B', 'litro', 'foto_refrigerante.jpg', 5.00, 150, 200, 2),
(3, 'Camisa', 'Fábrica C', 'unidade', 'foto_camisa.jpg', 50.00, 80, 30, 1),
(4, 'Geladeira', 'Fábrica D', 'unidade', 'foto_geladeira.jpg', 1200.00, 20, 10, 2),
(5, 'Sofá', 'Fábrica E', 'unidade', 'foto_sofa.jpg', 800.00, 15, 5, 3),
(6, 'Detergente', 'Fábrica F', 'litro', 'foto_detergente.jpg', 3.00, 200, 100, 1),
(7, 'Televisão', 'Fábrica G', 'unidade', 'foto_televisao.jpg', 1500.00, 25, 8, 2),
(8, 'Perfume', 'Fábrica H', 'unidade', 'foto_perfume.jpg', 100.00, 60, 25, 3),
(9, 'Martelo', 'Fábrica I', 'unidade', 'foto_martelo.jpg', 25.00, 40, 15, 1),
(10, 'Brinquedo', 'Fábrica J', 'unidade', 'foto_brinquedo.jpg', 30.00, 50, 20, 2);
 
-- Inserção de dados na tabela Cliente
INSERT INTO CLIENTE (Profissao, Valor_gasto, CPF, NroCupom) VALUES
('Engenheiro', 2000.00, '12345668901', 1),
('Médico', 3000.00, '23456689012', 2),
('Professor', 1500.00, '34566890123', 3),
('Designer', 1800.00, '45668901234', 4),
('Advogado', 2500.00, '56689012345', 5),
('Veterinário', 2200.00, '66890123456', 6),
('Arquiteto', 2800.00, '68901234566', 7),
('Enfermeira', 2400.00, '89012345668', 8),
('Psicólogo', 2000.00, '90123456689', 9),
('Técnico', 1700.00, '01234566890', 10);
 
-- Inserção de dados na tabela Especial
INSERT INTO ESPECIAL (CPF, Nome) VALUES
('12345668901', 'Prata'),
('23456689012', 'Ouro'),
('34566890123', 'Diamante');
 
-- Inserção de dados na tabela Fidelidade
INSERT INTO FIDELIDADE (QtdeCompras, NívelFidelidade, CPF) VALUES
(5, 1, '12345678901'),
(10, 2, '23456789012'),
(15, 3, '34567890123'),
(8, 1, '45678901234'),
(12, 2, '56789012345'),
(7, 1, '67890123456'),
(11, 2, '78901234567'),
(6, 1, '89012345678'),
(9, 2, '90123456789'),
(4, 1, '01234567890');
 
-- Inserção de dados na tabela Fornecimento
INSERT INTO FORNECIMENTO (Preço, Número_de_cadastro) VALUES
(100.00, 1),
(50.00, 2),
(300.00, 3),
(150.00, 4),
(80.00, 5),
(90.00, 6),
(200.00, 7),
(120.00, 8),
(110.00, 9),
(70.00, 10);
 
-- Inserção de dados na tabela Produto_Promoção
INSERT INTO PRODUTO_PROMOÇÃO (Desconto_Normal, Desconto_Especial, Código, Número_de_cadastro) VALUES
(10, 15, 1, 1),
(5, 10, 2, 2),
(20, 25, 3, 3),
(30, 35, 4, 4),
(15, 20, 5, 5),
(10, 10, 6, 6),
(5, 5, 7, 7),
(25, 30, 8, 8),
(40, 45, 9, 9),
(35, 40, 10, 10);
 
-- Inserção de dados na tabela Fornecedor
INSERT INTO FORNECEDOR (Número_de_cadastro, Denominação_social, CEP, Estado, Cidade, Bairro, CNPJ, E_mail, Pessoa_de_Contato, Prazo_de_entrega, Condições_de_pagamento, Descontos, Número) VALUES
(1, 'Fornecedor A', '12345-678', 'SP', 'São Paulo', 'Centro', '12345678000195', 'fornecedorA@example.com', 'Carlos Silva', 5, 'À vista', 10, 1),
(2, 'Fornecedor B', '22345-678', 'RJ', 'Rio de Janeiro', 'Zona Sul', '23456789000196', 'fornecedorB@example.com', 'Maria Oliveira', 7, '30 dias', 5, 2),
(3, 'Fornecedor C', '32345-678', 'MG', 'Belo Horizonte', 'Centro', '34567890000197', 'fornecedorC@example.com', 'José Santos', 10, '60 dias', 7, 3),
(4, 'Fornecedor D', '42345-678', 'RS', 'Porto Alegre', 'Centro', '45678901000198', 'fornecedorD@example.com', 'Ana Costa', 3, '30 dias', 15, 4),
(5, 'Fornecedor E', '52345-678', 'PR', 'Curitiba', 'Centro', '56789012000199', 'fornecedorE@example.com', 'Rafael Lima', 4, '45 dias', 12, 5),
(6, 'Fornecedor F', '62345-678', 'BA', 'Salvador', 'Centro', '67890123000100', 'fornecedorF@example.com', 'Fernanda Almeida', 6, '30 dias', 8, 6),
(7, 'Fornecedor G', '72345-678', 'SP', 'São Paulo', 'Zona Leste', '78901234000101', 'fornecedorG@example.com', 'Roberto Ferreira', 2, '15 dias', 20, 7),
(8, 'Fornecedor H', '82345-678', 'RJ', 'Rio de Janeiro', 'Zona Norte', '89012345000102', 'fornecedorH@example.com', 'Juliana Barros', 8, '30 dias', 11, 8),
(9, 'Fornecedor I', '92345-678', 'MG', 'Belo Horizonte', 'Zona Sul', '90123456000103', 'fornecedorI@example.com', 'Lucas Martins', 1, '7 dias', 9, 9),
(10, 'Fornecedor J', '10345-678', 'RS', 'Porto Alegre', 'Zona Sul', '01234567000104', 'fornecedorJ@example.com', 'Tatiane Rocha', 5, '20 dias', 6, 10);
 
-- Inserção de dados na tabela Produtos_Ano_Anterior
INSERT INTO PRODUTOS_ANO_ANTERIOR (Valor, NumRelatorio, CNPJ) VALUES
(200.00, 1, '12345678000195'),
(150.00, 2, '23456789000196'),
(250.00, 3, '34567890000197'),
(300.00, 4, '45678901000198'),
(180.00, 5, '56789012000199'),
(220.00, 6, '67890123000100'),
(120.00, 7, '78901234000101'),
(350.00, 8, '89012345000102'),
(400.00, 9, '90123456000103'),
(280.00, 10, '01234567000104');
 
-- Inserção de dados na tabela Funcionário
INSERT INTO FUNCIONÁRIO (NIS, Salario, HoraExtra, JornadaTrab, FormaçãoEscolar, EstadoCivil, CPF, CPF_Gerente) VALUES
(1001, 2500.00, 200.00, 40, 'Ensino Superior', 'Solteiro', '12345678901', NULL),
(1002, 2800.00, 250.00, 40, 'Ensino Superior', 'Casado', '23456789012', NULL),
(1003, 2300.00, 150.00, 40, 'Ensino Médio', 'Solteiro', '34567890123', NULL),
(1004, 3000.00, 300.00, 40, 'Pós-Graduação', 'Casado', '45678901234', NULL),
(1005, 3200.00, 100.00, 40, 'Ensino Superior', 'Divorciado', '56789012345', NULL),
(1006, 2900.00, 250.00, 40, 'Ensino Médio', 'Solteiro', '67890123456', '12345678901'),
(1007, 2700.00, 200.00, 40, 'Ensino Técnico', 'Casado', '78901234567', '12345678901'),
(1008, 3100.00, 150.00, 40, 'Ensino Superior', 'Solteiro', '89012345678', '12345678901'),
(1009, 2400.00, 100.00, 40, 'Ensino Médio', 'Casado', '90123456789', '12345678901'),
(1010, 2600.00, 200.00, 40, 'Ensino Superior', 'Divorciado', '01234567890', '23456789012'),
(1011, 3000.00, 300.00, 40, 'Ensino Técnico', 'Casado', '53456789015', '23456789012'),
(1012, 2200.00, 150.00, 40, 'Ensino Médio', 'Solteiro', '34567890153', '23456789012'),
(1013, 2800.00, 250.00, 40, 'Ensino Superior', 'Divorciado', '45678901534', '23456789012'),
(1014, 3300.00, 100.00, 40, 'Pós-Graduação', 'Casado', '56789015345', '34567890123'),
(1015, 3100.00, 200.00, 40, 'Ensino Técnico', 'Solteiro', '67890153456', '34567890123'),
(1016, 3400.00, 250.00, 40, 'Ensino Superior', 'Solteiro', '78901534567', '34567890123'),
(1017, 2600.00, 150.00, 40, 'Ensino Médio', 'Casado', '89015345678', '34567890123'),
(1018, 2700.00, 200.00, 40, 'Ensino Técnico', 'Divorciado', '90153456789', '45678901234'),
(1019, 3100.00, 300.00, 40, 'Pós-Graduação', 'Solteiro', '01534567890', '45678901234'),
(1020, 2900.00, 100.00, 40, 'Ensino Superior', 'Casado', '15345678901', '45678901234'),
(1021, 3000.00, 200.00, 40, 'Ensino Médio', 'Divorciado', '53456789013', '45678901234'),
(1022, 3200.00, 150.00, 40, 'Ensino Superior', 'Casado', '53456789014', '56789012345'),
(1023, 3300.00, 250.00, 40, 'Ensino Técnico', 'Solteiro', '34567890154', '56789012345'),
(1024, 3400.00, 300.00, 40, 'Pós-Graduação', 'Divorciado', '45678901534', '56789012345'),
(1025, 2800.00, 200.00, 40, 'Ensino Médio', 'Casado', '56789015345', '56789012345');
 
-- Inserção de dados na tabela Pedido
INSERT INTO PEDIDO (Número, Data_emissão, Data_prevista, Data_entrega, Devolução, Valor, Pagamento, Valor_com_desconto, CPF) VALUES
(1, '2024-01-01', '2024-01-05', '2024-01-03', FALSE, 150.00, 'Cartão de Crédito', 135.00, '12345678901'),
(2, '2024-01-02', '2024-01-06', '2024-01-05', TRUE, 200.00, 'Dinheiro', 190.00, '23456789012'),
(3, '2024-01-03', '2024-01-07', '2024-01-06', FALSE, 250.00, 'Cartão de Débito', 225.00, '34567890123'),
(4, '2024-01-04', '2024-01-08', '2024-01-07', TRUE, 300.00, 'Cartão de Crédito', 270.00, '45678901234'),
(5, '2024-01-05', '2024-01-09', '2024-01-08', FALSE, 400.00, 'Transferência', 360.00, '56789012345'),
(6, '2024-01-06', '2024-01-10', '2024-01-09', TRUE, 350.00, 'Pix', 315.00, '67890123456'),
(7, '2024-01-07', '2024-01-11', '2024-01-10', FALSE, 180.00, 'Cartão de Crédito', 162.00, '78901234567'),
(8, '2024-01-08', '2024-01-12', '2024-01-11', FALSE, 220.00, 'Dinheiro', 198.00, '89012345678'),
(9, '2024-01-09', '2024-01-13', '2024-01-12', TRUE, 300.00, 'Cartão de Débito', 270.00, '90123456789'),
(10, '2024-01-10', '2024-01-14', '2024-01-13', FALSE, 120.00, 'Transferência', 108.00, '01234567890');
 
-- Inserção de dados na tabela Pedido_Produtos
INSERT INTO PEDIDO_PRODUTOS (Quantidade, Número_de_cadastro, Número) VALUES
(2, 1001, 5001),
(5, 1002, 5002),
(1, 1003, 5003),
(3, 1004, 5004),
(4, 1005, 5005),
(6, 1006, 5006),
(7, 1007, 5007),
(2, 1008, 5008),
(1, 1009, 5009),
(3, 1010, 5010);
 
-- Inserção de dados na tabela Produto_Compra
INSERT INTO PRODUTO_COMPRA (Quantidade, Desconto, Número_de_cadastro, Cupomcarrinho) VALUES
(2, 10, 1001, 2001),
(4, 20, 1002, 2002),
(1, 5, 1003, 2003),
(3, 15, 1004, 2004),
(5, 25, 1005, 2005),
(6, 10, 1006, 2006),
(2, 0, 1007, 2007),
(4, 30, 1008, 2008),
(1, 5, 1009, 2009),
(3, 10, 1010, 2010);
 
-- Inserção de dados na tabela Compra
INSERT INTO COMPRA (Cupomcarrinho, data, horario, valortotal, valordesconto, formapagamento, CPF_atendente, NroRelatorio, NroHist) VALUES
(2001, '2024-10-01', '10:00', 200.00, 10.00, 'Cartão', 12345678901, 1001, 5001),
(2002, '2024-10-02', '11:00', 300.00, 20.00, 'Dinheiro', 34567890123, 1002, 5002),
(2003, '2024-10-03', '12:00', 150.00, 5.00, 'Cartão', 56789012345, 1003, 5003),
(2004, '2024-10-04', '13:00', 400.00, 15.00, 'Pix', 78901234567, 1004, 5004),
(2005, '2024-10-05', '14:00', 500.00, 25.00, 'Dinheiro', 89012345678, 1005, 5005),
(2006, '2024-10-06', '15:00', 600.00, 10.00, 'Cartão', 12345678901, 1006, 5006),
(2007, '2024-10-07', '16:00', 250.00, 0.00, 'Cartão', 23456789012, 1007, 5007),
(2008, '2024-10-08', '17:00', 350.00, 30.00, 'Dinheiro', 34567890123, 1008, 5008),
(2009, '2024-10-09', '18:00', 200.00, 5.00, 'Pix', 45678901234, 1009, 5009),
(2010, '2024-10-10', '19:00', 450.00, 10.00, 'Cartão', 56789012345, 1010, 5010);
 
-- Inserção de dados na tabela Lista_de_Produtos
INSERT INTO LISTA_DE_PRODUTOS (Número_de_cadastro, NumRelatorio, CNPJ) VALUES
(1001, 10001, 12345678000195),
(1002, 10002, 12345678000195),
(1003, 10003, 12345678000195),
(1004, 10004, 12345678000195),
(1005, 10005, 12345678000195),
(1006, 10006, 12345678000195),
(1007, 10007, 12345678000195),
(1008, 10008, 12345678000195),
(1009, 10009, 12345678000195),
(1010, 10010, 12345678000195);

-- Inserção de dados na tabela Fornecedor_Fones
INSERT INTO FORNECEDOR_FONES (Fones, CNPJ) VALUES
(11987654321, 12345678000195),
(11987654322, 12345678000195),
(11987654323, 12345678000195),
(11987654324, 12345678000195),
(11987654325, 12345678000195),
(11987654326, 12345678000195),
(11987654327, 12345678000195),
(11987654328, 12345678000195),
(11987654329, 12345678000195),
(11987654330, 12345678000195);
 
INSERT INTO GERENTE (CPF, DATA_INGRESSO, FORMAÇÃO_BÁSICA) VALUES
('12345678901', ‘2022-02-20’, ‘Curso básico gerência completo’),
('23456789012', ‘2019-07-05’, ‘Curso básico gerência completo’),
('34567890123', ‘2009-10-12’, ‘Curso básico gerência completo’),
('45678901234', ‘2008-01-05’, ‘Curso básico gerência completo’),
('56789012345', ‘2005-04-04’, ‘Curso básico gerência completo’);
 
INSERT INTO FAXINEIRO (CPF) VALUES
('67890123456'),
('78901234567'),
('89012345678'),
('90123456789');
 
INSERT INTO EMPACOTADOR (CPF) VALUES
('01234567890'),
('23456789012'),
('34567890123'),
('45678901234');
 
INSERT INTO REPOSITOR (CPF) VALUES
('56789012345'),
('67890123456'),
('78901234567'),
('89012345678’);
 
INSERT INTO ATENDENTE (CPF) VALUES
('90123456789'),
('01234567890'),
('12345678901'),
('23456789013');
 
INSERT INTO OUTROS (CPF) VALUES
('23456789014'),
('34567890124'),
('45678901234'),
('56789012345');
