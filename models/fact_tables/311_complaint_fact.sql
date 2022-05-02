with complaint_type as (
    select * from {{ ref('stg_complaint_type') }}
),

agency as (
    select * from {{ ref('stg_agency') }}
),

location as (
    select * from {{ ref('stg_location') }}
),

channel as (
    select * from {{ ref('stg_channel_type') }}
),

created as (
    select unique_key, 
        FORMAT_DATETIME("%b-%d-%Y", created_date) as created_date
    from {{ ref('stg_closed_date') }}
),
closed as (
    select unique_key, 
        FORMAT_DATETIME("%b-%d-%Y", closed_date) as closed_date
    from {{ ref('stg_closed_date') }}
),

final as (
    select 
        *
    from complaint_type
    left join created using (unique_key)
    left join closed using (unique_key)
    left join agency using (unique_key)
    left join location using (unique_key)
    left join channel using (unique_key)
)

select * from final

