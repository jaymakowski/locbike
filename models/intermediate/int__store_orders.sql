SELECT
    s.store_id,
    s.store_name,
    o.order_id,
    o.order_date,
    o.required_date,
    o.order_status,
    CASE WHEN o.required_date < o.shipped_date THEN 'shipped_late'
        WHEN o.required_date >= o.shipped_date THEN 'shipped_on_time'
        WHEN o.shipped_date is NULL THEN 'not_shipped'
        END as shipped_on_time,
    COUNT(DISTINCT o.order_item_id) as order_volume,
    SUM(o.quantity) as product_volume,
    CAST(ROUND(SUM(o.discount_applied_order_item_total),2) as DECIMAL) discount_applied_order_total,
    CAST(ROUND(SUM(o.discount_applied_order_item_total),2) as DECIMAL) as non_discounted_order_total
FROM {{ ref('int__orders') }} as o
JOIN {{ ref('stg_sales__stores') }} as s on s.store_id = o.store_id 
GROUP BY ALL 
ORDER BY 2 desc