with complaint_type_dim as(
    select
        unique_key,
        complaint_type,
        descriptor
    from {{ source('311_fulldata', 'stg_complaint_type_dim') }}
)

select * from complaint_type_dim