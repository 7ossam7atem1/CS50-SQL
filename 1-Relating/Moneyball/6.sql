SELECT "name" , SUM("H") AS "Total Hits" FROM "performances"
 INNER JOIN "teams" ON "teams"."id" = "performances"."team_id"
 WHERE "performances"."year" = 2001
 GROUP BY "teams"."id"
 ORDER BY "Total Hits" DESC 
 LIMIT 5;
