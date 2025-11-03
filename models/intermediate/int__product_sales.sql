SELECT 
    p.product_id,
    p.product_name,
    o.order_id,
    o.order_date,
    o.quantity,
    o.discount_applied_order_item_total,
    o.non_discounted_order_item_total,
    b.brand_name,
    c.category_name
FROM {{ ref('int__orders') }} as o
JOIN {{ ref('stg_prod__products') }} as p ON o.product_id = p.product_id
JOIN {{ ref('stg_prod__brands') }} as b on b.brand_id = p.brand_id
JOIN {{ ref('stg_prod__categories') }} as c on c.category_id = p.category_id
ORDER BY o.order_date desc, o.order_id desc, p.product_name desc