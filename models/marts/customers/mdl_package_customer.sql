SELECT 
  {{ dbt_utils.star(from=ref('stg_customers')) }}
FROM 
  {{ ref('stg_customers') }}
