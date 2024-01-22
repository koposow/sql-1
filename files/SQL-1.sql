-- 1. начинаются на “K” и заканчиваются на “a” и не содержат пробелов.

SELECT DISTINCT district
FROM address
WHERE district LIKE 'K%a' AND district NOT LIKE '% %';


-- 2. платежы, которые выполнялись в промежуток с 15 июня 2005 года по 18 июня 2005 и сортировка по дате платеха - так красивее
SELECT *
FROM payment
WHERE payment_date >= '2005-06-15' AND payment_date <= '2005-06-18 23:59:59'
AND amount > 10.00
ORDER BY payment_date; 
 
-- 3. Получите последние пять аренд фильмов.

SELECT *
FROM rental
ORDER BY rental_date DESC
LIMIT 5;



-- 4. Одним запросом получите активных покупателей, имена которых Kelly или Willie. 
 
   SELECT 
 	REPLACE(LOWER(first_name), 'll', 'pp') AS formatted_first_name,
    REPLACE(LOWER(last_name), 'll', 'pp') AS formatted_last_name
FROM
    customer
WHERE
    (first_name = 'Kelly' OR first_name = 'Willie') AND active = 1;
    
   