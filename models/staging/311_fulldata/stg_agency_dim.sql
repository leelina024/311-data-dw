with agency as (
    select
        unique_key as agency_dim_id
        agency,
        agency_name, 
    from `group5-proj-4400.311_data.src_311_rodent`
)

select * from agency
