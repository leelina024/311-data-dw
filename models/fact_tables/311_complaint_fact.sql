with agency_dim as (
    select * from {{ ref('stg_agency_dim')}}
),

complaint_type_dim as (
    select * from {{ ref('stg_complaint_type_dim')}}
),

location_dim as (
    select * from {{ ref('stg_location_dim')}}
),

final as (
    select
        *
    from agency_dim
    left join complaint_type_dim using (unique_id)
)
select * from final