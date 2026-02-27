-- Inserção de paciente
INSERT INTO paciente (nome, email, telefone, data_nascimento)
VALUES ('Paciente Teste', 'teste@email.com', '16999990000', '1990-01-01');

-- Inserção com nome NULL
INSERT INTO paciente (nome, email)
VALUES (NULL, 'erro@email.com');

-- Inserção com nome vazio
INSERT INTO paciente (nome, email)
VALUES ('', 'erro2@email.com');

-- Update
UPDATE paciente
SET objetivo = 'Teste Update'
WHERE id_paciente = 1;

-- Delete
DELETE FROM paciente
WHERE id_paciente = 1;

--Inserção de consulta
INSERT INTO consulta (id_paciente, data_consulta, peso, altura, observacoes)
VALUES (2, '2026-02-27', 70.5, 1.70, 'Consulta válida');

-- Teste de erro, inserir consulta sem paciente
INSERT INTO consulta (id_paciente, data_consulta)
VALUES (9999, '2026-02-27');

--Ver consultas
SELECT * FROM consulta WHERE id_paciente = 2;

--Deletar 
DELETE FROM paciente WHERE id_paciente = 2;

--Testar On Cascade
SELECT * FROM consulta WHERE id_paciente = 2;

--Inserção de plano alimentar
INSERT INTO plano_alimentar
(id_paciente, data_inicio, descricao_plano, calorias_totais)
VALUES (3, '2026-02-01', 'Plano Teste', 2000);

--Inserção de erro, plano sem paciente
INSERT INTO plano_alimentar
(id_paciente, data_inicio)
VALUES (9999, '2026-02-01');


--Buscar paciente por nome
SELECT * FROM paciente
WHERE nome ILIKE '%ana%';

-- Contagem total de pacientes
SELECT COUNT(*) FROM paciente;