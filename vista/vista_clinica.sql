--Historial de Atención (vista_agenda_citas)
CREATE VIEW vista_agenda_citas AS
SELECT 
    V.fecha, 
    V.motivo, 
    P.nombre AS nombre_paciente, 
    M.nombre AS nombre_medico
FROM VISITA_MEDICA V
JOIN PACIENTE P ON V.id_paciente = P.id_cliente
JOIN MEDICO M ON V.id_medico = M.id_medico
ORDER BY V.fecha DESC;

--Pacientes Recurrentes (vista_pacientes_recurrentes)

CREATE VIEW vista_pacientes_recurrentes AS
SELECT 
    P.id_cliente, 
    P.nombre AS nombre_paciente
FROM PACIENTE P
JOIN VISITA_MEDICA V ON P.id_cliente = V.id_paciente
GROUP BY P.id_cliente, P.nombre
HAVING COUNT(V.id_visita) = 2;