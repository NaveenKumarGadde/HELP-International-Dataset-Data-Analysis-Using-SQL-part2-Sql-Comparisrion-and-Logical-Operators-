use country;

SELECT * FROM country.`country-data`;

-- Distinct the list of countries

SELECT distinct country 
FROM country.`country-data`;

-- Distinct count, count countries

SELECT  count(country) as total_no_countries, count(distinct(country)) as distinct_countries 
FROM country.`country-data`;
