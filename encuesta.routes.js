const express = require('express');
const router = express.Router();
const { postEncuesta, getEncuestas } = require('./encuesta.controller');

/**
 * @swagger
 * /api/encuestas:
 *   post:
 *     summary: Guarda una respuesta de la encuesta Bookie
 *     tags: [Encuestas]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *     responses:
 *       201:
 *         description: Encuesta guardada correctamente
 *       500:
 *         description: Error al guardar la encuesta
 */
router.post('/', postEncuesta);

/**
 * @swagger
 * /api/encuestas:
 *   get:
 *     summary: Obtiene todas las respuestas de la encuesta Bookie
 *     tags: [Encuestas]
 *     responses:
 *       200:
 *         description: Lista de encuestas
 */
router.get('/', getEncuestas);

module.exports = router;
