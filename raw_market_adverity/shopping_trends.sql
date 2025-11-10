{{
  config(
      alias = 'shopping_trends',
      schema = 'ardent-depth-399309',
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
{{ source('RAW_ADVERITY','shopping_trends')}}
