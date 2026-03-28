with source as (

    select *,
    current_timestamp() as ingestion_timestamp
    from {{source('northwind', 'products')}}
)

select * from source