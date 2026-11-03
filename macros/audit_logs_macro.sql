{% macro insert_logs(model_name, col_to_update) %}
   {% if col_to_update=="start" %}
    INSERT INTO audit_logs (model_name, execution_start, status)
        VALUES ('{{ model_name }}', CURRENT_TIMESTAMP, 'started');
    {% elif col_to_update=="success"%}
     INSERT INTO audit_logs (model_name, execution_start, status)
        VALUES ('{{ model_name }}', CURRENT_TIMESTAMP, 'success');
   {% endif %}
{% endmacro %}

