-- 1. Insertar Médicos Adicionales
INSERT INTO MEDICO (nombre, especialidad) VALUES
('Dr. Mendez', 'Medicina Interna'),  -- Tendrá exactamente 2 consultas
('Dra. Castillo', 'Dermatología'),   -- Tendrá exactamente 2 consultas
('Dr. Rojas', 'Neurología'),         -- Tendrá exactamente 2 consultas
('Dra. Leon', 'Medicina General');   -- Atenderá el resto de las consultas (más de 2)

-- 2. Insertar 15 Pacientes
INSERT INTO PACIENTE (nombre, telefono) VALUES
('Andres Bello', 4141112233),
('Sofia Blanco', 4242223344),
('Luis Herrera', 4123334455),
('Camila Suarez', 4164445566),
('Diego Torres', 4265556677),
('Valeria Pinto', 4146667788),
('Mateo Silva', 4247778899),
('Isabella Castro', 4128889900),
('Santiago Vega', 4169990011),
('Lucia Mendoza', 4261011122),
('Gabriel Ortiz', 4142122233),
('Daniela Rios', 4243233344),
('Fernando Mora', 4124344455),
('Amanda Gil', 4165455566),
('Alejandro Cruz', 4266566677);

-- 3. Insertar Visitas Médicas (Año 2026)
INSERT INTO VISITA_MEDICA (fecha, motivo, id_paciente, id_medico) VALUES

-- GRUPO A: 2 Visitas, Mismo Motivo (Aparecen en Consulta 1, Consulta 3 y Vista 2)
('2026-02-01', 'Migraña', 1, 1),
('2026-02-15', 'Migraña', 1, 4),

('2026-03-05', 'Hipertensión', 2, 2),
('2026-03-20', 'Hipertensión', 2, 4),

('2026-04-10', 'Asma', 3, 3),
('2026-04-25', 'Asma', 3, 4),

('2026-05-02', 'Control de rutina', 4, 4),
('2026-05-30', 'Control de rutina', 4, 4),

('2026-06-12', 'Dolor lumbar', 5, 4),
('2026-06-26', 'Dolor lumbar', 5, 4),

-- GRUPO B: 2 Visitas, Distinto Motivo (Aparecen en Consulta 1 y Vista 2, pero NO en Consulta 3)
('2026-07-01', 'Gripe', 6, 1),
('2026-07-10', 'Fiebre', 6, 4),

('2026-07-15', 'Alergia', 7, 2),
('2026-08-01', 'Revisión general', 7, 4),

('2026-08-05', 'Infección', 8, 3),
('2026-08-15', 'Mareos', 8, 4),

('2026-09-02', 'Gastroenteritis', 9, 4),
('2026-09-10', 'Fatiga crónica', 9, 4),

('2026-09-20', 'Insomnio', 10, 4),
('2026-10-05', 'Ansiedad', 10, 4),

-- GRUPO C: 1 o 3 Visitas (Solo aparecen en el Historial general o en Consulta 3 si repiten motivo)
-- Pacientes con 1 visita (Excluidos de Consulta 1, Vista 2 y Consulta 3)
('2026-10-10', 'Cefalea', 11, 4),
('2026-10-15', 'Traumatismo', 12, 4),
('2026-12-05', 'Nutrición', 15, 4),

-- Paciente con 3 visitas, mismo motivo (Aparece SOLO en Consulta 3 por el >= 2)
('2026-11-01', 'Terapia física', 13, 4),
('2026-11-10', 'Terapia física', 13, 4),
('2026-11-20', 'Terapia física', 13, 4),

-- Paciente con 3 visitas, distinto motivo (Excluido de todas las consultas restrictivas)
('2026-12-10', 'Tos seca', 14, 4),
('2026-12-15', 'Resultados de laboratorio', 14, 4),
('2026-12-20', 'Evaluación preoperatoria', 14, 4);