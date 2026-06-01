{% macro copy_json(table_nm) %}

-- Delete existing rows from the target copy table before reloading staged JSON.
delete from {{ target.database }}.{{ var('target_schema') }}.{{ table_nm }};

-- Copy JSON data from the Snowflake external stage into the target copy table.
COPY INTO {{ target.database }}.{{ var('target_schema') }}.{{ table_nm }}
FROM
(
    SELECT
        $1 AS DATA
    FROM @{{ var('stage_name') }}
)
FILE_FORMAT = (TYPE = JSON)
FORCE = TRUE;

{% endmacro %}