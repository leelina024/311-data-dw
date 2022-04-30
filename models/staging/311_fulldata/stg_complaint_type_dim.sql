with complaint_type_dim as(
    select
        unique_key,
        complaint_type,
        descriptor
    from `group5-proj-4400.311_data.src_311_rodent`
)

select * from complaint_type_dim