SELECT s.nombre, SUM(o.total) as total_ventas
FROM sucursal s
JOIN orden o ON s.id = o.sucursal_id
GROUP BY s.nombre
ORDER BY s.nombre;