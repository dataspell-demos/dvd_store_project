{{  config(materialized='table') }}

select customer.customer_id, customer.first_name, customer.last_name, a.address, a.postal_code from {{ source('dvd_store_data', 'customer')}}left join public.address a on customer.address_id = a.address_id