{% macro limit_data_in_dev(column_name, nb_days=3) -%}
{% if target.name=='dev' -%}
where {{ column_name }} >= DATE_SUB(CURRENT_DATE(), INTERVAL {{ nb_days }} DAY)
{%- endif %}
{%- endmacro %}