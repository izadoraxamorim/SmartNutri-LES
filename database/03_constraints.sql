ALTER TABLE consulta
ADD CONSTRAINT fk_consulta_paciente
FOREIGN KEY (id_paciente)
REFERENCES paciente(id_paciente)
ON DELETE CASCADE;

ALTER TABLE plano_alimentar
ADD CONSTRAINT fk_plano_paciente
FOREIGN KEY (id_paciente)
REFERENCES paciente(id_paciente)
ON DELETE CASCADE;

ALTER TABLE paciente
ADD CONSTRAINT chk_nnot_empty
CHECK (nome <> '');