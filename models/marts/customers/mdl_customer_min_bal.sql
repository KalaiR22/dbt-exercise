select * from {{ ref('mdl_customer') }}
where customer_accountbalance >= '{{var("minbal")}}'