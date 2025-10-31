SELECT
    o.order_id,
    o.order_date,
    o.required_date,
    o.order_status,
    CASE WHEN required_date < shipped_date THEN 'shipped_late'
        WHEN required_date >= shipped_date THEN 'shipped_on_time'
        WHEN shipped_date is NULL THEN 'not_shipped'
        END as shipped_on_time,
    s.store_name,
    COUNT(DISTINCT oi.order_item_id) as order_volume,
    CAST(ROUND(SUM(oi.discount_applied_order_item_total),2) as DECIMAL) discount_applied_order_total,
    CAST(ROUND(SUM(oi.discount_applied_order_item_total),2) as DECIMAL) as non_discounted_order_total


    --customer_id,
    --order_status,
    --order_date,
    --required_date,
    --shipped_date,
    --store_id,
    --staff_id
FROM {{ ref('stg_sales__orders') }} as o
JOIN {{ ref('stg_sales__order_items') }} as oi on oi.order_id = o.order_id
JOIN {{ ref('stg_sales__stores') }} as s on s.store_id = o.store_id
GROUP BY ALL 
ORDER BY 2 desc