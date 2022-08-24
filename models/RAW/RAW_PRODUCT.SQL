{{
    config(
        materialized='table'
    )
}}

SELECT * 
{{ source('globalmart', 'product') }}