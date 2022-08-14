SELECT count(distinct siteid) , probeid
-- ,bts.*
FROM "addinsight_prod"."btrecords" btr
-- left join "btsites" bts
-- on btr.siteid = bts.id
where 
-- btr.probeid = 970931309
 btr.ingest_year = '2022'
and btr.ingest_month = '03'
and btr.ingest_day = '06'
group by probeid
order by count(distinct siteid) desc
limit 50;