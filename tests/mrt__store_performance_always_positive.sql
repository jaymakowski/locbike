SELECT 
    store_name,
    order_month,
    store_order_volume_total,
    store_product_volume_total,
    store_sales_total
FROM {{ ref('mrt__store_performance') }}
WHERE FALSE 
OR    store_order_volume_total  < 0
OR    store_product_volume_total  < 0
OR    store_sales_total  < 0