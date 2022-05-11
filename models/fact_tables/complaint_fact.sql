with complaint as (
  select agency_name, descriptor, open_data_channel_type,incident_address,
  EXTRACT(DATE FROM created_date) as created_date, EXTRACT(DATE FROM closed_date) as closed_date
  from `group5-proj-4400.311_data.src_311_rodent`
),

location as (
  select * from {{ ref('location_dim') }}
),

datedim as (
  select * from {{ ref('date_dim') }}
),

agency as (
  select * from {{ ref('stg_agency') }}
),

complaint_type as (
  select * from {{ ref('stg_complaint_type') }}
),
channel as (
  select * from {{ ref('stg_channel_type') }}
),

final as (
  select 
  agency.agency_dim_id,
  complaint_type.complaint_type_dim_id,
  channel.channel_dim_id,
  datedim.date_dim_id,
  location.location_dim_id

  from complaint as c
  left join agency
    on c.agency_name = agency.agency_name
  left join complaint_type
    on c.descriptor = complaint_type.descriptor
  left join channel
    on c.open_data_channel_type = channel.open_data_channel_type 
  left join datedim 
    on c.created_date = datedim.full_date
  left join location
    on c.incident_address = location.incident_address
)

select * from final