-- SELECTs
SELECT * FROM paciente;

SELECT * FROM paciente
WHERE nome ILIKE '%juliana%';

SELECT * FROM paciente
WHERE id_paciente = 6;

-- UPDATE
UPDATE paciente
SET telefone = '16-99418-5787'
WHERE id_paciente = 1;

UPDATE paciente
SET objetivo = 'Emagrecer'
WHERE id_paciente = 6;

-- INSERT consulta
INSERT INTO consulta (id_paciente, data_consulta, peso, altura, observacoes)
VALUES (6, '2026-02-25', 49.0, 1.60, 'Paciente deseja ganhar massa muscular, mas tem dificuldade de comer');

-- INSERT plano
INSERT INTO plano_alimentar (id_paciente, data_inicio, data_fim, descricao_plano, calorias_totais)
VALUES (6, '2026-02-25', '2026-04-25', 'Hipertrofia', 2100);

-- DELETE testes
DELETE FROM paciente WHERE id_paciente = 3;
DELETE FROM paciente WHERE id_paciente = 2;

SELECT * FROM consulta;
SELECT * FROM plano_alimentar;