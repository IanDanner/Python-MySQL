-- 1. Get all countries that speak Slovene. Return country_name, language, language_percent. Arranged by language_percent descending order.

-- SELECT countries.name, languages.language, languages.percentage  FROM countries
-- JOIN languages ON countries.code = languages.country_code
-- WHERE language LIKE "Slovene"
-- ORDER BY percentage DESC;

-- 2. Display total number of cities for each country. Return country_name, total number of cities. Arranged by number of cities descending order.

-- SELECT countries.name AS country, COUNT(cities.id) AS total_cities FROM countries
-- JOIN cities ON countries.code = cities.country_code
-- GROUP BY countries.code
-- ORDER BY COUNT(cities.id) DESC;

-- 3. Get all cities in Mexico with population > 500,000. Arranged by population descending order.

-- SELECT cities.name, cities.population From cities
-- JOIN countries ON cities.country_id = countries.id
-- WHERE countries.name = 'Mexico' and cities.population > 500000
-- ORDER BY cities.population DESC;

-- 4. Get all languages in each country with a percentage greater than 89%? Result by percentage in descending order.

-- SELECT countries.name, languages.language, languages.percentage FROM countries
-- JOIN languages ON countries.code = languages.country_code
-- WHERE languages.percentage > 89
-- ORDER BY languages.percentage DESC;

-- 5. Get all the countries with Surface Area below 501 and Population > 100,000?

-- SELECT countries.name, countries.surface_area, countries.population FROM countries
-- WHERE countries.surface_area < 501 AND countries.population > 100000;

-- 6. Get countries with only Constitutional Monarchy with a capital greater than 200 and a life expectancy greater than 75 years? (1)

-- SELECT name, government_form, capital, life_expectancy FROM countries
-- WHERE government_form LIKE "Constitutional Monarchy" AND capital > 200 AND life_expectancy > 75;

-- 7. Get all the cities of Argentina inside the Buenos Aires district and have the population > 500,000? Return the Country Name, City Name, District and Population.

-- SELECT countries.name AS country_name, cities.name AS city_name, cities.district, cities.population FROM cities
-- JOIN countries ON cities.country_id = countries.id
-- WHERE countries.name LIKE "Argentina" AND cities.district LIKE "Buenos Aires" AND cities.population > 500000;

-- 8. Summarize the number of countries in each region? Display region_name and number_of_countries. Arrange by number_of_countries in descending order.

-- SELECT region, COUNT(id) AS number_of_countries FROM countries
-- GROUP BY region
-- ORDER BY COUNT(id) DESC;