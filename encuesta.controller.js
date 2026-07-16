const encuestaService = require("./encuesta.service");

async function postEncuesta(req, res) {
  try {
    const encuesta = await encuestaService.crearEncuesta(req.body);
    res.status(201).json({ ok: true, data: encuesta });
  } catch (error) {
    console.error("Error al guardar encuesta:", error);
    res
      .status(500)
      .json({ ok: false, error: "No se pudo guardar la encuesta" });
  }
}

async function getEncuestas(req, res) {
  try {
    const encuestas = await encuestaService.obtenerEncuestas();
    res.status(200).json({ ok: true, data: encuestas });
  } catch (error) {
    console.error("Error al obtener encuestas:", error);
    res
      .status(500)
      .json({ ok: false, error: "No se pudieron obtener las encuestas" });
  }
}

async function getExcel(req, res) {
  try {
    const workbook = await encuestaService.generarExcel();
    res.setHeader(
      "Content-Type",
      "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
    );
    res.setHeader(
      "Content-Disposition",
      "attachment; filename=encuestas_bookie.xlsx",
    );
    await workbook.xlsx.write(res);
    res.end();
  } catch (error) {
    console.error("Error al generar Excel:", error);
    res.status(500).json({ ok: false, error: "No se pudo generar el Excel" });
  }
}

module.exports = { postEncuesta, getEncuestas, getExcel };
