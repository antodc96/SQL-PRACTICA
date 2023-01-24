#SELECT * 
#FROM productos, categorias
#WHERE productos.categoria_id = categorias.id

SELECT p.id AS categoria_id, p.nombre AS Producto, 
			c.id, c.nombre AS Categoría
FROM productos AS p
RIGHT JOIN categorias AS c
ON p.categoria_id = c.id
ORDER BY c.id

# ---

SELECT COUNT(*) AS Ciudades, country.Name
FROM city
INNER JOIN country ON country.Code = city.CountryCode
WHERE country.Name LIKE '%en%'
GROUP BY CountryCode
HAVING Ciudades > 5

# ---

SELECT city.Name, country.Name, l.Language
FROM city
INNER JOIN country 
ON country.Code = city.CountryCode
INNER JOIN countrylanguage AS l
ON l.CountryCode = country.Code
WHERE l.IsOfficial = 'T'

# ---

SELECT usuarios.email, roles.nombre AS Role
FROM usuarios
INNER JOIN usuario_role 
	ON usuario_role.usuario_id = usuarios.id
INNER JOIN roles
	ON roles.id = usuario_role.role_id