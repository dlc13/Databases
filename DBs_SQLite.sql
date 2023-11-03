CREATE TABLE Categoria (
    id INTEGER PRIMARY KEY,
    nombre TEXT
);

CREATE TABLE Producto (
    id INTEGER PRIMARY KEY,
    nombre TEXT,
    marca TEXT,
    categoria_id INTEGER,
    precio_unitario REAL,
    FOREIGN KEY (categoria_id) REFERENCES Categoria(id)
);

CREATE TABLE Sucursal (
    id INTEGER PRIMARY KEY,
    nombre TEXT,
    direccion TEXT
);

CREATE TABLE Stock (
    id INTEGER PRIMARY KEY,
    sucursal_id INTEGER,
    producto_id INTEGER,
    cantidad INTEGER,
    UNIQUE (sucursal_id, producto_id),
    FOREIGN KEY (sucursal_id) REFERENCES Sucursal(id),
    FOREIGN KEY (producto_id) REFERENCES Producto(id)
);

CREATE TABLE Cliente (
    id INTEGER PRIMARY KEY,
    nombre TEXT,
    telefono TEXT
);

CREATE TABLE Orden (
    id INTEGER PRIMARY KEY,
    cliente_id INTEGER,
    sucursal_id INTEGER,
    fecha DATE,
    total REAL,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(id),
    FOREIGN KEY (sucursal_id) REFERENCES Sucursal(id)
);

CREATE TABLE Item (
    id INTEGER PRIMARY KEY,
    orden_id INTEGER,
    producto_id INTEGER,
    cantidad INTEGER,
    monto_venta REAL,
    FOREIGN KEY (orden_id) REFERENCES Orden(id),
    FOREIGN KEY (producto_id) REFERENCES Producto(id)
);