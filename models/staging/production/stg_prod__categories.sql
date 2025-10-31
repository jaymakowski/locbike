SELECT 
    CAST(category_id as INT64) as category_id,
    CAST(category_name as STRING) as category_name
FROM {{ source('locbike','categories') }} 