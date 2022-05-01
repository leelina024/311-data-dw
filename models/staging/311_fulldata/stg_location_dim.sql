with location_dim as (
    select
        unique_key,
        location_type,
        bbl,
        incident_address as full_street,
        borough, 
        city,
        incident_zip as zip_code
    from {{ source('311_fulldata', 'stg_location_dim') }}
)

select * from location_dim