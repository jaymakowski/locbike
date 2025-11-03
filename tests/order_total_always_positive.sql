select
    o.order_id,
    SUM(discount_applied_order_item_total) as order_total,
FROM {{ ref('int__orders') }} as o
group by 1
HAVING order_total <= 0