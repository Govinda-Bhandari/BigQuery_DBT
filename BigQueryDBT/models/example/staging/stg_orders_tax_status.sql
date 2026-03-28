with source as (

    select *,
    current_timestamp() as ingestion_timestamp 
    from {{source('northwind', 'orders_tax_status')}}
)

select * from source