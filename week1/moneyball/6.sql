SELECT "teams"."name" ,SUM("performances"."H") AS "total hits" FROM "performances"
JOIN "teams" ON "teams"."id" = "performances"."team_id"
WHERE "performances"."year" ='2001' GROUP BY "team_id" ORDER BY SUM("performances"."H")  DESC LIMIT 5 ;
