CREATE TABLE Categoria (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Producto (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    marca VARCHAR(50),
    categoria_id INTEGER,
    precio_unitario REAL,
    FOREIGN KEY (categoria_id) REFERENCES Categoria(id)
);

CREATE TABLE Sucursal (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    direccion VARCHAR(50) 
);

CREATE TABLE Stock (
    id SERIAL PRIMARY KEY,
    sucursal_id INTEGER,
    producto_id INTEGER,
    cantidad INTEGER,
    CONSTRAINT unique_stock UNIQUE (sucursal_id, producto_id),
    FOREIGN KEY (sucursal_id) REFERENCES Sucursal(id),
    FOREIGN KEY (producto_id) REFERENCES Producto(id)
);

CREATE TABLE Cliente (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    telefono VARCHAR(20) 
);

CREATE TABLE Orden (
    id SERIAL PRIMARY KEY,
    cliente_id INTEGER,
    sucursal_id INTEGER,
    fecha DATE,
    total REAL,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(id),
    FOREIGN KEY (sucursal_id) REFERENCES Sucursal(id)
);

CREATE TABLE Item (
    id SERIAL PRIMARY KEY,
    orden_id INTEGER,
    producto_id INTEGER,
    cantidad INTEGER,
    monto_venta REAL,
    FOREIGN KEY (orden_id) REFERENCES Orden(id),
    FOREIGN KEY (producto_id) REFERENCES Producto(id)
);

