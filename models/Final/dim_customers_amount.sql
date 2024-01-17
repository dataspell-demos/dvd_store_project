{{  config(materialized='table') }}

select stg_customers.first_name, stg_customers.last_name, stg_customers.address, int_sum_calculated.sum from {{ ref('stg_customers') }} right join {{ ref('int_sum_calculated') }} on stg_customers.customer_id= int_sum_calculated.customer_id