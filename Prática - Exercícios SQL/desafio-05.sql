SELECT (id) FROM clientes WHERE nome='Benício Freire Sampaio';
SELECT (id_produto) FROM compras WHERE id_cliente=2;
SELECT * FROM produtos WHERE id IN (9,7);

/* 
GABARITO:

SELECT * FROM produtos WHERE id IN (
  SELECT id_produto FROM compras WHERE id_cliente IN (
    SELECT id FROM clientes WHERE nome='Benício Freire Sampaio'
  )
); 
*/