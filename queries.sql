-- Top 5 expensive cars
SELECT make, model, sellingprice
FROM car_prices
ORDER BY sellingprice DESC
LIMIT 5;

-- Average price by brand
SELECT make, AVG(sellingprice) AS avg_price
FROM car_prices
GROUP BY make
ORDER BY avg_price DESC;

-- Most common transmission
SELECT transmission, COUNT(*) AS total
FROM car_prices
GROUP BY transmission
ORDER BY total DESC;

-- Price trend by year
SELECT year, AVG(sellingprice) AS avg_price
FROM car_prices
GROUP BY year
ORDER BY year;

-- Average price by body type
SELECT body, AVG(sellingprice) AS avg_price
FROM car_prices
GROUP BY body
ORDER BY avg_price DESC;

-- Count of cars per brand
SELECT make, COUNT(*) AS total_cars
FROM car_prices
GROUP BY make
ORDER BY total_cars DESC;

-- Cheapest cars
SELECT make, model, sellingprice
FROM car_prices
ORDER BY sellingprice ASC
LIMIT 5;