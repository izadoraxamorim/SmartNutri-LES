INSERT INTO paciente (nome, data_nascimento, sexo, telefone, email, objetivo)
VALUES 
('João Silva', '2000-01-01', 'MASCULINO', 'XX-XXXX-XXXX', 'joao.silva@gmail.com', 'Emagrecer'),
('Maria Oliveira', '1999-02-02', 'FEMININO', 'XX-XXXXX-XXXX', 'maria.oliveira@outlook.com', 'Ganhar massa magra'),
('Ana Souza', '1995-03-10', NULL, '16999990001', 'ana@email.com', NULL),
('Carlos Lima', '1988-07-22', NULL, '16999990002', 'carlos@email.com', NULL),
('Fernanda Alves', '2001-01-15', NULL, '16999990003', 'fernanda@email.com', NULL),
('Bruno Martins', '1992-11-02', NULL, '16999990004', 'bruno@email.com', NULL),
('Juliana Rocha', '1997-09-30', NULL, '16999990005', 'juliana@email.com', NULL);

INSERT INTO consulta (id_paciente, data_consulta, peso, altura, observacoes)
VALUES 
(3, '2026-02-27', 56.0, 1.74, 'Ganhar massa magra'), 
(7, '2025-12-05', 88.0, 1.80, 'Emagrecer'), 
(1, '2026-01-15', 55.9, 1.63, 'Perder gordura e ganhar massa muscular'), 
(7, '2025-02-05', 85.0, 1.80, 'Paciente emagreceu. Deixar em manutenção.');

INSERT INTO plano_alimentar 
(id_paciente, data_inicio, data_fim, descricao_plano, calorias_totais)
VALUES
(1, '2026-01-16', '2026-03-16', 'Plano hipocalórico com foco em perda de gordura', 1800),
(3, '2026-02-28', '2026-04-28', 'Plano hipercalórico para ganho de massa magra', 2300),
(5, '2025-12-01', '2026-02-01', 'Plano alimentar sem lactose', 2000),
(7, '2025-12-06', '2026-02-06', 'Plano de manutenção de peso pós-emagrecimento', 2200);