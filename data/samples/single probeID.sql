with locations as (
SELECT btr.* 
,bts.*
, row_number () over (partition by logtime) in_out_filter
FROM "addinsight_prod"."btrecords" btr
left join "btsites" bts
on btr.siteid = bts.id
where 
btr.probeid = 968243260
and btr.ingest_year = '2022'
and btr.ingest_month = '03'
and btr.ingest_day = '06'
)
select locations.*
, row_number () over (order by logtime asc) seq
from locations
-- where in_out_filter = 1 -- actually double measurements per second. need a way to group. 
limit 5000;