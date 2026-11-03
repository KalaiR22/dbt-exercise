with 

source as (

    select * from {{ source('snapshot_source', 'snapshot_src') }}

),

customer_data as (

    select
        customer_id,
        first_name,
        last_name,
        email,
        updated_at

    from source

)

select * from customer_data
