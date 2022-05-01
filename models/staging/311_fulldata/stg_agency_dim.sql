with agency_dim as (
    select
        unique_key,
        agency,
        agency_name, 
    from {{ source('311_fulldata', 'stg_agency_dim') }}
)

select * from agency_dim