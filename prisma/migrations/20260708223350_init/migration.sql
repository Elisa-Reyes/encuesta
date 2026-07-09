-- CreateTable
CREATE TABLE `encuestas_bookie` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `grado_escolar` VARCHAR(191) NOT NULL,
    `num_alumnos` INTEGER NOT NULL,
    `frecuencia_lecturas` VARCHAR(191) NOT NULL,
    `formato_lectura` VARCHAR(191) NOT NULL,
    `desafio_motivacion` TEXT NULL,
    `seguimiento_comprension` TEXT NULL,
    `tiempo_evaluacion` VARCHAR(191) NULL,
    `dificultad_identificar` INTEGER NULL,
    `prioridad_herramienta` VARCHAR(191) NULL,
    `caracteristica_valiosa` VARCHAR(191) NULL,
    `cuestionarios_automaticos` VARCHAR(191) NULL,
    `metricas` TEXT NULL,
    `dispositivo` VARCHAR(191) NULL,
    `comodidad_tecnologia` VARCHAR(191) NULL,
    `acceso_padres` VARCHAR(191) NULL,
    `herramientas_actuales` VARCHAR(191) NULL,
    `funcion_extranada` TEXT NULL,
    `dinamica_ideal` TEXT NULL,
    `preocupaciones` TEXT NULL,
    `comentario_adicional` TEXT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
