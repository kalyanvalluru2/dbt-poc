select 
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
o.ordersellingprice - o.ordercostprice as orderprofit,
c.customername,
c.segment,
c.country,
p.category,
p.productname,
p.subcategory
from {{ ref('RAW_ORDERS') }} as o
left join {{ ref('RAW_CUSTOMER') }} as c
ON O.CUSTOMERID =  C.CUSTOMERID
left join {{ ref('RAW_PRODUCT') }} as p
ON O.PRODUCTID = P.PRODUCTID
