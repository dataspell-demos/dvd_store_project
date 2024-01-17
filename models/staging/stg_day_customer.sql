{{  config(materialized='view') }}

select customer_id, payment_date, payment_id from {{ source('dvd_store_data', 'payment')}}
