select
    o_orderkey,
    o_custkey,
    o_orderstatus,
    {{ discount("o_totalprice") }} as discounted_price,
    o_orderdate,
    o_clerk,
    o_shippriority,
    o_comment
from {{ ref("stg_orders") }}
