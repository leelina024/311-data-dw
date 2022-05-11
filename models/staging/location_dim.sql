SELECT 
  ROW_NUMBER() OVER() AS location_dim_id,
  CONCAT(HOUSE_NUMBER," ", STREET_NAME) as incident_address, zip_code,
  BOROUGH
from (
  select distinct HOUSE_NUMBER, STREET_NAME, zip_code, BOROUGH
  from `group5-proj-4400.rodent_inspections.src_rodent_insp`
)
