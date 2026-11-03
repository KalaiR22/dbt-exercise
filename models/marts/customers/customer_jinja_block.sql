{% set payment_methods_query %}

select
    distinct(c_mktsegment)
from 
    {{source("source_data", "customer")}}
order by 1

{% endset %}

{% set results = run_query(payment_methods_query) %}

{% if execute %}

{% set list_of_res = results.columns[0].values() %}

{% else %}

{% set list_of_res = [] %}

{% endif %}


SELECT COUNT(*) as count_of_record FROM {{ ref('stg_customers') }}
where c_mktsegment = '{{list_of_res[0]}}'
 