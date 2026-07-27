CREATE TABLE IF NOT EXISTS "PACIENTE"(
    "id_cliente" INTEGER PRIMARY KEY AUTOINCREMENT,
    "nombre" TEXT,
    "telefono" INTEGER
);

CREATE TABLE IF NOT EXISTS "VISITA_MEDICA"(
    "id_visita" INTEGER PRIMARY KEY AUTOINCREMENT,
    "fecha" TEXT,
    "motivo" TEXT,
    "id_paciente" INTEGER,
	"id_medico" INTEGER,
    FOREIGN KEY ("id_paciente") REFERENCES PACIENTE("id_cliente")
    FOREIGN KEY ("id_medico") REFERENCES MEDICO("id_medico")
);

CREATE TABLE IF NOT EXISTS "MEDICO"(
    "id_medico" INTEGER PRIMARY KEY AUTOINCREMENT,
    "nombre" TEXT,
    "especialidad" TEXT
);