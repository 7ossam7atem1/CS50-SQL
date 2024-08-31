SELECT "city" , COUNT(*) AS "Number Of Public Schools"
     FROM "schools" WHERE type = "Public School" GROUP BY "city"
     ORDER BY "Number OF Public Schools" DESC, "city" LIMIT 10;