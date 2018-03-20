-- Get all countries that speak Slovene. Return country_name, language, language_percent. Arranged by language_percent descending order.
SELECT countries.name, languages.language, languages.percentage  FROM countries
JOIN languages ON countries.code = languages.country_code
WHERE language LIKE "Slovene"
ORDER BY percentage DESC;
-- Display total number of cities for each country. Return country_name, total number of cities. Arranged by number of cities descending order.

-- Get all cities in Mexico with population greater than 500,000. Arranged by population descending order.