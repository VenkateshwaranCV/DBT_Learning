Select * From
    {{ ref('bronze_sales') }}
Where
    gross_amount < 0 AND net_amount < 0
