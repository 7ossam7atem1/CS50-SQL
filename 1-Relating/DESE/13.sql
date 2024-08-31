SELECT
    "name",
    "pupils",
    "per_pupil_expenditure",
    ROUND((pupils * per_pupil_expenditure) / 1e6 , 3) as "Budget by Millions"
FROM
    "districts" 
JOIN
    "expenditures" 
    ON "districts".id = "expenditures".district_id
ORDER BY
    "Budget by Millions" DESC;