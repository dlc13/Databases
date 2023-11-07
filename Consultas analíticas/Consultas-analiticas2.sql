SELECT sucursal_id, sucursal.nombre, SUM(cantidad) as cantidad_total 
FROM stock
JOIN sucursal ON stock.sucursal_id = sucursal.id
GROUP BY sucursal_id, sucursal.nombre
ORDER BY sucursal_id;
