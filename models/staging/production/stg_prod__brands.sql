SELECT 
    CAST(brand_id as INT64) as brand_id,
    CAST(brand_name as STRING) as brand_name
FROM {{ source('locbike','brands') }} 