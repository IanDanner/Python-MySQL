-- 1. Get all the customers inside city_id = 312? Return customer first name, last name, email, and address.

-- SELECT customer.first_name, customer.last_name, customer.email, address.address FROM customer
-- JOIN address ON customer.address_id = address.address_id
-- WHERE address.address_id = 312

-- 2. Get all comedy films? Return film title, description, release year, rating, special features, and genre (category).

-- SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name AS genre FROM film
-- JOIN film_category ON film.film_id = film_category.film_id
-- JOIN category ON film_category.category_id = category.category_id
-- WHERE category.name LIKE "comedy"

-- 3. Get all the films joined by actor_id=5? Rreturn the actor id, actor name, film title, description, and release year.

-- SELECT actor.actor_id, CONCAT(actor.first_name,'_', actor.last_name) AS actor_name, film.title AS film_title, film.description, film.release_year FROM actor
-- JOIN film_actor ON actor.actor_id = film_actor.actor_id
-- JOIN film ON film_actor.film_id = film.film_id
-- WHERE actor.actor_id = 5;

-- 4. Get all the customers in store_id = 1 and inside these cities (1, 42, 312 and 459)? Return customer first name, last name, email, and address.

-- SELECT customer.first_name, customer.last_name, customer.email, address.address, city.city_id, store.store_id FROM customer
-- JOIN store ON customer.store_id = store.store_id
-- JOIN address ON customer.address_id = address.address_id
-- JOIN city ON address.city_id = city.city_id
-- WHERE store.store_id = 1 AND city.city_id = 1 and 42 and 312 and 459

-- 5. Get all the films with a "rating = G" and "special feature = behind the scenes", joined by actor_id = 15? Return the film title, description, release year, rating, and special feature. Hint: You may use LIKE function in getting the 'behind the scenes' part.

-- SELECT film.title, film.description, film.release_year, film.rating, film.special_features, film_actor.actor_id FROM film
-- JOIN film_actor ON film.film_id = film_actor.film_id
-- WHERE film.rating = 'G' AND film.special_features LIKE "behind the scenes" AND film_actor.actor_id = 15

-- 6. Get all the actors that joined in the film_id = 369? Return the film_id, title, actor_id, and actor_name.

-- SELECT film.film_id, film.title, film_actor.actor_id, CONCAT(actor.first_name,'_', actor.last_name) AS actor_name FROM film
-- JOIN film_actor ON film.film_id = film_actor.film_id
-- JOIN actor ON film_actor.actor_id = actor.actor_id
-- WHERE film.film_id = 369

-- 7. Get all drama films with a rental rate of 2.99? Return film title, description, release year, rating, special features, and genre (category).

-- SELECT film.title AS film_title, film.description, film.release_year, film.rating, film.special_features, category.name AS genre FROM film
-- JOIN film_category ON film.film_id = film_category.film_id
-- JOIN category ON film_category.category_id = category.category_id
-- WHERE category.name LIKE "drama" and film.rental_rate = 2.99

-- 8. Get all the action films which are joined by SANDRA KILMER? Return film title, description, release year, rating, special features, genre (category), and actor's first name and last name.

-- SELECT film.title AS film_title, film.description, film.release_year, film.rating, film.special_features, category.name AS genre, actor.first_name AS actor_first_name, actor.last_name AS actor_last_name FROM film
-- JOIN film_category ON film.film_id = film_category.film_id
-- JOIN category ON film_category.category_id = category.category_id
-- JOIN film_actor ON film.film_id = film_actor.film_id
-- JOIN actor ON film_actor.actor_id = actor.actor_id
-- WHERE category.name LIKE "action" AND actor.first_name LIKE "sandra" AND actor.last_name LIKE "kilmer"