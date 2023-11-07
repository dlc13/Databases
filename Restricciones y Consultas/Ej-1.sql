SELECT c.nombre AS categoria, AVG(p.precio_unitario) AS precio_promedio
FROM Categoria c
LEFT JOIN Producto p ON c.id = p.categoria_id
GROUP BY categoria_id, c.nombre
ORDER BY categoria_id;
