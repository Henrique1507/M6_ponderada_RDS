BEGIN;

-- Inserção de dados na tabela Pacientes
INSERT INTO Pacientsz (id_paciente, nome, idade, endereco, telefone, tipo_sanguineo, historico_medico)
VALUES (1, 'João Silva', 35, 'Rua das Flores, 123', '(11) 98765-4321', 'AB+', 'Hipertensão, Diabetes'),
       (2, 'Maria Santos', 45, 'Av. Principal, 456', '(11) 99999-9999', 'O-', 'Asma'),
       (3, 'Carlos Oliveira', 28, 'Travessa das Árvores, 789', '(11) 77777-7777', 'A+', 'Nenhum');

-- Inserção de dados na tabela UnidadesDeSaude
INSERT INTO UntDeSaude (id_unidade, nome, endereco, telefone, tipo_unidade, capacidade_atendimento)
VALUES (1, 'Hospital Central', 'Av. da Saúde, 789', '(11) 88888-8888', 'Hospital', 200),
       (2, 'Clínica Médica ABC', 'Rua dos Médicos, 456', '(11) 66666-6666', 'Clínica', 100),
       (3, 'Centro de Atendimento Médico XYZ', 'Praça da Saúde, 123', '(11) 55555-5555', 'Centro Médico', 150);

-- Inserção de dados na tabela ProdutosMedicos
INSERT INTO ProdsMedicoss (id_produto, nome, descricao, tipo_produto, quantidade_estoque, fornecedor, preco_unitario)
VALUES (1, 'Paracetamol', 'Analgésico e antipirético', 'Medicamento', 1000, 'Farmácia A', 5.50),
       (2, 'Máscara Cirúrgica', 'Máscara de proteção facial', 'Equipamento', 500, 'Distribuidora B', 1.20),
       (3, 'Seringa Descartável', 'Seringa de uso único', 'Equipamento', 800, 'Fornecedor C', 0.80);

-- Inserção de dados na tabela Veiculos
INSERT INTO Veicul (id_veiculo, tipo_veiculo, placa, capacidade_carga, disponivel)
VALUES (1, 'Ambulância', 'ABC-1234', 500, TRUE),
       (2, 'Van Médica', 'XYZ-5678', 800, TRUE),
       (3, 'Carro de Apoio', 'DEF-9876', 300, FALSE);

-- Inserção de dados na tabela PedidosTransporte
INSERT INTO PedsTransporte (id_pedido, id_paciente, id_unidade_origem, id_unidade_destino, data_pedido, status_pedido)
VALUES (1, 1, 1, 2, '2024-02-15', 'Concluído'),
       (2, 2, 2, 1, '2024-02-20', 'Concluído'),
       (3, 3, 3, 1, '2024-02-25', 'Concluído');

-- Inserção de dados na tabela PedidosEntrega
INSERT INTO PedisEntrega (id_pedido, id_produto, id_unidade_destino, data_pedido, status_pedido)
VALUES (1, 1, 1, '2024-02-15', 'Concluído'),
       (2, 2, 2, '2024-02-20', 'Concluído'),
       (3, 3, 3, '2024-02-25', 'Concluído');

-- Inserção de dados na tabela RotasTransporte
INSERT INTO RotaTransp (id_rota, id_veiculo, id_pedido, data_rota, tempo_estimado, distancia_km)
VALUES (1, 2, 1, '2024-02-15', '10:30:00', 15.5),
       (2, 1, 2, '2024-02-20', '11:00:00', 20.2),
       (3, 3, 3, '2024-02-25', '12:00:00', 18.7);

COMMIT;
