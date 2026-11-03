{{
    config(
       materialized='incremental',
       unique_key = 'customer_id'
    )
}}

select * from {{ ref('mdl_customer') }}
{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where customer_id > (select max(customer_id) from {{ this }}) 
{% endif %}