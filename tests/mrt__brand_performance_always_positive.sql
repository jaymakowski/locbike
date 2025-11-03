SELECT 
    brand_name,
    order_month,
    order_count,
    quantity_total,
    brand_sales_total
FROM {{ ref('mrt__brand_performance') }}
WHERE FALSE 
OR    order_count < 0
OR    quantity_total < 0
OR    brand_sales_total < 0