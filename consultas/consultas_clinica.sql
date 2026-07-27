--Pacientes con exactamente dos visitas en total

/*Esta consulta une la tabla de pacientes con sus visitas,
 los agrupa por paciente y filtra usando having para 
mostrar solo aquellos cuyo conteo total de visitas es exactamente 2.*/

SELECT P.id_cliente, P.nombre
FROM PACIENTE P
JOIN VISITA_MEDICA V ON P.id_cliente = V.id_paciente
GROUP BY P.id_cliente, P.nombre
HAVING COUNT(V.id_visita) = 2;

--Médicos con exactamente dos visitas durante el año actual

/*Esta consulta utiliza la función strftime de SQLite para extraer 
el año de la fecha de la visita y compararlo con el año actual ('now').
Luego agrupa por médico y aplica la misma lógica de conteo. */

SELECT M.id_medico, M.nombre
FROM MEDICO M
JOIN VISITA_MEDICA V ON M.id_medico = V.id_medico
WHERE strftime('%Y', V.fecha) = strftime('%Y', 'now')
GROUP BY M.id_medico, M.nombre
HAVING COUNT(V.id_visita) = 2;

--Pacientes con dos o más visitas por el mismo motivo

SELECT P.nombre, V.motivo
FROM PACIENTE P
JOIN VISITA_MEDICA V ON P.id_cliente = V.id_paciente
GROUP BY P.id_cliente, P.nombre, V.motivo
HAVING COUNT(V.id_visita) >= 2;
