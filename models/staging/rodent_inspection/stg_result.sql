SELECT 
    row_number() OVER () AS result_dim_id,
    result
FROM  
   ( SELECT DISTINCT result
        from {{ source('rodent_inspection', 'stg_result') }}