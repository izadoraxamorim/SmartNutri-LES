require('dotenv').config(); 
const express = require('express');
const cors = require('cors');

const pacientesRoutes = require('./routes/pacientes.routes');

const app = express();

app.use(cors());
app.use(express.json());

app.use('/pacientes', pacientesRoutes);

const PORT = 3000;

app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});