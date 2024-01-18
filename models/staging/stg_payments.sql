{{  config(materialized='view') }}

select customer_id, amount, payment_date from {{ source('dvd_store_data', 'payment')}}