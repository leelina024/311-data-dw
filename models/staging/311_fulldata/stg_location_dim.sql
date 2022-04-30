with location_dim as (
    select
        unique_key,
        location_type,
        bbl,
        incident_address as full_street,
        borough, 
        city,
        incident_zip as zip_code
    from `group5-proj-4400.311_data.src_311_rodent`
)

select * from location_dim
