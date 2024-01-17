{{  config(materialized='table') }}

select stg_customers.first_name, stg_customers.last_name, int_count_customer.date, int_count_customer.number_of_orders from {{ ref('stg_customers') }} right join {{ ref('int_count_customer') }} on stg_customers.customer_id= int_count_customer.customer_id