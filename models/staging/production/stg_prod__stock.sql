SELECT 
    CAST(CONCAT(store_id,'_',product_id) as STRING) as stock_id,
    CAST(store_id AS INT64) AS store_id,
    CAST(product_id AS INT64) AS product_id,
    CAST(quantity AS INT64) AS quantity
FROM {{ source('locbike','stock') }} 