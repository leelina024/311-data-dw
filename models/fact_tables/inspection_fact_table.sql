with inspection as (
  select * from `group5-proj-4400.rodent_inspections.src_rodent_insp`
),

datedim as (
  select * from {{ ref('date_dim') }}
),
location as (
  select * from {{ ref('location_dim') }}
),
job as (
  select * from {{ ref('stg_job') }}`
),

inspection_type as (
  select * from {{ ref('stg_inspection_type') }}`
),

final as (
  select 
  job.job_dim_id,
  datedim.date_dim_id as inspection_date_dim_id,
  location.location_dim_id,
  inspection_type.inspection_type_dim_id
  from inspection as i 
  left join datedim 
    on i.inspection_date = datedim.full_date
  left join location
    on i.location = location.incident_address
  left join job
    on i.job = job.JOB_TICKET_OR_WORK_ORDER_ID
  left join inspection_type
    on i.inspection_type = inspection_type.inspection_type
  
)

select * from final