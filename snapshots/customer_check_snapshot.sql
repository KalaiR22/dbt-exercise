
{% snapshot snapshot_checkmethod %}
    {{
        config(
            unique_key='c_custkey',
            strategy='check',
            check_cols=['c_nationkey','c_address','c_mktsegment','c_phone','c_comment'],
            invalidate_hard_deletes=False

        )
    }}

    select * from {{ source('source_data', 'customer') }}
 {% endsnapshot %}