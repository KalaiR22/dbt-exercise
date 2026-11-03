with customer_data as (
    select * from {{ ref('stg_customers') }}
)
, renamed_data as ( c_custkey as customer_id,
c_name as customer_name,
c_address as customer_address,
c_nationkey as customer_nationkey,
c_phone as customer_phone,
c_acctbal as customer_accountbalance,
C_MKTSEGMENT as customer_marketsegment,
c_comment as customer_comment)
 from customer_data

 {%set column_nd = ['customer_id','customer_name','customer_accountbalance']%}
  
  select 
  {% for column in column_nd %}
    {{column}}
    {% if not loop.last %}
        ,
    {% endif %}
  {% endfor %}
  from renamed_data
