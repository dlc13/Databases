SELECT c.nombre, SUM(o.total) AS monto_compras
FROM cliente c 
JOIN orden o 
ON o.cliente_id = c.id
GROUP BY c.nombre
ORDER BY monto_compras DESC 
LIMIT 1;