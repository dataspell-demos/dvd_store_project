{{  config(materialized='table') }}

select customer_id, first_name, last_name, address.address, address.postal_code from {{ source('dvd_store_data', 'customer')}} left join address on customer.address_id = address.address_id