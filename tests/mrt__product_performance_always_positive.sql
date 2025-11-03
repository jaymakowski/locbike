SELECT 
    product_name,
    order_month,
    order_count,
    quantity_total,
    product_sales_total,
FROM {{ ref('mrt__product_performance') }}
WHERE FALSE 
OR    order_count  < 0
OR    quantity_total  < 0
OR    product_sales_total  < 0