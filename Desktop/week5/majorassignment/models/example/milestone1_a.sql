select f.category,month(nav_date) as mon,avg(nav) as avg_nav,avg(repurchase_price) as avg_repur_price,avg(sale_price) as avg_sale_price
FROM 
  "MAJORASSIGNMENT"."MAJORASSIGNMENT"."NAV_HISTORY" n join "MAJORASSIGNMENT"."MAJORASSIGNMENT"."MUTUAL_FUND" m
on n.code=m.code join "MAJORASSIGNMENT"."MAJORASSIGNMENT"."FUND_CATEGORY" f
on m.category_id=f.id group by f.category,mon order by f.category,mon