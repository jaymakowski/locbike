SELECT 
    store_name,
    FORMAT_DATE('%b-%Y', DATE_TRUNC(order_date,MONTH)) as order_month,
    DATE_TRUNC(order_date,MONTH) as order_month_first_day,
    ROUND(SUM(CASE WHEN shipped_on_time = 'shipped_late' THEN 1 ELSE 0 END) /
    NULLIF(SUM(CASE WHEN order_status = 'shipped' THEN 1 ELSE 0 END),0),2) as shipped_late_rate,
    SUM(order_volume) as store_order_volume_total,
    SUM(product_volume) as store_product_volume_total,
    SUM(discount_applied_order_total) as store_sales_total,
    NULLIF(SUM(non_discounted_order_total - discount_applied_order_total),0)
    /NULLIF(SUM(discount_applied_order_total),0) as discount_rate

FROM {{ ref('int__store_orders') }}
GROUP BY 1,2, 3
ORDER BY order_month_first_day desc