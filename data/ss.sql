USE car_prices_db;

DROP TABLE car_prices;

CREATE TABLE car_prices (
    make TEXT,
    model TEXT,
    year INT,
    sellingprice FLOAT,
    transmission TEXT,
    state TEXT
);

LOAD DATA INFILE 'C:/Users/Anusha/Desktop/Task2_Data_Visualization/data/car_prices.csv'
INTO TABLE car_prices
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM car_prices;
DROP TABLE car_prices;

CREATE TABLE car_prices (
    make TEXT,
    model TEXT,
    year INT,
    sellingprice FLOAT,
    transmission TEXT,
    state TEXT
);

LOAD DATA INFILE 'C:/Users/Anusha/Desktop/Task2_Data_Visualization/data/car_prices.csv'
INTO TABLE car_prices
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
SHOW VARIABLES LIKE 'secure_file_priv';
SELECT * FROM car_prices;

LOAD DATA INFILE 'C:/Users/Anusha/Desktop/Task2_Data_Visualization/data/car_prices.csv'
INTO TABLE car_prices
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
SHOW VARIABLES LIKE 'secure_file_priv';
SELECT * FROM car_prices;
SELECT * FROM car_prices;

SELECT make, AVG(sellingprice) AS avg_price
FROM car_prices
GROUP BY make;

SELECT transmission, COUNT(*) AS total_cars
FROM car_prices
GROUP BY transmission;