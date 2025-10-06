{%- set bikes = ["RX135","Classic 350", "Ninja 300", "Interceptor 650", "Bear 650"] -%}

{% for bike in bikes %}
    {{bike}}
{% endfor %}