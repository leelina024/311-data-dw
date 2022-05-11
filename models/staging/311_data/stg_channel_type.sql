SELECT 
    row_number() OVER () AS channel_dim_id,
    open_data_channel_type
FROM  
   ( SELECT DISTINCT open_data_channel_type
        from {{ source('311_data', 'stg_channel_type') }}