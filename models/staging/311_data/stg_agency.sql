with agency as (
    select
        ROW_NUMBER() OVER() AS agency_dim_id,
        agency,
        agency_name, 
    from {{ source('311_data', 'stg_agency') }}
)

select * from agency