SELECT c.nombre AS categoria, COALESCE(sum(s.cantidad), 0) AS cantidad_en_stock
FROM categoria c
LEFT JOIN producto p ON p.categoria_id = c.id
LEFT JOIN stock s ON s.producto_id = p.id
GROUP BY c.id;