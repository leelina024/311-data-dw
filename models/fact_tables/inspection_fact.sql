with job as (
  select * from `group5-proj-4400.rodent_inspections.stg_job`
),
result as (
  select * from `group5-proj-4400.rodent_inspections.stg_result`
),
inspection_type as (
  select * from `group5-proj-4400.rodent_inspections.stg_inspection_type`
),

final as (
  select job.job_id,
  job.JOB_TICKET_OR_WORK_ORDER_ID,
  job.job_progress,
  result.result,
  inspection_type.inspection_type
  from job
  left join result on job.job_dim_id = result.result_dim_id
  left join inspection_type on job.job_dim_id = inspection_type.inspection_type_dim_id
)

select * from final
