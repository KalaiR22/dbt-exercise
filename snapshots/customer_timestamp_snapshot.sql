{% snapshot snapshot_timestampmethod %}
    {{
        config(
            unique_key='customer_id',
            strategy='timestamp',
            updated_at='updated_at',
            invalidate_hard_deletes=False

        )
    }}

    select * from {{ source('snapshot_source', 'snapshot_src') }}
 {% endsnapshot %}