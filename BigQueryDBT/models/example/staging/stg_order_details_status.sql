with source as (

    select *,
    current_timestamp() as ingestion_timestamp 
    from {{source('northwind', 'order_details_status')}}
)

select * from source