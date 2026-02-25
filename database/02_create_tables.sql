CREATE TABLE paciente (
  id_paciente SERIAL PRIMARY KEY, 
  nome VARCHAR(100) NOT NULL, 
  data_nascimento DATE, 
  sexo VARCHAR(20),
  telefone VARCHAR(20), 
  email VARCHAR(100), 
  objetivo TEXT 
);

CREATE TABLE consulta (
  id_consulta SERIAL PRIMARY KEY, 
  id_paciente INTEGER NOT NULL,
  data_consulta DATE NOT NULL, 
  peso NUMERIC(5,2), 
  altura NUMERIC(4,2), 
  observacoes TEXT
);

CREATE TABLE plano_alimentar (
  id_plano SERIAL PRIMARY KEY, 
  id_paciente INTEGER NOT NULL, 
  data_inicio DATE, 
  data_fim DATE, 
  descricao_plano TEXT, 
  calorias_totais INTEGER
);