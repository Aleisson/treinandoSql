--2602 
SELECT "name" FROM customers WHERE "state" = "RS";

--2603
SELECT customers.name, customers.street FROM customers
WHERE customers.city = 'Porto Alegre';

--2604 menores que 10 ou maiores que 100;
SELECT products.id, products.name  from products
WHERE products.price < 10 OR products.price > 100;

--2605 - Representantes Executivos
SELECT products.name, providers.name from products
INNER join providers
on products.id_providers = providers.id
WHERE products.id_categories = 6;

--2606 - Categorias;
SELECT products.id, products.name FROM products
INNER JOIN categories on products.id_categories = categories.id
WHERE categories.name LIKE 'super%';

--2607 - Cidades em Ordem Alfabética;
SELECT DISTINCT providers.city from providers
ORDER by providers.city;

-- 2608 - Maior e Menor Preço; 
SELECT max(products.price) as price, min(products.price) AS price from products;

-- 2609 - Produtos por Categoria;
SELECT categories.name, SUM(products.amount) from products
INNER JOIN categories ON categories.id = products.id_categories
GROUP BY categories.name ORDER BY categories.name;