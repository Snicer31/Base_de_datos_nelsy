¡-- Tabla fuerte (Almacén)
CREATE TABLE IF NOT EXISTS ALMACEN (
    id_almacen INT PRIMARY KEY,
    ubicacion TEXT    
);

-- Tabla débil (Sección)
CREATE TABLETABLE IF NOT EXISTS SECCION (
    id_seccion INT,
    id_almacen INT,
    capacidad INT,
    PRIMARY KEY (id_seccion, id_almacen),          -- Clave primaria compuesta
    FOREIGN KEY (id_almacen) REFERENCES ALMACEN(id_almacen)  
);