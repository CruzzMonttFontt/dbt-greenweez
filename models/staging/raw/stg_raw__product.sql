-- stg_raw__product.sql

with

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
        name,
        category,
        CAST(purchase_price AS FLOAT64) AS purchase_price

    from source

)

select * from renamed
