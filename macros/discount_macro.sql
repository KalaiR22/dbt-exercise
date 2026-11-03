{% macro discount(amount) %}
    {{amount}} - (({{amount}}/100)*10)
{% endmacro %}