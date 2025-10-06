{% set inc_flag = true %}
{% set last_load = 3 %}
{% set cols_list = ['sales_id','date_sk','gross_amount'] %}

select
  {{ cols_list | join(', ') }}
from {{ ref('bronze_sales') }}
{% if inc_flag %}
where date_sk > {{ last_load }}
{% endif %}