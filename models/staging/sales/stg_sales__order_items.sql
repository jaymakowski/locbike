SELECT
    CAST(CONCAT(order_id,'_',item_id) as STRING) as order_item_id,
    CAST(order_id AS INT64) AS order_id,
    CAST(item_id AS INT64) AS item_id,
    CAST(product_id AS INT64) AS product_id,
    CAST(quantity AS INT64) AS quantity,
    CAST(list_price AS FLOAT64) AS list_price,
    quantity * list_price AS non_discounted_order_item_total,
    CAST(discount AS FLOAT64) AS discount,
    quantity * list_price * (1 - discount) as discount_applied_order_item_total
FROM {{ source('locbike','order_items') }} 