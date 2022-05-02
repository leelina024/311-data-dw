with agency as (
    select
        unique_key,
        agency,
        agency_name, 
    from {{ source('311_data', 'stg_agency') }}
)

select * from agency