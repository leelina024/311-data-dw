select 
    unique_key,
    open_data_channel_type
from {{ source('311_data', 'stg_channel_type') }}
