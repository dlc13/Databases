SELECT cliente_id, cliente.nombre, SUM(total) as ventas_totales
FROM orden
JOIN cliente ON orden.cliente_id = cliente.id
GROUP BY cliente_id, cliente.nombre,
ORDER BY cliente_id;