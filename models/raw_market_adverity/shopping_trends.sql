{{
  config(
      alias = 'shopping_trends',
      schema = 'dev_dbt_big',
      materialized = 'view',
      tags = ['dbt_big'],
      copy_grants= true
  )
}}

select 
*
from {{ source('dbt_big', 'shopping_trends') }}