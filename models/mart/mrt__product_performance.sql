SELECT 
    product_name,
    FORMAT_DATE('%b-%Y', DATE_TRUNC(order_date,MONTH)) as order_month,
    COUNT(DISTINCT order_id) AS order_count,
    SUM(quantity) as quantity_total,
    SUM(discount_applied_order_item_total) as product_sales_total,
    NULLIF(SUM(non_discounted_order_total - discount_applied_order_total),0)
    /NULLIF(SUM(discount_applied_order_total),0) as product_discount_rate
FROM {{ ref('int__products_sales') }} as ps
GROUP BY 1,2