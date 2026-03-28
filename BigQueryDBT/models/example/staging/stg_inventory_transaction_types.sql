with source as (

    select *,
    current_timestamp() as ingestion_timestamp 
    from {{source('northwind', 'inventory_transaction_types')}}
)

select * from source