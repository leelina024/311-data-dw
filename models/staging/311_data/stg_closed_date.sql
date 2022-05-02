select 
    unique_key,
    closed_date, 
    FORMAT_DATETIME("%B", DATETIME(closed_date)) as month_name,
    EXTRACT(DAY FROM closed_date) AS the_day,
    EXTRACT(YEAR FROM closed_date) AS year,
    FORMAT_DATETIME('%A',closed_date) AS weekday_name
from `group5-proj-4400.311_data.stg_closed_date`
