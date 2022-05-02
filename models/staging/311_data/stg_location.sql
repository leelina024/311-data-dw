with location as (
    select
        unique_key,
        location_type,
        bbl,
        full_street,
        borough, 
        city,
        zip_code
    from `group5-proj-4400.311_data.stg_location`
)

select * from location