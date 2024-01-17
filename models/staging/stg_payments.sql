{{  config(materialized='view') }}

select customer_id, amount from {{ source('dvd_store_data', 'payment')}}