USE gestionempleados;

SELECT * FROM generos;
SELECT * FROM empleados;
SELECT * FROM departamentos;
SELECT * FROM roles;
SELECT * FROM roles_permisosdeacceso;
SELECT * FROM permisosdeacceso;
SELECT * FROM capacitaciones;
SELECT * FROM empleados_capacitaciones;
SELECT * FROM eventos;
SELECT * FROM departamentos_eventos;
SELECT * FROM historiales_laborales;
SELECT * FROM registros_ausencias;
SELECT * FROM reportes_desempeno;
SELECT * FROM vacaciones;
SELECT * FROM beneficios;

SELECT * FROM VW_empleados_por_salario;
-- Esta vista filtra los empleados cuyos nombres contienen las letras 'an'. Próximamente, implementaré un procedimiento que permitirá filtrar los resultados según letras específicas ingresadas como parámetros.
SELECT * FROM VW_empleados_por_nombre;
SELECT * FROM VW_presupuesto_promedio_departamentos;
SELECT * FROM VW_empleados_departamentos;
SELECT * FROM VW_empleadas_mujeres;

-- Remplazar por el PK_CAPACITACION y COSTO deseados
CALL SP_actualizar_costo_capacitacion(3, 2750000);
-- Remplazar por el PK_DEPARTAMENTO y PRESUPUESTO deseados
CALL SP_actualizar_presupuesto_departamento(1, 20000000);
-- Son 2 ejemplos del mismo SP, remplazar los parametros por el nombre de la tabla, la columna y el orden (asendente o desendente) deseados.
CALL SP_ordenar_tabla('departamentos', 'nombre', 'ASC');
CALL SP_ordenar_tabla('capacitaciones', 'costo', 'DESC');

-- Remplazar por el PK_EMPLEADO deseado
SELECT FN_calcular_salario_cuatrimestral(1) AS Salario_Cuatrimestral;
SELECT FN_sumar_presupuesto_departamentos() AS Total_Presupuesto_Departamentos;

SELECT * FROM auditoria_empleados;