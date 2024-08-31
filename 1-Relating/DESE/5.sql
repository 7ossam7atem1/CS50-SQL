SELECT "city" , COUNT(*) AS "Number Of Schools" FROM "schools"
    WHERE "type" = "Public School" GROUP BY "city" 
    HAVING "Number Of Schools" <=3
    ORDER BY "Number Of Schools" DESC , "city";