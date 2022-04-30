with date_dim as (
    select
        unique_key,
        created_date, 
        closed_date,
)