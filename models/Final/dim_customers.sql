{{  config(materialized='table') }}

SELECT * FROM {{ ref('int_count_customer') }}