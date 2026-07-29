CREATE TABLE IF NOT EXISTS "CLIENTE"(
    "id_cliente" INTEGER PRIMARY KEY AUTOINCREMENT,
    "nombre" TEXT,
    "correo" TEXT
);

CREATE TABLE IF NOT EXISTS "PEDIDO"(
    "id_pedido" INTEGER PRIMARY KEY AUTOINCREMENT,
    "id_cliente" INTEGER,
    "fecha" TEXT,
    "monto" REAL,
    FOREIGN KEY ("id_cliente") REFERENCES CLIENTE ("id_cliente")
);

INSERT INTO "CLIENTE" ("nombre", "correo") VALUES
('Juan Perez', 'juan@gmail.com'),
('Maria Lopez', 'maria@hotmail.com'),
('Carlos Martinez', 'carlos@yahoo.com');

INSERT INTO "PEDIDO" ("id_cliente", "fecha", "monto") VALUES
(1, '2026-07-20', 600.00),
(1, '2026-07-21', 150.00),
(2, '2026-07-22', 800.00),
(3, '2026-07-23', 300.00),
(3, '2026-07-24', 200.00),
(3, '2026-07-25', 100.00);

--Clientes que tengan pedidos con cantidades mayores a 500$

SELECT C.nombre, P.fecha, P.monto
FROM "CLIENTE" C
JOIN "PEDIDO" P ON C.id_cliente = P.id_cliente
WHERE P.monto > 500;

--clientes con exactamente dos pedidos
SELECT C.id_cliente, C.nombre
FROM "CLIENTE" C
JOIN "PEDIDO" P ON C.id_cliente = P.id_cliente
GROUP BY C.id_cliente, C.nombre
HAVING COUNT(P.id_pedido) = 2;

--

SELECT C.nombre, SUM(P.monto) AS monto_total
FROM "CLIENTE" C
JOIN "PEDIDO" P ON C.id_cliente = P.id_cliente
GROUP BY C.id_cliente, C.nombre
ORDER BY monto_total DESC;
