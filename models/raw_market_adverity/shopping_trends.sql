{{
  config(
      alias = 'shopping_trends',
      schema = 'dbt_big',
      materialized = 'view',
      tags = ['raw_market_adverity'],
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
