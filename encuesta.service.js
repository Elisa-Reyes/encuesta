const { PrismaMariaDb } = require("@prisma/adapter-mariadb");
const { PrismaClient } = require("@prisma/client");
const adapter = new PrismaMariaDb({
  host: process.env.DB_HOST,
  port: Number(process.env.DB_PORT) || 3306,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  connectionLimit: 5,
});

const prisma = new PrismaClient({ adapter });

async function crearEncuesta(data) {
  return await prisma.encuestaBookie.create({
    data: {
      preg1: parseInt(data.preg1),
      preg2: parseInt(data.preg2),
      preg3: parseInt(data.preg3),
      preg4: parseInt(data.preg4),
      preg5: parseInt(data.preg5),
      preg6: parseInt(data.preg6),
      preg7: parseInt(data.preg7),
      preg8: parseInt(data.preg8),
      preg9: parseInt(data.preg9),
      preg10: parseInt(data.preg10),
      preg11: parseInt(data.preg11),
      preg12: parseInt(data.preg12),
      preg13: parseInt(data.preg13),
      preg14: parseInt(data.preg14),
      preg15: parseInt(data.preg15),
      preg16: parseInt(data.preg16),
      preg17: parseInt(data.preg17),
      preg18: parseInt(data.preg18),
      dispositivoPrincipal: data.dispositivo_principal,
      inconvenienteTecnico: data.inconveniente_tecnico,
    },
  });
}

async function obtenerEncuestas() {
  return await prisma.encuestaBookie.findMany({
    orderBy: { createdAt: "desc" },
  });
}

async function generarExcel() {
  const ExcelJS = require("exceljs");
  const encuestas = await obtenerEncuestas();

  const workbook = new ExcelJS.Workbook();
  const worksheet = workbook.addWorksheet("Respuestas Bookie");

  const columnasPreguntas = Array.from({ length: 18 }, (_, i) => ({
    header: `Preg ${i + 1}`,
    key: `preg${i + 1}`,
    width: 10,
  }));

  worksheet.columns = [
    { header: "ID", key: "id", width: 6 },
    ...columnasPreguntas,
    { header: "Dispositivo principal", key: "dispositivoPrincipal", width: 20 },
    { header: "Inconveniente técnico", key: "inconvenienteTecnico", width: 45 },
    { header: "Fecha", key: "createdAt", width: 20 },
  ];

  encuestas.forEach((e) => {
    worksheet.addRow({
      ...e,
      createdAt: e.createdAt
        ? new Date(e.createdAt).toLocaleString("es-MX")
        : "",
    });
  });

  worksheet.getRow(1).eachCell((cell) => {
    cell.font = { bold: true, color: { argb: "FFFFFFFF" } };
    cell.fill = {
      type: "pattern",
      pattern: "solid",
      fgColor: { argb: "FF2D5F4F" },
    };
  });
  worksheet.views = [{ state: "frozen", ySplit: 1, xSplit: 1 }];

  return workbook;
}

module.exports = { crearEncuesta, obtenerEncuestas, generarExcel };
