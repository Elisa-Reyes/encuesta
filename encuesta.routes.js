const express = require("express");
const router = express.Router();
const {
  postEncuesta,
  getEncuestas,
  getExcel,
} = require("./encuesta.controller");

router.get("/excel", getExcel);
router.post("/", postEncuesta);
router.get("/", getEncuestas);

module.exports = router;
