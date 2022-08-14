
----- scratch

-- btprobetraveltimes is for start and end down link. link in BTlinks

SELECT * FROM "addinsight_prod"."btprobetraveltimes" btp
where 
btp.probeid = 968243260
and btp.ingest_year = '2022'
and btp.ingest_month = '03'
and btp.ingest_day = '06'
order by logtime asc
limit 500;

---- BTProbes
SELECT * FROM "addinsight_prod"."btprobes" btp
where 
btp.id = 968243260
and btp.ingest_year = '2022'
and btp.ingest_month = '03'
and btp.ingest_day = '06'
order by "dms_update_ts" asc
limit 500;