SELECT u.id, first_name, last_name, email, street, house_number, c.name AS city_name
FROM users AS u
INNER JOIN addresses AS a ON u.address_id=a.city_id
INNER JOIN cities as c on a.city_id=c.id
WHERE c.id=2 OR c.id=3
ORDER BY u.id DESC;