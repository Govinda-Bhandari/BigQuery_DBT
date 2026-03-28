with source as (

    select *,
    current_timestamp() as ingestion_timestamp 
    from {{source('northwind', 'employee_privileges')}}
)

select * from source