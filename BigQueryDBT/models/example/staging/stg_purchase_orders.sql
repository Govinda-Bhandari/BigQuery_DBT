with source as (

    select *,
    current_timestamp() as ingestion_timestamp
    from {{source('northwind', 'purchase_orders')}}
)

select * from source