{% test row_test(model,source_name,table_name) %}

with source_count as (
select count(*) as s_count from {{model}}
)
, target_count as (
select count(*) as t_count from {{ source(source_name, table_name) }}
)
select target_count.t_count, source_count.s_count from target_count,source_count
where  target_count.t_count = source_count.s_count 


{% endtest %}