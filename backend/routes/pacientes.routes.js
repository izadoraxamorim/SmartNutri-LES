const express = require('express');
const router = express.Router();
const pool = require('../database'); 

// LISTAR TODOS OS PACIENTES
router.get('/', async (req, res) => {
  try {
    const result = await pool.query(
      'SELECT * FROM paciente ORDER BY id_paciente'
    );
    res.json(result.rows);
  } catch (error) {
    console.error('ERRO REAL:', error);
    res.status(500).json({ erro: 'Erro ao buscar pacientes' });
  }
});

module.exports = router;

//CRIAR NOVO PACIENTE
router.post('/', async (req, res) => {
  try {
    const { nome, data_nascimento, sexo, telefone, email, objetivo } = req.body;

    const result = await pool.query(
      `INSERT INTO paciente 
      (nome, data_nascimento, sexo, telefone, email, objetivo)
      VALUES ($1, $2, $3, $4, $5, $6)
      RETURNING *`,
      [nome, data_nascimento, sexo, telefone, email, objetivo]
    );

    res.status(201).json(result.rows[0]); ///Se der certo, retorna status 201
     // Result rows contém o paciente inserido

  } catch (error) {
    console.error('ERRO AO INSERIR:', error); //Rtorna erro 500 se der problema 
    res.status(500).json({ erro: 'Erro ao criar paciente' });
  }
});

//ATUALIZAR PACIENTES POR URL 

router.put('/:id', async (req, res) => {
  try {
    const { id } = req.params;  //ID que vem da URL

    //Dados enviados no body
    const { nome, data_nascimento, sexo, telefone, email, objetivo } = req.body; 

    const result = await pool.query(
      `UPDATE paciente 
      SET nome = $1,
      data_nascimento = $2, 
      sexo = $3, 
      telefone = $4, 
      email = $5,
      objetivo = $6
      WHERE id_paciente = $7
      RETURNING *`, 
      [nome, data_nascimento, sexo, telefone, email, objetivo, id]
       );

    // Se nenhum registro foi atualizado
    if (result.rows.length === 0) {
      return res.status(404).json({ erro: 'Paciente não encontrado' });
    }

    // Se deu certo, retorna o paciente atualizado
    res.json(result.rows[0]);

  } catch (error) {
    console.error('ERRO AO ATUALIZAR:', error);
    res.status(500).json({ erro: 'Erro ao atualizar paciente' });
  }
});

//DELETAR PACIENTES POR URL 

router.delete('/:id', async (req, res) => {
  try {
    const { id } = req.params;  //ID que vem da URL

    //Dados enviados no body
    //const { nome, data_nascimento, sexo, telefone, email, objetivo } = req.body; 

    const result = await pool.query(
      `DELETE FROM paciente
      WHERE id_paciente = $1
      RETURNING *`, 
      [id]
       );

    // Se nenhum registro foi encontrado
    if (result.rows.length === 0) {
      return res.status(404).json({ erro: 'Paciente não encontrado' });
    }

    // Se deu certo, o paciente é deletado
    res.json({mensagem: 'Paciente deletado.'});

  } catch (error) {
    console.error('ERRO AO DELETAR:', error);
    res.status(500).json({ erro: 'Erro ao deletar paciente' });
  }
});
