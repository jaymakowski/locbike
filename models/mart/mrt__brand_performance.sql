SELECT 
    brand_name,
    FORMAT_DATE('%b-%Y', DATE_TRUNC(order_date,MONTH)) as order_month,
    COUNT(DISTINCT order_id) AS order_count,
    SUM(quantity) as quantity_total,
    SUM(discount_applied_order_item_total) as brand_sales_total,
FROM {{ ref('int__product_sales') }} as ps
GROUP BY 1,2