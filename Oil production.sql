
---Data cleaning


---Removing duplicate
SELECT DISTINCT product
FROM oil_production_statistics


SELECT DISTINCT flow
FROM oil_production_statistics


SELECT DISTINCT country_name
FROM oil_production_statistics


---Generating insight and metrics

SELECT * FROM oil_production_statistics


---Country name with their product they specialize in.
SELECT country_name,product
FROM oil_production_statistics


---Country name total value product
SELECT country_name,product,MAX(value) Total_value
FROM oil_production_statistics
GROUP BY country_name,product
ORDER BY Total_value DESC


---The most productive year 
SELECT year,MAX(value) Higest_yr_earning
FROM oil_production_statistics
GROUP BY year


---Each product under flow category
SELECT DISTINCT product,flow
FROM oil_production_statistics


---Total value of flow category
SELECT flow,MAX(value) 'Total_flow value'
FROM oil_production_statistics
GROUP BY flow
ORDER BY [Total_flow value] DESC


---country with higest value
SELECT country_name,MAX(value) 'Country value'
FROM oil_production_statistics
GROUP BY country_name
ORDER BY [Country value] DESC


---Country revenue of each product on year basis.
SELECT country_name,product,year,MAX(value) Total_value
FROM oil_production_statistics
GROUP BY country_name,product,year
ORDER BY Total_value DESC
