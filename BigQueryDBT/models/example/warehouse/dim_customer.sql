with source as (select
id as customer_id, company,
Last_name,
first_name, email_address,
job_title, business_phone, home_phone, mobile_phone, fax_number, address, city, state_province, zip_postal_code, country_region, web_page, notes, attachments,
current_timestamp() as insertion_timestamp,
row_number() over (partition by id) as row_number
from {{ref('stg_customer') }})

select * 
except(row_number)
from source 
where row_number = 1
