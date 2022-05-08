with complaint_type as(
    select
        unique_key,
        complaint_type,
        descriptor
    from {{ source('311_data', 'stg_complaint_type') }}
)

select * from complaint_type