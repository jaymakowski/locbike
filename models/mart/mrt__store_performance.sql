SELECT 
    store_name,
    ROUND(SUM(CASE WHEN shipped_on_time = 'shipped_late' THEN 1 ELSE 0 END) /
     SUM(CASE WHEN order_status = 'shipped' THEN 1 ELSE 0 END),2) as shipped_late_rate
FROM {{ ref('int__orders') }}
GROUP BY 1