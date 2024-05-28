DROP SCHEMA IF EXISTS `gestionempleados`;
CREATE SCHEMA IF NOT EXISTS `gestionempleados`;

USE `gestionempleados`;

-- Tabla departamentos
DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE IF NOT EXISTS `departamentos` (
    `PK_DEPARTAMENTO` INT AUTO_INCREMENT PRIMARY KEY,
    `NOMBRE` VARCHAR(50) NOT NULL,
    `DESCRIPCION` VARCHAR(100),
    `PRESUPUESTO` DECIMAL(10, 2),
    `CORREO_ELECTRONICO` VARCHAR(100),
    `PISO` INT
);

-- Tabla roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
    `PK_ROL` INT AUTO_INCREMENT PRIMARY KEY,
    `NOMBRE` VARCHAR(50) NOT NULL,
    `DESCRIPCION` VARCHAR(100)
);

-- Tabla generos
DROP TABLE IF EXISTS `generos`;
CREATE TABLE IF NOT EXISTS `generos` (
    `PK_GENERO` INT AUTO_INCREMENT PRIMARY KEY,
    `NOMBRE` VARCHAR(50) NOT NULL
);

-- Tabla empleados
DROP TABLE IF EXISTS `empleados`;
CREATE TABLE IF NOT EXISTS `empleados` (
    `PK_EMPLEADO` INT AUTO_INCREMENT PRIMARY KEY,
    `NOMBRE` VARCHAR(50) NOT NULL,
    `APELLIDO` VARCHAR(50) NOT NULL,
    `FECHA_NACIMIENTO` DATE,
    `DIRECCION` VARCHAR(100),
    `CORREO_ELECTRONICO` VARCHAR(100),
    `TELEFONO` VARCHAR(20),
    `FECHA_CONTRATACION` DATE,
    `SALARIO` DECIMAL(10, 2),
    `FK_DEPARTAMENTO` INT,
    `FK_ROL` INT,
    `FK_GENERO` INT,
    FOREIGN KEY (`FK_DEPARTAMENTO`) REFERENCES `departamentos`(`PK_DEPARTAMENTO`),
    FOREIGN KEY (`FK_ROL`) REFERENCES `roles`(`PK_ROL`),
    FOREIGN KEY (`FK_GENERO`) REFERENCES `generos`(`PK_GENERO`)
);

-- Tabla historiales_laborales
DROP TABLE IF EXISTS `historiales_laborales`;
CREATE TABLE IF NOT EXISTS `historiales_laborales` (
    `PK_HISTORIAL_LABORAL` INT AUTO_INCREMENT PRIMARY KEY,
    `FECHA_CAMBIO` DATE,
    `TIPO_CAMBIO` VARCHAR(40),
    `VALOR_ANTERIOR` VARCHAR(50),
    `VALOR_NUEVO` VARCHAR(50),
    `FK_EMPLEADO` INT,
    FOREIGN KEY (`FK_EMPLEADO`) REFERENCES `empleados`(`PK_EMPLEADO`)
);

-- Tabla vacaciones
DROP TABLE IF EXISTS `vacaciones`;
CREATE TABLE IF NOT EXISTS `vacaciones` (
    `PK_VACACIONES` INT AUTO_INCREMENT PRIMARY KEY,
    `FECHA_INICIO` DATE,
    `FECHA_FIN` DATE,
    `ESTADO` VARCHAR(50),
    `FK_EMPLEADO` INT,
    FOREIGN KEY (`FK_EMPLEADO`) REFERENCES `empleados`(`PK_EMPLEADO`)
);

-- Tabla reportes_desempeno
DROP TABLE IF EXISTS `reportes_desempeno`;
CREATE TABLE IF NOT EXISTS `reportes_desempeno` (
    `PK_REPORTE_DESEMPENO` INT AUTO_INCREMENT PRIMARY KEY,
    `FECHA` DATE,
    `COMENTARIOS` VARCHAR(255),
    `CALIFICACION` INT,
    `FK_EMPLEADO` INT,
    FOREIGN KEY (`FK_EMPLEADO`) REFERENCES `empleados`(`PK_EMPLEADO`)
);

-- Tabla beneficios
DROP TABLE IF EXISTS `beneficios`;
CREATE TABLE IF NOT EXISTS `beneficios` (
    `PK_BENEFICIO` INT AUTO_INCREMENT PRIMARY KEY,
    `TIPO` VARCHAR(50),
    `DESCRIPCION` VARCHAR(255),
    `FK_EMPLEADO` INT,
    FOREIGN KEY (`FK_EMPLEADO`) REFERENCES `empleados`(`PK_EMPLEADO`)
);

-- Tabla registros_ausencias
DROP TABLE IF EXISTS `registros_ausencias`;
CREATE TABLE IF NOT EXISTS `registros_ausencias` (
    `PK_REGISTRO_AUSENCIA` INT AUTO_INCREMENT PRIMARY KEY,
    `TIPO` VARCHAR(50),
    `FECHA_INICIO` DATE,
    `FECHA_FIN` DATE,
    `FK_EMPLEADO` INT,
    FOREIGN KEY (`FK_EMPLEADO`) REFERENCES `empleados`(`PK_EMPLEADO`)
);

-- Tabla eventos
DROP TABLE IF EXISTS `eventos`;
CREATE TABLE IF NOT EXISTS `eventos` (
    `PK_EVENTO` INT AUTO_INCREMENT PRIMARY KEY,
    `NOMBRE` VARCHAR(100),
    `DESCRIPCION` VARCHAR(255),
    `FECHA` DATE,
    `HORARIO` TIME,
    `TIPO` VARCHAR(50)
);

-- Tabla capacitaciones
DROP TABLE IF EXISTS `capacitaciones`;
CREATE TABLE IF NOT EXISTS `capacitaciones` (
    `PK_CAPACITACION` INT AUTO_INCREMENT PRIMARY KEY,
    `NOMBRE` VARCHAR(100),
    `DESCRIPCION` VARCHAR(255),
    `DURACION_HS` INT,
    `COSTO` DECIMAL(10, 2)
);

-- Tabla empleados_capacitaciones
DROP TABLE IF EXISTS `empleados_capacitaciones`;
CREATE TABLE IF NOT EXISTS `empleados_capacitaciones` (
    `PK_EMPLEADO_CAPACITACION` INT AUTO_INCREMENT PRIMARY KEY,
    `FK_EMPLEADO` INT,
    `FK_CAPACITACION` INT,
    `FECHA` DATE,
    FOREIGN KEY (`FK_EMPLEADO`) REFERENCES `empleados`(`PK_EMPLEADO`),
    FOREIGN KEY (`FK_CAPACITACION`) REFERENCES `capacitaciones`(`PK_CAPACITACION`)
);

-- Tabla permisosdeacceso
DROP TABLE IF EXISTS `permisosdeacceso`;
CREATE TABLE IF NOT EXISTS `permisosdeacceso` (
    `PK_PERMISO` INT AUTO_INCREMENT PRIMARY KEY,
    `NOMBRE` VARCHAR(100),
    `DESCRIPCION` VARCHAR(255),
    `FECHA_MODIFICACION` DATE,
    `MODIFICADO_POR` VARCHAR(100)
);

-- Tabla roles_permisosdeacceso
DROP TABLE IF EXISTS `roles_permisosdeacceso`;
CREATE TABLE IF NOT EXISTS `roles_permisosdeacceso` (
    `PK_ROL_PERMISO` INT AUTO_INCREMENT PRIMARY KEY,
    `FK_ROL` INT,
    `FK_PERMISO` INT,
    FOREIGN KEY (`FK_ROL`) REFERENCES `roles`(`PK_ROL`),
    FOREIGN KEY (`FK_PERMISO`) REFERENCES `permisosdeacceso`(`PK_PERMISO`)
);

-- Tabla departamentos_eventos
DROP TABLE IF EXISTS `departamentos_eventos`;
CREATE TABLE IF NOT EXISTS `departamentos_eventos` (
    `PK_DEPARTAMENTO_EVENTO` INT AUTO_INCREMENT PRIMARY KEY,
    `FK_DEPARTAMENTO` INT,
    `FK_EVENTO` INT,
    FOREIGN KEY (`FK_DEPARTAMENTO`) REFERENCES `departamentos`(`PK_DEPARTAMENTO`),
    FOREIGN KEY (`FK_EVENTO`) REFERENCES `eventos`(`PK_EVENTO`)
);

-- Vista que ordena de manera desendente a los empleados según su salario
DROP VIEW IF EXISTS `VW_empleados_por_salario`;
CREATE VIEW `VW_empleados_por_salario` AS
SELECT * FROM `empleados` ORDER BY `SALARIO` DESC;

-- Vista que filtra empleados por su nombre
DROP VIEW IF EXISTS `VW_empleados_por_nombre`;
CREATE VIEW `VW_empleados_por_nombre` AS
SELECT * FROM `empleados` WHERE `NOMBRE` LIKE '%an%';

-- Vista que calcula el presupuesto promedio de los departamentos
DROP VIEW IF EXISTS `VW_presupuesto_promedio_departamentos`;
CREATE VIEW `VW_presupuesto_promedio_departamentos` AS
SELECT AVG(`PRESUPUESTO`) AS `PRESUPUESTO_PROMEDIO` FROM `departamentos`;

-- Vista que muestra los empleados con su nombre, apellido y nombre del departamento
DROP VIEW IF EXISTS `VW_empleados_departamentos`;
CREATE VIEW `VW_empleados_departamentos` AS
SELECT e.NOMBRE, e.APELLIDO, d.NOMBRE AS DEPARTAMENTO
FROM empleados e
LEFT JOIN departamentos d ON e.FK_DEPARTAMENTO = d.PK_DEPARTAMENTO
ORDER BY d.NOMBRE;

-- Vista que muestra el nombre, apellido y género de todas las empleadas de la empresa
DROP VIEW IF EXISTS `VW_empleadas_mujeres`;
CREATE VIEW `VW_empleadas_mujeres` AS
SELECT e.NOMBRE, e.APELLIDO, g.NOMBRE AS GENERO
FROM empleados e
INNER JOIN generos g ON e.FK_GENERO = g.PK_GENERO
WHERE g.NOMBRE = 'Femenino';

DROP PROCEDURE IF EXISTS SP_actualizar_costo_capacitacion;
DELIMITER //
CREATE PROCEDURE SP_actualizar_costo_capacitacion(
    IN capacitacion_id INT,
    IN nuevo_costo DECIMAL(10, 2)
)
BEGIN
    UPDATE capacitaciones
    SET COSTO = nuevo_costo
    WHERE PK_CAPACITACION = capacitacion_id;
END//
DELIMITER ;

DROP PROCEDURE IF EXISTS SP_actualizar_presupuesto_departamento;
DELIMITER //
CREATE PROCEDURE SP_actualizar_presupuesto_departamento(
    IN departamento_id INT,
    IN nuevo_presupuesto DECIMAL(10, 2)
)
BEGIN
    UPDATE departamentos
    SET PRESUPUESTO = nuevo_presupuesto
    WHERE PK_DEPARTAMENTO = departamento_id;
END//
DELIMITER ;

DROP FUNCTION IF EXISTS FN_calcular_salario_cuatrimestral;
DELIMITER //
CREATE FUNCTION FN_calcular_salario_cuatrimestral(empleado_id INT) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE salario_mensual DECIMAL(10,2);
    DECLARE salario_cuatrimestral DECIMAL(10,2);

    -- Obtener el salario mensual del empleado
    SELECT SALARIO INTO salario_mensual
    FROM empleados
    WHERE PK_EMPLEADO = empleado_id;

    -- Calcular el salario cuatrimestral
    SET salario_cuatrimestral = salario_mensual * 4;

    RETURN salario_cuatrimestral;
END//

DELIMITER ;

DROP FUNCTION IF EXISTS FN_sumar_presupuesto_departamentos;

DELIMITER //
CREATE FUNCTION FN_sumar_presupuesto_departamentos() RETURNS DECIMAL(20, 2)
DETERMINISTIC
BEGIN
    DECLARE total_presupuesto DECIMAL(20, 2);
    
    SELECT SUM(PRESUPUESTO) INTO total_presupuesto
    FROM departamentos;
    
    RETURN total_presupuesto;
END//
DELIMITER ;

-- Tabla para almacenar los registros de cambios en los empleados
CREATE TABLE IF NOT EXISTS auditoria_empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    accion VARCHAR(10),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    empleado_afectado INT,
    FOREIGN KEY (empleado_afectado) REFERENCES empleados(PK_EMPLEADO)
);


DROP TRIGGER IF EXISTS TRG_insert_empleados;

-- Trigger para registrar inserciones en la tabla empleados
DELIMITER //
CREATE TRIGGER TRG_insert_empleados
AFTER INSERT ON empleados
FOR EACH ROW
BEGIN
    -- Acción de inserción
    INSERT INTO auditoria_empleados (accion, empleado_afectado)
    VALUES ('INSERT', NEW.PK_EMPLEADO);
END;
//

DELIMITER ;

DROP TRIGGER IF EXISTS TRG_update_empleados;

-- Trigger para registrar actualizaciones en la tabla empleados
DELIMITER //
CREATE TRIGGER TRG_update_empleados
AFTER UPDATE ON empleados
FOR EACH ROW
BEGIN
    -- Acción de actualización
    INSERT INTO auditoria_empleados (accion, empleado_afectado)
    VALUES ('UPDATE', NEW.PK_EMPLEADO);
END;
//

DELIMITER ;

DROP TRIGGER IF EXISTS TRG_delete_empleados;

-- Trigger para registrar eliminaciones en la tabla empleados
DELIMITER //
CREATE TRIGGER TRG_delete_empleados
AFTER DELETE ON empleados
FOR EACH ROW
BEGIN
    -- Acción de eliminación
    INSERT INTO auditoria_empleados (accion, empleado_afectado)
    VALUES ('DELETE', OLD.PK_EMPLEADO);
END;
//

DELIMITER ;

DROP PROCEDURE IF EXISTS SP_ordenar_tabla;

DELIMITER //

CREATE PROCEDURE SP_ordenar_tabla(
    IN tabla_param VARCHAR(100),
    IN columna_param VARCHAR(100),
    IN ordenamiento_param VARCHAR(10)
)
BEGIN
    -- Verificar si la tabla y la columna existen
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = tabla_param) AND
       EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = tabla_param AND column_name = columna_param) THEN
       
        -- Construir y ejecutar la consulta
        SET @sql = CONCAT('SELECT * FROM ', tabla_param, ' ORDER BY ', columna_param, ' ', ordenamiento_param);
        PREPARE stmt FROM @sql;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
        
    ELSE
        -- Si la tabla o la columna no existen, mostrar un mensaje de error
        SELECT 'La tabla o la columna especificadas no existen.';
    END IF;
END;
//

DELIMITER ;