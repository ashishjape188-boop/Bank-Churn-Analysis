CREATE DATABASE churn_db;

USE churn_db;

CREATE TABLE customers (

RowNumber INT,
CustomerId INT,
Surname VARCHAR(50),
CreditScore INT,
Geography VARCHAR(50),
Gender VARCHAR(10),
Age INT,
Tenure INT,
Balance FLOAT,
NumOfProducts INT,
HasCrCard INT,
IsActiveMember INT,
EstimatedSalary FLOAT,
Exited INT

);

SELECT 
    COUNT(*) AS total_customers,

    SUM(CASE 
        WHEN Exited = 1 
        THEN 1 
        ELSE 0 
    END) AS churned_customers,

    ROUND(
        SUM(CASE 
            WHEN Exited = 1 
            THEN 1 
            ELSE 0 
        END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate_percentage

FROM churn_db.churn_modelling;

SELECT 
    Geography,

    COUNT(*) AS total_customers,

    SUM(CASE 
        WHEN Exited = 1 
        THEN 1 
        ELSE 0 
    END) AS churned,

    ROUND(
        SUM(CASE 
            WHEN Exited = 1 
            THEN 1 
            ELSE 0 
        END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate

FROM churn_db.churn_modelling

GROUP BY Geography

ORDER BY churn_rate DESC;

SELECT 
    Gender,
    COUNT(*) AS total,
    SUM(CASE
        WHEN Exited = 1 THEN 1
        ELSE 0
    END) AS churned
FROM
    churn_db.churn_modelling
GROUP BY Gender;


SELECT 
    IsActiveMember,

    COUNT(*) AS total,

    SUM(CASE 
        WHEN Exited = 1 
        THEN 1 
        ELSE 0 
    END) AS churned

FROM churn_db.churn_modelling

GROUP BY IsActiveMember;


SELECT 
    NumOfProducts,

    COUNT(*) AS total,

    SUM(CASE 
        WHEN Exited = 1 
        THEN 1 
        ELSE 0 
    END) AS churned

FROM churn_db.churn_modelling

GROUP BY NumOfProducts

ORDER BY NumOfProducts;

