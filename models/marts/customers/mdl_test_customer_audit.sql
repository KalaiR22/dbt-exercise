{{ 
    config(
        pre_hook = "{{ insert_logs('mdl_test_customer_audit', 'start') }}",
        post_hook = "{{ insert_logs('mdl_test_customer_audit', 'success') }}"
    )
}}

SELECT * FROM {{ ref('stg_customers') }}



