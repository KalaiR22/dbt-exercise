 {%set column_nd = ['customer_id','customer_name','customer_accountbalance']%}
  
  select 
  {% for column in column_nd -%}
    {{column}}
    {%- if not loop.last -%}
        ,
    {%- endif -%}
  {%- endfor %}
  from {{ ref('mdl_customer') }}
