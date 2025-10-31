SELECT 
CAST(customer_id as int) as customer_id,
CAST(first_name as string) as first_name,
CAST(last_name as string) as last_name,
CAST(phone as string) as phone
FROM {{ source('locbike','customers') }} 