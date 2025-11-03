SELECT 
    category_name,
    order_month,
    order_count,
    quantity_total,
    category_sales_total
FROM {{ ref('mrt__category_performance') }}
WHERE FALSE 
OR    order_count < 0
OR    quantity_total < 0
OR    category_sales_total < 0