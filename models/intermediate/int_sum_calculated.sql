{{  config(materialized='view') }}

SELECT customer_id, SUM(amount)
FROM {{ ref('stg_payments') }}
GROUP BY customer_id