{{  config(materialized='view') }}

SELECT customer_id, DATE(payment_date) as date,
count(customer_id) as number_of_orders
FROM {{ ref('stg_day_customer') }}
GROUP BY customer_id, date
ORDER BY customer_id, date