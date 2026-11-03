{{
    config(
        materialized='view'
    )
}}

select * from {{ source('source_data', 'customer') }}