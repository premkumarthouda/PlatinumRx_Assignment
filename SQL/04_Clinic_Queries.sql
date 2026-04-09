SELECT sales_channel, SUM(amount) AS total_revenue
FROM clinic_sales
WHERE YEAR(datetime) = 2021
GROUP BY sales_channel;



SELECT c.name, s.uid, SUM(s.amount) AS total_spent
FROM clinic_sales s
JOIN customer c ON s.uid = c.uid
WHERE YEAR(s.datetime) = 2021
GROUP BY s.uid, c.name
ORDER BY total_spent DESC
LIMIT 10;


SELECT 
    r.month, 
    r.monthly_revenue, 
    COALESCE(e.monthly_expense, 0) AS monthly_expense,
    (r.monthly_revenue - COALESCE(e.monthly_expense, 0)) AS profit,
    CASE 
        WHEN (r.monthly_revenue - COALESCE(e.monthly_expense, 0)) > 0 THEN 'Profitable' 
        ELSE 'Not-profitable' 
    END AS status
FROM (
    SELECT DATE_FORMAT(datetime, '%Y-%m') AS month, SUM(amount) AS monthly_revenue
    FROM clinic_sales 
    WHERE YEAR(datetime) = 2021
    GROUP BY month
) r
LEFT JOIN (
    SELECT DATE_FORMAT(datetime, '%Y-%m') AS month, SUM(amount) AS monthly_expense
    FROM expenses 
    WHERE YEAR(datetime) = 2021
    GROUP BY month
) e ON r.month = e.month;


WITH ClinicProfit AS (
    SELECT c.city, c.clinic_name, 
           SUM(s.amount) AS total_revenue,
           RANK() OVER(PARTITION BY c.city ORDER BY SUM(s.amount) DESC) as rnk
    FROM clinics c
    JOIN clinic_sales s ON c.cid = s.cid
    WHERE DATE_FORMAT(s.datetime, '%Y-%m') = '2021-09'
    GROUP BY c.city, c.clinic_name
)
SELECT city, clinic_name, total_revenue
FROM ClinicProfit
WHERE rnk = 1;

WITH StateProfit AS (
    SELECT c.state, c.clinic_name, 
           SUM(s.amount) AS total_revenue,
           DENSE_RANK() OVER(PARTITION BY c.state ORDER BY SUM(s.amount) ASC) as rnk
    FROM clinics c
    JOIN clinic_sales s ON c.cid = s.cid
    WHERE DATE_FORMAT(s.datetime, '%Y-%m') = '2021-09'
    GROUP BY c.state, c.clinic_name
)
SELECT state, clinic_name, total_revenue
FROM StateProfit
WHERE rnk = 2;
