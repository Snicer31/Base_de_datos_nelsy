-- Insertar datos sobre pacientes
INSERT INTO "PACIENTE" ("nombre", "telefono") 
VALUES ('Juan Pérez', 04129491953);

INSERT INTO "PACIENTE" ("nombre", "telefono") 
VALUES ('María García', 04149867643);

INSERT INTO "PACIENTE" ("nombre", "telefono") 
VALUES ('Carlos López', 04125558899);

INSERT INTO "PACIENTE" ("nombre", "telefono") 
VALUES ('Ana Rodríguez', 04161162233);

INSERT INTO "PACIENTE" ("nombre", "telefono") 
VALUES ('Luis Martínez', 04265778899);

INSERT INTO "PACIENTE" ("nombre", "telefono") 
VALUES ('Jessica Benavides', 04265778199);

INSERT INTO "PACIENTE" ("nombre", "telefono") 
VALUES ('Milangela Larez', 04265778439);




--Insertar datos sobre medicos

INSERT INTO "MEDICO" ("nombre", "especialidad") 
VALUES ('Dr. José Silva', 'Cardiología');

INSERT INTO "MEDICO" ("nombre", "especialidad") 
VALUES ('Dra. Carmen Suárez', 'Pediatría');

INSERT INTO "MEDICO" ("nombre", "especialidad") 
VALUES ('Dr. Pedro Gómez', 'Medicina General');

INSERT INTO "MEDICO" ("nombre", "especialidad") 
VALUES ('Dra. Elena Ruiz', 'Dermatología');

INSERT INTO "MEDICO" ("nombre", "especialidad") 
VALUES ('Dr. Roberto Fernández', 'Neurología');

--Insertar datos sobre las consultas/visitas medicas

-- 1. Neurología (Dr. Roberto Fernández, ID: 5) para dolor de cabeza crónico
INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-10-01', 'Dolor de cabeza crónico', 1, 5);

-- 2. Medicina General (Dr. Pedro Gómez, ID: 3) para dolor de estómago
INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-10-26', 'Dolor de estomago', 1, 3);

-- 3. Pediatría (Dra. Carmen Suárez, ID: 2) para control de niño sano
INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-10-05', 'Control de niño sano', 2, 2);

-- 4. Medicina General (Dr. Pedro Gómez, ID: 3) para fiebre y malestar
INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-10-05', 'Fiebre y malestar general', 3, 3);

-- 5. Dermatología (Dra. Elena Ruiz, ID: 4) para erupción cutánea
INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-10-12', 'Erupción cutánea', 4, 4);

-- 6. Cardiología (Dr. José Silva, ID: 1) para control de presión arterial
INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-10-15', 'Control de presión arterial', 5, 1);

-- 7. Cardiología (Dr. José Silva, ID: 1) para control de presión arterial
INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-11-15', 'Control de presión arterial', 5, 1);

-- Visitas de seguimiento con Neurología (ID: 5) y Medicina General (ID: 3)
INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-02-10', 'Dolor de cabeza crónico', 1, 5);

INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-07-22', 'Dolor de cabeza crónico', 1, 5);

INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-03-05', 'Dolor de estomago', 1, 3);

-- Visitas de seguimiento con Pediatría (ID: 2)
INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-04-15', 'Control de niño sano', 2, 2);

INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-10-10', 'Control de niño sano', 2, 2);

-- Visitas de seguimiento con Cardiología (ID: 1)
INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-01-20', 'Control de presión arterial', 5, 1);

INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-06-18', 'Control de presión arterial', 5, 1);


INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-06-18', 'Control de presión arterial', 5, 1);


INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-06-18', 'Control de presión arterial', 5, 1);

INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-06-18', 'Control de presión arterial', 6, 1);

INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-06-20', 'Control de presión arterial', 6, 1);

INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-06-26', 'Control de presión arterial', 7, 2);

INSERT INTO "VISITA_MEDICA" ("fecha", "motivo", "id_paciente", "id_medico") 
VALUES ('2026-06-28', 'Control de presión arterial', 7, 2);