with source as (

    select *,
    current_timestamp() as ingestion_timestamp 
    from {{source('northwind', 'purchase_order_status')}}
)

select * from source