    CREATE TABLE IF NOT EXISTS "CLIENTE"(
        "id_cliente" INTEGER PRIMARY KEY AUTOINCREMENT,
        "nombre" TEXT,
        "correo" TEXT
    );
    CREATE TABLE IF NOT EXISTS "PEDIDO"(
        "id_pedido" INTEGER PRIMARY KEY AUTOINCREMENT,
        "fecha" TEXT,
        "monto" REAL,
        FOREIGN KEY ("id_cliente") REFERENCES CLIENTE ("id_cliente")
    );    