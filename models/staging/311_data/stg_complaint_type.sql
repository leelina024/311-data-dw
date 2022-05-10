with complaint_type as(
    select
        ROW_NUMBER() OVER() AS complaint_type_dim_id,
        complaint_type,
        descriptor
    from {{ source('311_data', 'stg_complaint_type') }}
)

select * from complaint_type