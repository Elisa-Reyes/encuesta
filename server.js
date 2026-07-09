const express = require("express");
const path = require("path");
const app = express();
require("dotenv").config();

app.use(express.json());
app.use(express.static(path.join(__dirname, "public"))); // aquí va tu encuesta_bookie.html

app.use("/api/encuestas", require("./encuesta.routes"));

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Servidor corriendo en http://localhost:${PORT}`);
});
