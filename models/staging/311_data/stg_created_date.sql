select 
    unique_key,
    created_date, 
    FORMAT_DATETIME("%B", DATETIME(created_date)) as month_name,
    EXTRACT(DAY FROM created_date) AS the_day,
    EXTRACT(YEAR FROM created_date) AS year,
    FORMAT_DATETIME('%A',created_date) AS weekday_name
from `group5-proj-4400.311_data.stg_created_date`
