SELECT
    o.order_id,
    o.order_date,
    o.required_date,
    o.shipped_date,
    o.order_status,
    o.store_id,
    CASE WHEN o.required_date < o.shipped_date THEN 'shipped_late'
        WHEN o.required_date >= o.shipped_date THEN 'shipped_on_time'
        WHEN o.shipped_date is NULL THEN 'not_shipped'
        END as shipped_on_time,
    oi.product_id,
    oi.order_item_id,
    oi.quantity,
    oi.discount_applied_order_item_total,
    oi.non_discounted_order_item_total
FROM {{ ref('stg_sales__orders') }} as o
JOIN {{ ref('stg_sales__order_items') }} as oi on oi.order_id = o.order_id