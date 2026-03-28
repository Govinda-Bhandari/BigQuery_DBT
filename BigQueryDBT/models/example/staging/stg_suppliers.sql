with source as (

    select *,
    current_timestamp() as ingestion_timestamp 
    from {{source('northwind', 'suppliers')}}
)

select * from source