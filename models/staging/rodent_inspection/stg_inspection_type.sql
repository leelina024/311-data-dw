SELECT 
    row_number() OVER () AS inspection_type_dim_id,
    INSPECTION_TYPE
FROM  
   ( SELECT DISTINCT INSPECTION_TYPE
        from {{ source('rodent_inspection', 'stg_inspection_type') }}