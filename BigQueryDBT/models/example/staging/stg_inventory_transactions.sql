with source as (

    select *,
    current_timestamp() as ingestion_timestamp 
    from {{source('northwind', 'inventory_transactions')}}
)

select * from source