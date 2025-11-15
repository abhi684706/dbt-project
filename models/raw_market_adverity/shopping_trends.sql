{{
  config(
      --alias = 'shopping_trends',
      --schema = 'dev_dbt_big',
      materialized = 'view',
      --tags = ['dbt_big'],
      copy_grants= true
  )
}}

select 
Customer ID as CUSTOMER_ID,
Age as AGE,
Gender as GENDER,	
Category as CATEGORY,
Payment Method as PAYMENT_METHOD
from
{{ source('dbt_big', 'shopping_trends') }}
