SELECT 
    row_number() OVER () AS job_dim_id,
    JOB_TICKET_OR_WORK_ORDER_ID, JOB_ID
from {{ source('rodent_inspection', 'stg_job') }}