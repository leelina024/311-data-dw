with location as (
    select
        unique_key,
        location_type,
        bbl,
        full_street,
        borough, 
        city,
        zip_code
    from {{ source('311_data', 'stg_location') }}
)

select * from location