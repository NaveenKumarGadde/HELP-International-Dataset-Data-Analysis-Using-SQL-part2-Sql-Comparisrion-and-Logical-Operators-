use country;

SELECT * FROM country.`country-data`;

-- Selecting the countries whose life expectancy greater than 70

SELECT * FROM country.`country-data`
WHERE life_expec > 70;

-- Selecting the countries whose life expectancy greater than or equal 70

SELECT * FROM country.`country-data`
WHERE life_expec >= 70;

-- Selecting the countries whose Inflation is leass than  or equal 20

SELECT * FROM country.`country-data`
WHERE inflation <= 20;


-- Selecting the countries whose Inflation is greater than  or equal to 8 but less than 20

SELECT * FROM country.`country-data`
WHERE inflation >= 8 and inflation <20;

-- Selecting all rows where country is India

SELECT * FROM country.`country-data`
WHERE country = 'India';



-- Selecting all rows where country is India and Albania

SELECT * FROM country.`country-data` 
WHERE country ='India' OR country ='Albania';

-- Selecting all the rows excluding Algeria

SELECT * FROM country.`country-data` 
WHERE country !='Algeria';


-- Selecting rows with income greater than 5000 and inflation less than 5

SELECT * FROM country.`country-data` 
WHERE income >= 5000 and  inflation  <= 5;


-- Selecting all the rows excluding Algeria and India

SELECT * FROM country.`country-data` 
WHERE country !='Algeria' OR country !='India';


-- Selecting all the rows where life expectancy equals to 60 

SELECT * FROM country.`country-data` 
WHERE life_expec = 60.5;


-- LOGICAL OPERATORS


use country;

SELECT * FROM country.`country-data`;

-- Selecting 10 countries that Start with letter K 

SELECT * FROM country.`country-data`
WHERE country LIKE 'K%';

SELECT * FROM country.`country-data`
WHERE country LIKE 'k%';

-- Selecting 10 countries that end with letter y

SELECT * FROM country.`country-data`
WHERE country LIKE '%Y';

SELECT * FROM country.`country-data`
WHERE country LIKE '%y';

-- Selecting the countries with some specific chartercters in middle of thier names 

SELECT * FROM country.`country-data`
WHERE country LIKE '%al%';

SELECT * FROM country.`country-data`
WHERE country LIKE '%AL%';

-- Selecting the countries where countries are Albania, Italy, and India

SELECT * FROM country.`country-data`
WHERE country IN ('Albania', 'Italy', 'India', 'Nepal');

-- Selecting the Countries with Income range between 5000 to 10000

SELECT * FROM country.`country-data`
WHERE income BETWEEN  5000 and 10000;


-- Selecting the countries where countries are Austria and Armenia

SELECT * FROM country.`country-data`
WHERE country IN ('Austria', 'Armenia');


-- Selecting all the countries where chil_mort is less than 10 and inflation is above 15 

SELECT * FROM country.`country-data`
WHERE child_mort < 10 and inflation > 15;

-- -- Selecting all the countries where chil_mort is less than 10 OR inflation is above 15 

SELECT * FROM country.`country-data`
WHERE child_mort < 10 OR inflation > 15;


-- Selecting all the countries excluding for Angola 

SELECT * FROM country.`country-data`
WHERE country NOT IN ('Angola');

-- Seleecting all the Countries that did not share exports data 

SELECT * FROM country.`country-data`
WHERE exports IS NULL;

SELECT * FROM country.`country-data`
WHERE exports IS NOT NULL;


-- Distinct function 

use country;

SELECT * FROM country.`country-data`;

-- Distinct the list of countries

SELECT distinct country 
FROM country.`country-data`;

-- Distinct count, count countries

SELECT  count(country) as total_no_countries, count(distinct(country)) as distinct_countries 
FROM country.`country-data`;
