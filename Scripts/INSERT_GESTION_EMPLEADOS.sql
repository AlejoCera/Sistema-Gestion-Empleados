USE gestionempleados;

INSERT INTO generos (NOMBRE) VALUES ('Masculino');
INSERT INTO generos (NOMBRE) VALUES ('Femenino');
INSERT INTO generos (NOMBRE) VALUES ('Otro');

INSERT INTO empleados (NOMBRE, APELLIDO, FECHA_NACIMIENTO, DIRECCION, CORREO_ELECTRONICO, TELEFONO, FECHA_CONTRATACION, SALARIO, FK_GENERO) VALUES 
('Mario', 'Rodríguez', '1982-04-01', 'Av. Corrientes 1234, Buenos Aires', 'mariorodriguez@ihg.com', '4735434869', '2022-08-15', 1500000, 1),
('Laura', 'Ramírez', '1981-03-19', 'Calle Florida 567, Córdoba', 'lauraramirez@chicagotribune.com', '5887532731', '2022-09-20', 577958, 1),
('Diego', 'Jiménez', '1977-02-26', 'Av. Belgrano 432, Rosario', 'diegojimenez@rediff.com', '2291501241', '2022-10-10', 820000 , 3),
('Fernanda', 'Pérez', '1980-12-14', 'Av. Libertador 789, Mendoza', 'fernandaperez@stumbleupon.com', '6578641294', '2022-10-25', 1046105, 3),
('Marcela', 'Castillo', '1971-03-11', 'Av. Rivadavia 1010, Mar del Plata', 'marcelacastillo@state.tx.us', '7166050482', '2022-10-30', 645973, 2),
('Ana', 'Díaz', '1982-12-07', 'Av. San Martín 345, Salta', 'anadiaz@bizjournals.com', '2376508975', '2022-11-05', 527837, 2),
('Sofía', 'Rivera', '1979-11-30', 'Av. Corrientes 2000, Buenos Aires', 'sofiarivera@hatena.ne.jp', '2519343792', '2022-11-10', 1116159, 2),
('María', 'Sánchez', '2004-01-09', 'Av. Callao 678, Córdoba', 'msanchez@addthis.com', '5564070597', '2022-11-15', 713044, 2),
('Guadalupe', 'Torres', '1991-08-18', 'Av. 9 de Julio 123, Buenos Aires', 'guadalupetorres@omniture.com', '2002975561', '2022-11-25', 1041609, 1),
('David', 'Pérez', '1983-01-02', 'Av. Pueyrredón 456, Rosario', 'davidperez@mapquest.com', '4387833608', '2022-12-05', 649272, 1),
('Silvia', 'Gómez', '2001-08-30', 'Av. Mitre 789, La Plata', 'silviagomez@storify.com', '5987164593', '2022-12-10', 1135643, 2),
('Andrés', 'González', '1974-06-03', 'Av. Maipú 321, Mendoza', 'andresgonzalez@nymag.com', '4563659430', '2022-12-15', 957808, 1),
('Laura', 'González', '2002-11-13', 'Av. Belgrano 100, Salta', 'lauragonzalez@redcross.org', '3389128409', '2022-12-20', 828933, 1),
('Pedro', 'López', '1970-05-25', 'Av. Sarmiento 543, Tucumán', 'pedrolopez@opensource.org', '4151768924', '2023-01-05', 1013014, 1),
('Andrés', 'Hernández', '2003-09-11', 'Av. San Martín 222, Buenos Aires', 'andreshernandez@addthis.com', '6619263377', '2023-01-10', 1020500, 1),
('Ana', 'Martínez', '2000-04-23', 'Av. Rivadavia 777, Rosario', 'anamartinez@mapquest.com', '2147299938', '2023-01-15', 667439, 2),
('Jorge', 'Díaz', '1993-06-23', 'Av. San Juan 888, San Juan', 'jorgediaz@php.net', '9279203877', '2023-01-20', 1179342, 1),
('Carmen', 'Ruiz', '1977-06-03', 'Av. Colón 456, Córdoba', 'carmenruiz@shop-pro.jp', '7058255009', '2023-01-25', 989189, 1),
('Natalia', 'Ruiz', '1992-06-16', 'Av. Corrientes 333, Buenos Aires', 'nataliaruiz@utexas.edu', '7523643674', '2023-01-30', 600000, 3),
('Paula', 'Flores', '1977-12-20', 'Av. Belgrano 555, Rosario', 'paulaflores@netvibes.com', '4523949288', '2023-02-05', 564779, 2),
('Roberto', 'Vargas', '1981-01-06', 'Av. San Martín 999, Mendoza', 'robertovargas@surveymonkey.com', '6405293281', '2023-02-15', 1062133, 1),
('María', 'López', '1987-09-25', 'Av. Callao 123, Buenos Aires', 'marialopez@histats.com', '7767040215', '2023-02-20', 1055641, 1),
('Guadalupe', 'Torres', '1991-08-18', 'Av. 9 de Julio 456, Buenos Aires', 'guadalupetorres@omniture.com', '2002975561', '2023-02-28', 1041609, 1),
('Elena', 'Martínez', '2001-04-09', 'Av. Libertador 987, Mendoza', 'elenamartinez@youtu.be', '2837181266', '2023-03-01', 832724, 2),
('José', 'García', '1992-11-22', 'Av. Pellegrini 345, Rosario', 'josegarcia@gmail.com', '9186916909', '2023-03-05', 949734, 3),
('Juan', 'Ramírez', '1997-04-18', 'Av. 9 de Julio 678, Buenos Aires', 'juanramirez@e-recht24.de', '7662015772', '2023-03-10', 753498, 1),
('Carlos', 'Rodríguez', '2000-09-26', 'Av. Corrientes 777, Buenos Aires', 'carlosrodriguez@outlook.com', '1317282784', '2023-03-15', 734843, 1),
('Luis', 'Flores', '1988-07-23', 'Av. Rivadavia 444, Salta', 'luisflores@wp.com', '8644777820', '2023-03-20', 672042, 1),
('Andrés', 'Hernández', '2003-09-11', 'Av. San Martín 222, Buenos Aires', 'andreshernandez@addthis.com', '6619263377', '2023-10-25', 1020500, 1),
('Rosa', 'García', '1989-01-12', 'Av. Callao 555, Buenos Aires', 'rosagarcia@godaddy.com', '7651368557', '2024-02-20', 1094881, 1),
('Juan', 'Perez', '2001-05-15', 'Av. Boedo 2150, Buenos Aires', 'juanramirez@gmail.com', '5551234567', '2024-03-20', 500000, 1);

-- Actualización salarial
UPDATE empleados
SET SALARIO = SALARIO + 175000
WHERE PK_EMPLEADO BETWEEN 1 AND 31;

INSERT INTO departamentos (NOMBRE, DESCRIPCION, PRESUPUESTO, CORREO_ELECTRONICO, PISO) VALUES 
('Desarrollo de Software', 'Departamento encargado del desarrollo, prueba y mantenimiento de software.', 13800000.00, 'desarrollo@empresa.com', 1),
('Tecnología de la Información (TI)', 'Departamento responsable de la gestión de la infraestructura tecnológica.', 19800000.00, 'ti@empresa.com', 1),
('Operaciones y Administración de Sistemas', 'Encargado de la gestión y mantenimiento de los sistemas informáticos.', 18950000.00, 'operaciones@empresa.com', 2),
('Ventas y Marketing', 'Responsable de la comercialización y venta de productos y servicios.', 15500000.00, 'ventas@empresa.com', 2),
('Recursos Humanos y Administración de Personal', 'Encargado de gestionar el talento humano y las relaciones laborales.', 15200000.00, 'rrhh@empresa.com', 3),
('Finanzas y Contabilidad', 'Departamento encargado de las finanzas, presupuestos y contabilidad.', 10500000.00, 'finanzas@empresa.com', 3),
('Investigación y Desarrollo (I+D)', 'Responsable de la investigación y desarrollo de nuevas tecnologías.', 16500000.00, 'id@empresa.com', 4),
('Servicio al Cliente y Soporte Técnico', 'Ofrece soporte técnico y atención al cliente para resolver problemas.', 13250000.00, 'soporte@empresa.com', 4);

-- Incrementar el presupuesto de todos los departamentos por igual
UPDATE departamentos
SET PRESUPUESTO = PRESUPUESTO + 250000
WHERE PK_DEPARTAMENTO BETWEEN 1 AND 8;

UPDATE empleados
SET FK_DEPARTAMENTO =
    CASE
        WHEN PK_EMPLEADO IN (17, 11, 7, 4) THEN 7   -- Investigación y Desarrollo (I+D)
        WHEN PK_EMPLEADO IN (30, 21, 22) THEN 4   -- Ventas y Marketing
        WHEN PK_EMPLEADO IN (9, 23, 15, 29, 14) THEN 1   -- Desarrollo de Software
        WHEN PK_EMPLEADO IN (18, 1, 25, 24) THEN 2   -- Tecnología de la Información (TI)
        WHEN PK_EMPLEADO IN (13, 3, 26, 27) THEN 8   -- Servicio al Cliente y Soporte Técnico
        WHEN PK_EMPLEADO IN (8, 28, 16, 10) THEN 3   -- Operaciones y Administración de Sistemas
        WHEN PK_EMPLEADO IN (5, 19, 12, 2) THEN 5   -- Recursos Humanos y Administración de Personal
        WHEN PK_EMPLEADO IN (20, 6) THEN 6    -- Finanzas y Contabilidad
    END
WHERE PK_EMPLEADO BETWEEN 1 AND 30;

-- Roles
INSERT INTO roles (NOMBRE, DESCRIPCION) VALUES
('Administrador', 'Rol con acceso completo al sistema'),
('Desarrollador', 'Encargado del desarrollo, prueba y mantenimiento de software.'),
('Especialista en Marketing', 'Responsable de la comercialización y venta de productos y servicios.'),
('Administrador de Sistemas', 'Responsable de la gestión y mantenimiento de los sistemas informáticos.'),
('Gerente de Recursos Humanos', 'Encargado de gestionar el talento humano y las relaciones laborales.'),
('Contador', 'Encargado de las finanzas, presupuestos y contabilidad.'),
('Investigador', 'Responsable de la investigación y desarrollo de nuevas tecnologías.'),
('Soporte Técnico', 'Ofrece soporte técnico y atención al cliente para resolver problemas.'),
('Especialista en Tecnología de la Información (TI)', 'Especialista encargado de la gestión de la infraestructura tecnológica.');

-- Asignar Admin
UPDATE empleados
SET FK_ROL = 1
WHERE PK_EMPLEADO = 1;

-- Asignar roles según el departamento
UPDATE empleados
SET FK_ROL =
    CASE
        WHEN FK_DEPARTAMENTO = 1 THEN 2  -- Desarrollo de Software
        WHEN FK_DEPARTAMENTO = 2 THEN 9  -- Tecnología de la Información (TI)
        WHEN FK_DEPARTAMENTO = 3 THEN 4  -- Operaciones y Administración de Sistemas
        WHEN FK_DEPARTAMENTO = 4 THEN 3  -- Ventas y Marketing
        WHEN FK_DEPARTAMENTO = 5 THEN 5  -- Recursos Humanos y Administración de Personal
        WHEN FK_DEPARTAMENTO = 6 THEN 6  -- Finanzas y Contabilidad
        WHEN FK_DEPARTAMENTO = 7 THEN 7  -- Investigación y Desarrollo (I+D)
        WHEN FK_DEPARTAMENTO = 8 THEN 8  -- Servicio al Cliente y Soporte Técnico
    END
WHERE PK_EMPLEADO BETWEEN 2 AND 30;

-- Permisos para Admin
INSERT INTO permisosdeacceso (NOMBRE, DESCRIPCION, FECHA_MODIFICACION, MODIFICADO_POR)
VALUES ('Acceso total', 'Concede acceso completo y privilegios de administrador en todo el sistema.', '2024-03-01', 'Admin');

-- Permisos para Desarrollo de Software
INSERT INTO permisosdeacceso (NOMBRE, DESCRIPCION, FECHA_MODIFICACION, MODIFICADO_POR)
VALUES 
    ('Crear, modificar y eliminar código fuente', 'Permite a los usuarios crear, modificar y eliminar código fuente.', '2024-01-15', 'Admin'),
    ('Acceso a repositorios de código', 'Permite a los usuarios acceder a los repositorios de código para gestionar versiones y colaborar en proyectos.', '2024-02-28', 'Admin'),
    ('Ejecución de pruebas y depuración de software', 'Permite a los usuarios ejecutar pruebas de software y depurar errores.', '2024-03-10', 'Admin'),
    ('Acceso a entornos de desarrollo y pruebas', 'Permite a los usuarios acceder a entornos de desarrollo y pruebas para probar y validar software.', '2024-04-05', 'Admin');

-- Permisos para Tecnología de la Información (TI)
INSERT INTO permisosdeacceso (NOMBRE, DESCRIPCION, FECHA_MODIFICACION, MODIFICADO_POR)
VALUES 
    ('Administración de redes y servidores', 'Permite a los usuarios administrar redes y servidores de la empresa.', '2024-01-20', 'Admin'),
    ('Gestión de cuentas de usuario y contraseñas', 'Permite a los usuarios gestionar cuentas de usuario y contraseñas en sistemas y aplicaciones.', '2024-02-29', 'Admin'),
    ('Monitoreo de sistemas y seguridad de la red', 'Permite a los usuarios monitorear sistemas y garantizar la seguridad de la red.', '2024-03-12', 'Admin'),
    ('Implementación de actualizaciones de software y parches de seguridad', 'Permite a los usuarios implementar actualizaciones de software y parches de seguridad en sistemas y aplicaciones.', '2024-04-07', 'Admin');

-- Permisos para Operaciones y Administración de Sistemas
INSERT INTO permisosdeacceso (NOMBRE, DESCRIPCION, FECHA_MODIFICACION, MODIFICADO_POR)
VALUES 
    ('Mantenimiento y configuración de sistemas y aplicaciones', 'Permite a los usuarios realizar el mantenimiento y la configuración de sistemas y aplicaciones.', '2024-01-25', 'Admin'),
    ('Administración de bases de datos', 'Permite a los usuarios administrar bases de datos y realizar operaciones de mantenimiento.', '2024-02-27', 'Admin'),
    ('Gestión de copias de seguridad y recuperación de datos', 'Permite a los usuarios gestionar copias de seguridad y recuperar datos en caso de pérdida.', '2024-03-15', 'Admin'),
    ('Monitoreo y mantenimiento de la infraestructura de TI', 'Permite a los usuarios monitorear y mantener la infraestructura de tecnologías de la información.', '2024-04-01', 'Admin');

-- Permisos para Ventas y Marketing
INSERT INTO permisosdeacceso (NOMBRE, DESCRIPCION, FECHA_MODIFICACION, MODIFICADO_POR)
VALUES 
    ('Acceso a herramientas de gestión de relaciones con clientes (CRM)', 'Permite a los usuarios acceder a herramientas de CRM para gestionar relaciones con clientes.', '2024-01-18', 'Admin'),
    ('Creación y distribución de materiales de marketing', 'Permite a los usuarios crear y distribuir materiales de marketing como folletos, catálogos, etc.', '2024-02-28', 'Admin'),
    ('Análisis de datos de ventas y comportamiento del cliente', 'Permite a los usuarios analizar datos de ventas y comportamiento del cliente para tomar decisiones estratégicas.', '2024-03-10', 'Admin'),
    ('Gestión de campañas publicitarias y promociones', 'Permite a los usuarios gestionar campañas publicitarias y promociones para promocionar productos y servicios.', '2024-04-05', 'Admin');

-- Permisos para Recursos Humanos y Administración de Personal
INSERT INTO permisosdeacceso (NOMBRE, DESCRIPCION, FECHA_MODIFICACION, MODIFICADO_POR)
VALUES 
    ('Gestión de empleados y nóminas', 'Permite a los usuarios gestionar información de empleados y realizar tareas de nóminas.', '2024-01-20', 'Admin'),
    ('Administración de beneficios y compensaciones', 'Permite a los usuarios administrar beneficios y compensaciones para empleados.', '2024-02-29', 'Admin'),
    ('Manejo de reclutamiento y selección de personal', 'Permite a los usuarios manejar procesos de reclutamiento y selección de personal.', '2024-03-12', 'Admin'),
    ('Capacitación y desarrollo de empleados', 'Permite a los usuarios gestionar programas de capacitación y desarrollo para empleados.', '2024-04-07', 'Admin');

-- Permisos para Finanzas y Contabilidad
INSERT INTO permisosdeacceso (NOMBRE, DESCRIPCION, FECHA_MODIFICACION, MODIFICADO_POR)
VALUES 
    ('Gestión de cuentas por pagar y cuentas por cobrar', 'Permite a los usuarios gestionar cuentas por pagar y cuentas por cobrar.', '2024-01-25', 'Admin'),
    ('Elaboración de informes financieros y presupuestos', 'Permite a los usuarios elaborar informes financieros y presupuestos.', '2024-02-27', 'Admin'),
    ('Análisis de costos y rentabilidad', 'Permite a los usuarios realizar análisis de costos y rentabilidad de la empresa.', '2024-03-15', 'Admin'),
    ('Auditoría interna y cumplimiento de normativas', 'Permite a los usuarios realizar auditorías internas y garantizar el cumplimiento de normativas.', '2024-04-01', 'Admin');

-- Permisos para Investigación y Desarrollo (I+D)
INSERT INTO permisosdeacceso (NOMBRE, DESCRIPCION, FECHA_MODIFICACION, MODIFICADO_POR)
VALUES 
    ('Investigación de mercado y análisis de tendencias', 'Permite a los usuarios realizar investigación de mercado y análisis de tendencias.', '2024-01-18', 'Admin'),
    ('Desarrollo de prototipos y productos innovadores', 'Permite a los usuarios desarrollar prototipos y productos innovadores.', '2024-02-28', 'Admin'),
    ('Colaboración con universidades y centros de investigación', 'Permite a los usuarios colaborar con universidades y centros de investigación.', '2024-03-10', 'Admin'),
    ('Protección de la propiedad intelectual y patentes', 'Permite a los usuarios proteger la propiedad intelectual y gestionar patentes.', '2024-04-05', 'Admin');

-- Permisos para Servicio al Cliente y Soporte Técnico
INSERT INTO permisosdeacceso (NOMBRE, DESCRIPCION, FECHA_MODIFICACION, MODIFICADO_POR)
VALUES 
    ('Atención al cliente por teléfono, correo electrónico o chat', 'Permite a los usuarios brindar atención al cliente a través de diferentes canales.', '2024-01-20', 'Admin'),
    ('Resolución de problemas técnicos y asistencia remota', 'Permite a los usuarios resolver problemas técnicos y brindar asistencia remota.', '2024-02-29', 'Admin'),
    ('Gestión de reclamaciones y seguimiento de tickets de soporte', 'Permite a los usuarios gestionar reclamaciones y hacer seguimiento de tickets de soporte.', '2024-03-12', 'Admin'),
    ('Retroalimentación y mejora continua del servicio al cliente', 'Permite a los usuarios recopilar retroalimentación y mejorar continuamente el servicio al cliente.', '2024-04-07', 'Admin');

-- Relaciones entre roles y permisos de acceso

-- Para el Administrador
INSERT INTO roles_permisosdeacceso (FK_ROL, FK_PERMISO) VALUES
(1, 1); -- Acceso total

-- Para el Desarrollador
-- Se asumen los siguientes permisos: Crear, modificar y eliminar código fuente, Acceso a repositorios de código, Ejecución de pruebas y depuración de software, Acceso a entornos de desarrollo y pruebas
INSERT INTO roles_permisosdeacceso (FK_ROL, FK_PERMISO) VALUES
(2, 2), -- Crear, modificar y eliminar código fuente
(2, 3), -- Acceso a repositorios de código
(2, 4), -- Ejecución de pruebas y depuración de software
(2, 5); -- Acceso a entornos de desarrollo y pruebas

-- Se asumen los siguientes permisos: Administración de redes y servidores, Gestión de cuentas de usuario y contraseñas, Monitoreo de sistemas y seguridad de la red, Implementación de actualizaciones de software y parches de seguridad
INSERT INTO roles_permisosdeacceso (FK_ROL, FK_PERMISO) VALUES
(9, 6), -- Administración de redes y servidores
(9, 7), -- Gestión de cuentas de usuario y contraseñas
(9, 8), -- Monitoreo de sistemas y seguridad de la red
(9, 9); -- Implementación de actualizaciones de software y parches de seguridad

-- Para el Especialista en Marketing
-- Se asumen los siguientes permisos: Acceso a herramientas de gestión de relaciones con clientes (CRM), Creación y distribución de materiales de marketing, Análisis de datos de ventas y comportamiento del cliente, Gestión de campañas publicitarias y promociones
INSERT INTO roles_permisosdeacceso (FK_ROL, FK_PERMISO) VALUES
(3, 14), -- Acceso a herramientas de gestión de relaciones con clientes (CRM)
(3, 15), -- Creación y distribución de materiales de marketing
(3, 16), -- Análisis de datos de ventas y comportamiento del cliente
(3, 17); -- Gestión de campañas publicitarias y promociones

-- Para el Administrador de Sistemas
-- Se asumen los siguientes permisos: Mantenimiento y configuración de sistemas y aplicaciones, Administración de bases de datos, Gestión de copias de seguridad y recuperación de datos, Monitoreo y mantenimiento de la infraestructura de TI
INSERT INTO roles_permisosdeacceso (FK_ROL, FK_PERMISO) VALUES
(4, 10), -- Mantenimiento y configuración de sistemas y aplicaciones
(4, 11), -- Administración de bases de datos
(4, 12), -- Gestión de copias de seguridad y recuperación de datos
(4, 13); -- Monitoreo y mantenimiento de la infraestructura de TI

-- Para el Gerente de Recursos Humanos
-- Se asumen los siguientes permisos: Gestión de empleados y nóminas, Administración de beneficios y compensaciones, Manejo de reclutamiento y selección de personal, Capacitación y desarrollo de empleados
INSERT INTO roles_permisosdeacceso (FK_ROL, FK_PERMISO) VALUES
(5, 18), -- Gestión de empleados y nóminas
(5, 19), -- Administración de beneficios y compensaciones
(5, 20), -- Manejo de reclutamiento y selección de personal
(5, 21); -- Capacitación y desarrollo de empleados

-- Para el Contador
-- Se asumen los siguientes permisos: Gestión de cuentas por pagar y cuentas por cobrar, Elaboración de informes financieros y presupuestos, Análisis de costos y rentabilidad, Auditoría interna y cumplimiento de normativas
INSERT INTO roles_permisosdeacceso (FK_ROL, FK_PERMISO) VALUES
(6, 22), -- Gestión de cuentas por pagar y cuentas por cobrar
(6, 23), -- Elaboración de informes financieros y presupuestos
(6, 24), -- Análisis de costos y rentabilidad
(6, 25); -- Auditoría interna y cumplimiento de normativas

-- Para el Investigador
-- Se asumen los siguientes permisos: Investigación de mercado y análisis de tendencias, Desarrollo de prototipos y productos innovadores, Colaboración con universidades y centros de investigación, Protección de la propiedad intelectual y patentes
INSERT INTO roles_permisosdeacceso (FK_ROL, FK_PERMISO) VALUES
(7, 26), -- Investigación de mercado y análisis de tendencias
(7, 27), -- Desarrollo de prototipos y productos innovadores
(7, 28), -- Colaboración con universidades y centros de investigación
(7, 29); -- Protección de la propiedad intelectual y patentes

-- Para el Soporte Técnico
-- Se asumen los siguientes permisos: Atención al cliente por teléfono, correo electrónico o chat, Resolución de problemas técnicos y asistencia remota, Gestión de reclamaciones y seguimiento de tickets de soporte, Retroalimentación y mejora continua del servicio al cliente
INSERT INTO roles_permisosdeacceso (FK_ROL, FK_PERMISO) VALUES
(8, 30), -- Atención al cliente por teléfono, correo electrónico o chat
(8, 31), -- Resolución de problemas técnicos y asistencia remota
(8, 32), -- Gestión de reclamaciones y seguimiento de tickets de soporte
(8, 33); -- Retroalimentación y mejora continua del servicio al cliente

-- Se cargan las capacitaciones al sistema.
INSERT INTO capacitaciones (NOMBRE, DESCRIPCION, DURACION_HS, COSTO)
VALUES 
    ('Metodologías ágiles para el desarrollo de software', 'Principios y prácticas de metodologías ágiles en el desarrollo de software.', 40, 1800000.00),
    ('Pruebas automatizadas y control de calidad en el desarrollo de software', 'Uso de herramientas y técnicas para pruebas automatizadas y control de calidad.', 45, 2100000.00),
    ('Seguridad informática y gestión de riesgos', 'Conceptos de seguridad informática y estrategias de gestión de riesgos.', 55, 2200000.00),
    ('Virtualización y computación en la nube', 'Principios de virtualización y conceptos de computación en la nube.', 45, 2100000.00),
    ('Gestión de redes y administración de servidores', 'Principios de gestión de redes y administración de servidores.', 50, 2000000.00),
    ('Automatización de tareas administrativas', 'Uso de herramientas para automatizar tareas administrativas.', 40, 1800000.00),
    ('Gestión de la infraestructura de sistemas', 'Principios y prácticas para la gestión de la infraestructura de sistemas.', 45, 2000000.00),
    ('Mantenimiento y monitoreo de sistemas críticos', 'Técnicas para el mantenimiento y monitoreo de sistemas críticos.', 50, 2200000.00),
    ('Gestión del talento y desarrollo de habilidades blandas', 'Estrategias para la gestión del talento y desarrollo de habilidades blandas.', 40, 1800000.00),
    ('Procesos de reclutamiento y selección efectivos', 'Principios y mejores prácticas en los procesos de reclutamiento y selección.', 45, 2000000.00),
    ('Análisis financiero y toma de decisiones', 'Técnicas de análisis financiero y toma de decisiones empresariales.', 45, 2000000.00),
    ('Gestión de presupuestos y planificación financiera', 'Principios y prácticas para la gestión de presupuestos y planificación financiera.', 50, 2200000.00),
    ('Innovación y creatividad en la empresa', 'Fomento de la innovación y la creatividad en el entorno empresarial.', 40, 1800000.00),
    ('Desarrollo de prototipos y pruebas de concepto', 'Desarrollo de prototipos y pruebas de concepto en proyectos de I+D.', 45, 2000000.00),
    ('Gestión de proyectos de I+D y transferencia de tecnología', 'Principios y prácticas para la gestión de proyectos de I+D y transferencia de tecnología.', 50, 2200000.00),
    ('Atención al cliente de calidad', 'Técnicas para ofrecer atención al cliente de calidad.', 40, 1800000.00),
    ('Resolución de problemas técnicos avanzados', 'Resolución de problemas técnicos avanzados en el servicio al cliente.', 45, 2000000.00),
    ('Mejora continua en la experiencia del cliente', 'Estrategias para la mejora continua en la experiencia del cliente.', 50, 2100000.00);
    
INSERT INTO empleados_capacitaciones (FK_EMPLEADO, FK_CAPACITACION, FECHA)
VALUES
    (14, 1, '2024-02-15'), -- ID 14 asignado a la capacitación de Metodologías ágiles
    (15, 1, '2024-02-15'), -- ID 15 asignado a la capacitación de Metodologías ágiles
    (23, 1, '2024-02-15'), -- ID 23 asignado a la capacitación de Metodologías ágiles
    (18, 3, '2024-02-25'), -- ID 18 asignado a la capacitación de Seguridad informática y gestión de riesgos
    (24, 3, '2024-02-25'), -- ID 24 asignado a la capacitación de Seguridad informática y gestión de riesgos
    (25, 3, '2024-02-25'), -- ID 25 asignado a la capacitación de Seguridad informática y gestión de riesgos
	(10, 4, '2024-01-05'), -- ID 10 asignado a la capacitación de Virtualización y computación en la nube
    (16, 4, '2024-01-05'), -- ID 16 asignado a la capacitación de Virtualización y computación en la nube
    (28, 4, '2024-01-05'), -- ID 28 asignado a la capacitación de Virtualización y computación en la nube
    (21, 2, '2024-03-08'), -- ID 21 asignado a la capacitación de Marketing digital y estrategias en redes sociales
    (22, 2, '2024-03-08'), -- ID 22 asignado a la capacitación de Marketing digital y estrategias en redes sociales
    (2, 9, '2023-12-10'), -- ID 2 asignado a la capacitación de Gestión del talento y desarrollo de habilidades blandas
    (5, 9, '2023-12-10'), -- ID 5 asignado a la capacitación de Gestión del talento y desarrollo de habilidades blandas
    (12, 9, '2023-12-10'), -- ID 12 asignado a la capacitación de Gestión del talento y desarrollo de habilidades blandas
    (19, 9, '2023-12-10'), -- ID 19 asignado a la capacitación de Gestión del talento y desarrollo de habilidades blandas
    (6, 11, '2023-11-20'), -- ID 6 asignado a la capacitación de Análisis financiero y toma de decisiones
    (20, 11, '2023-11-20'); -- ID 20 asignado a la capacitación de Análisis financiero y toma de decisiones
    
    -- Eventos
INSERT INTO eventos (NOMBRE, DESCRIPCION, FECHA, HORARIO, TIPO)
VALUES 
    ('Últimas tendencias en desarrollo de software', 'Explorando las últimas innovaciones en el mundo del desarrollo de software.', '2024-04-05', '15:00:00', 'Conferencia'),
    ('Seminarios sobre ciberseguridad', 'Aprende sobre las mejores prácticas en ciberseguridad y protección de datos.', '2024-04-15', '09:30:00', 'Seminario'),
    ('Desarrollo ágil', 'Introducción a las metodologías ágiles en el desarrollo de software.', '2024-04-25', '14:00:00', 'Workshop'),
    ('Gestión de infraestructura', 'Cómo gestionar eficientemente la infraestructura de sistemas.', '2024-05-05', '11:00:00', 'Conferencia'),
    ('Estrategias de marketing digital', 'Descubre las mejores prácticas en marketing digital para tu negocio.', '2024-05-15', '10:30:00', 'Seminario'),
    ('Branding y posicionamiento de productos', 'Aprende a construir y posicionar tu marca en el mercado.', '2024-05-25', '13:00:00', 'Workshop'),
    ('Desarrollo de habilidades blandas', 'Potencia tus habilidades interpersonales y de liderazgo.', '2024-06-05', '16:00:00', 'Conferencia'),
    ('Gestión presupuestaria', 'Cómo planificar y gestionar eficientemente los presupuestos empresariales.', '2024-06-15', '09:00:00', 'Seminario'),
    ('Conferencia sobre proyectos de investigación', 'Descubre las últimas investigaciones y proyectos innovadores.', '2024-06-25', '14:30:00', 'Conferencia');
    
    -- Insert para la tabla intermedia departamentos_eventos
INSERT INTO departamentos_eventos (FK_DEPARTAMENTO, FK_EVENTO)
VALUES 
    (1, 1), -- Evento "Últimas tendencias en desarrollo de software" asignado al departamento "Desarrollo de Software"
    (2, 2), -- Evento "Seminarios sobre ciberseguridad" asignado al departamento "Tecnología de la Información (TI)"
    (1, 3), -- Evento "Desarrollo ágil" asignado al departamento "Desarrollo de Software"
    (3, 4), -- Evento "Gestión de infraestructura" asignado al departamento "Operaciones y Administración de Sistemas"
    (4, 5), -- Evento "Estrategias de marketing digital" asignado al departamento "Ventas y Marketing"
    (4, 6), -- Evento "Branding y posicionamiento de productos" asignado al departamento "Ventas y Marketing"
    (5, 7), -- Evento "Desarrollo de habilidades blandas" asignado al departamento "Recursos Humanos y Administración de Personal"
    (6, 8), -- Evento "Gestión presupuestaria" asignado al departamento "Finanzas y Contabilidad"
    (7, 9); -- Evento "Conferencia sobre proyectos de investigación" asignado al departamento "Investigación y Desarrollo (I+D)"

-- Insertar registros en la tabla historiales_laborales
INSERT INTO historiales_laborales (FECHA_CAMBIO, TIPO_CAMBIO, VALOR_ANTERIOR, VALOR_NUEVO, FK_EMPLEADO)
VALUES 
    ('2023-02-15', 'Promoción', 'Empleado regular', 'Admin', 1),
    ('2023-03-10', 'Cambio de departamento', 'Operaciones y Administración de Sistemas', 'Desarrollo de Software', 9),
    ('2023-05-05', 'Reducción de horas laborales', '40 horas/semana', '30 horas/semana', 2),
    ('2023-06-10', 'Cambio en beneficios adicionales', 'Seguro médico básico', 'Seguro médico completo', 1),
    ('2023-07-15', 'Cambio de correo electrónico', 'ana1998@bizjournals.com', 'anadiaz@bizjournals.com', 6),
    ('2023-07-25', 'Cambio de dirección', 'Av. San Juan 2100, Buenos Aires', 'Av. San Martín 222, Buenos Aires', 15),
    ('2023-07-15', 'Cambio de número de teléfono', '2376508975', '4563659430', 12);
    
    INSERT INTO registros_ausencias (TIPO, FECHA_INICIO, FECHA_FIN, FK_EMPLEADO)
VALUES 
    ('Enfermedad', '2023-04-20', '2023-04-22', 2),
    ('Permiso sin goce de sueldo', '2023-05-05', '2023-05-06', 1),
    ('Día personal', '2023-06-15', '2023-06-16', 3),
    ('Enfermedad', '2023-08-10', '2023-08-12', 7),
    ('Permiso sin goce de sueldo', '2023-09-05', '2023-09-06', 1),
    ('Día personal', '2023-10-15', '2023-10-16', 5),
    ('Enfermedad', '2023-12-10', '2023-12-12', 4),
    ('Permiso sin goce de sueldo', '2024-01-05', '2024-01-06', 9),
    ('Día personal', '2024-02-15', '2024-02-16', 10),
    ('Enfermedad', '2024-04-10', '2024-04-12', 16),
    ('Permiso sin goce de sueldo', '2024-05-05', '2024-05-06', 10);
    
    INSERT INTO reportes_desempeno (FECHA, COMENTARIOS, CALIFICACION, FK_EMPLEADO)
VALUES 
    ('2023-06-10', 'Muestra un alto nivel de compromiso.', 8, 1),
    ('2023-06-20', 'Buen desempeño en la resolución de problemas.', 7, 2),
    ('2023-07-05', 'Demuestra habilidades de liderazgo.', 9, 1),
    ('2023-07-15', 'Ha logrado cumplir con los objetivos establecidos.', 8, 20),
    ('2023-08-10', 'Destaca por su creatividad en soluciones.', 9, 7),
    ('2023-08-20', 'Buena adaptabilidad a los cambios.', 7, 2),
    ('2023-09-05', 'Muestra un gran compromiso con el equipo.', 9, 3),
    ('2023-09-15', 'Excelente comunicación interpersonal.', 8, 4),
    ('2023-10-10', 'Ha mostrado un buen desempeño en el trabajo en equipo.', 8, 5),
    ('2023-10-20', 'Se destaca por su iniciativa en la resolución de problemas.', 9, 10),
    ('2023-11-05', 'Demuestra un alto grado de autonomía.', 8, 11),
    ('2023-11-15', 'Excelente manejo del tiempo y los recursos.', 9, 12),
    ('2023-12-10', 'Demuestra una gran capacidad de aprendizaje.', 8, 2),
    ('2023-12-20', 'Contribuye positivamente al ambiente laboral.', 9, 7),
    ('2024-01-05', 'Muestra una actitud proactiva frente a los desafíos.', 8, 6),
    ('2024-01-15', 'Demuestra habilidades de resolución de conflictos.', 9, 7),
    ('2024-02-10', 'Ha logrado superar las expectativas del equipo.', 8, 9),
    ('2024-02-20', 'Se destaca por su compromiso con la calidad.', 9, 12),
    ('2024-03-05', 'Excelente desempeño en la presentación de resultados.', 8, 17),
    ('2024-03-15', 'Ha demostrado un alto nivel de compromiso con sus tareas.', 9, 23);
    
    INSERT INTO vacaciones (FECHA_INICIO, FECHA_FIN, ESTADO, FK_EMPLEADO) VALUES
('2023-06-10', '2023-06-20', 'Aprobadas', 1),
('2023-07-05', '2023-07-15', 'Aprobadas', 2),
('2023-08-01', '2023-08-10', 'Aprobadas', 4),
('2023-09-02', '2023-09-12', 'Aprobadas', 4),
('2023-10-08', '2023-10-18', 'Rechazadas', 1),
('2023-11-15', '2023-11-25', 'Aprobadas', 1),
('2023-12-20', '2023-12-30', 'Aprobadas', 3),
('2024-01-05', '2024-01-15', 'Aprobadas', 10),
('2024-02-10', '2024-02-20', 'Aprobadas', 9),
('2024-03-08', '2024-03-18', 'Aprobadas', 8),
('2024-04-01', '2024-04-10', 'Aprobadas', 11),
('2024-05-05', '2024-05-15', 'Aprobadas', 14),
('2024-06-12', '2024-06-22', 'Pendientes', 16),
('2024-07-20', '2024-07-30', 'Pendientes', 15),
('2024-08-15', '2024-08-25', 'Pendientes', 18);

INSERT INTO beneficios (TIPO, DESCRIPCION, FK_EMPLEADO) VALUES
('Seguro médico', 'Completo', 1),
('Bonificación', 'Comida gratuita en el lugar de trabajo', 2),
('Seguro médico', 'Básico', 3),
('Descuentos', 'En gimnasio asociado', 4),
('Vacaciones adicionales', 'Una semana extra al año', 5),
('Seguro de vida', 'Plan estándar', 6),
('Bonificación', 'Tarjeta de regalo', 7),
('Descuentos', 'En tiendas locales', 8),
('Seguro médico', 'Básico', 9),
('Descuentos', 'En servicios de transporte', 10),
('Beneficio educativo', 'Reembolso parcial de matrícula', 11),
('Vacaciones adicionales', 'Dos semanas extras al año', 12),
('Seguro de vida', 'Plan premium', 13),
('Bonificación', 'Vales de comida', 14),
('Descuentos', 'En actividades recreativas', 15),
('Seguro médico', 'Completo', 16),
('Seguro de vida', 'Plan estándar', 17),
('Bonificación', 'Bono anual', 18),
('Vacaciones adicionales', 'Una semana extra al año', 19),
('Descuentos', 'En suscripciones de entretenimiento', 20);