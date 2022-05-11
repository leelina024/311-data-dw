SELECT 
    row_number() OVER () AS complaint_type_dim_id,
    complaint_type, descriptor
FROM  
   ( SELECT DISTINCT complaint_type, descriptor
        from {{ source('311_data', 'stg_complaint_type') }}