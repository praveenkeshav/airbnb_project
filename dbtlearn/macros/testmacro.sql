{% macro learn_variables_return() %}
    {% set your_name_jinja = "Keshav" %}
    {{ log("Hello " ~ your_name_jinja, info=True) }}

    {% set user_name = var('user_name', 'default_user') %}
    {% set message = "Hello dbt user " ~ user_name ~ "!" %}
    {{ log(message, info=True) }}

    {{ return(message) }}
{% endmacro %}