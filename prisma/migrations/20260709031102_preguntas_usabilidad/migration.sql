/*
  Warnings:

  - You are about to drop the column `acceso_padres` on the `encuestas_bookie` table. All the data in the column will be lost.
  - You are about to drop the column `caracteristica_valiosa` on the `encuestas_bookie` table. All the data in the column will be lost.
  - You are about to drop the column `comentario_adicional` on the `encuestas_bookie` table. All the data in the column will be lost.
  - You are about to drop the column `comodidad_tecnologia` on the `encuestas_bookie` table. All the data in the column will be lost.
  - You are about to drop the column `cuestionarios_automaticos` on the `encuestas_bookie` table. All the data in the column will be lost.
  - You are about to drop the column `desafio_motivacion` on the `encuestas_bookie` table. All the data in the column will be lost.
  - You are about to drop the column `dificultad_identificar` on the `encuestas_bookie` table. All the data in the column will be lost.
  - You are about to drop the column `dinamica_ideal` on the `encuestas_bookie` table. All the data in the column will be lost.
  - You are about to drop the column `dispositivo` on the `encuestas_bookie` table. All the data in the column will be lost.
  - You are about to drop the column `formato_lectura` on the `encuestas_bookie` table. All the data in the column will be lost.
  - You are about to drop the column `frecuencia_lecturas` on the `encuestas_bookie` table. All the data in the column will be lost.
  - You are about to drop the column `funcion_extranada` on the `encuestas_bookie` table. All the data in the column will be lost.
  - You are about to drop the column `grado_escolar` on the `encuestas_bookie` table. All the data in the column will be lost.
  - You are about to drop the column `herramientas_actuales` on the `encuestas_bookie` table. All the data in the column will be lost.
  - You are about to drop the column `metricas` on the `encuestas_bookie` table. All the data in the column will be lost.
  - You are about to drop the column `num_alumnos` on the `encuestas_bookie` table. All the data in the column will be lost.
  - You are about to drop the column `preocupaciones` on the `encuestas_bookie` table. All the data in the column will be lost.
  - You are about to drop the column `prioridad_herramienta` on the `encuestas_bookie` table. All the data in the column will be lost.
  - You are about to drop the column `seguimiento_comprension` on the `encuestas_bookie` table. All the data in the column will be lost.
  - You are about to drop the column `tiempo_evaluacion` on the `encuestas_bookie` table. All the data in the column will be lost.
  - Added the required column `dispositivo_principal` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `inconveniente_tecnico` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `preg_1` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `preg_10` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `preg_11` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `preg_12` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `preg_13` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `preg_14` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `preg_15` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `preg_16` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `preg_17` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `preg_18` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `preg_2` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `preg_3` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `preg_4` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `preg_5` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `preg_6` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `preg_7` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `preg_8` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `preg_9` to the `encuestas_bookie` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `encuestas_bookie` DROP COLUMN `acceso_padres`,
    DROP COLUMN `caracteristica_valiosa`,
    DROP COLUMN `comentario_adicional`,
    DROP COLUMN `comodidad_tecnologia`,
    DROP COLUMN `cuestionarios_automaticos`,
    DROP COLUMN `desafio_motivacion`,
    DROP COLUMN `dificultad_identificar`,
    DROP COLUMN `dinamica_ideal`,
    DROP COLUMN `dispositivo`,
    DROP COLUMN `formato_lectura`,
    DROP COLUMN `frecuencia_lecturas`,
    DROP COLUMN `funcion_extranada`,
    DROP COLUMN `grado_escolar`,
    DROP COLUMN `herramientas_actuales`,
    DROP COLUMN `metricas`,
    DROP COLUMN `num_alumnos`,
    DROP COLUMN `preocupaciones`,
    DROP COLUMN `prioridad_herramienta`,
    DROP COLUMN `seguimiento_comprension`,
    DROP COLUMN `tiempo_evaluacion`,
    ADD COLUMN `dispositivo_principal` VARCHAR(191) NOT NULL,
    ADD COLUMN `inconveniente_tecnico` TEXT NOT NULL,
    ADD COLUMN `preg_1` INTEGER NOT NULL,
    ADD COLUMN `preg_10` INTEGER NOT NULL,
    ADD COLUMN `preg_11` INTEGER NOT NULL,
    ADD COLUMN `preg_12` INTEGER NOT NULL,
    ADD COLUMN `preg_13` INTEGER NOT NULL,
    ADD COLUMN `preg_14` INTEGER NOT NULL,
    ADD COLUMN `preg_15` INTEGER NOT NULL,
    ADD COLUMN `preg_16` INTEGER NOT NULL,
    ADD COLUMN `preg_17` INTEGER NOT NULL,
    ADD COLUMN `preg_18` INTEGER NOT NULL,
    ADD COLUMN `preg_2` INTEGER NOT NULL,
    ADD COLUMN `preg_3` INTEGER NOT NULL,
    ADD COLUMN `preg_4` INTEGER NOT NULL,
    ADD COLUMN `preg_5` INTEGER NOT NULL,
    ADD COLUMN `preg_6` INTEGER NOT NULL,
    ADD COLUMN `preg_7` INTEGER NOT NULL,
    ADD COLUMN `preg_8` INTEGER NOT NULL,
    ADD COLUMN `preg_9` INTEGER NOT NULL;
