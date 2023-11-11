SELECT * FROM "districts" LIMIT 5;

SELECT * FROM "schools" LIMIT 5;


SELECT * FROM "graduation_rates" LIMIT 5;

SELECT * FROM "expenditures" LIMIT 5;


SELECT * FROM "staff_evaluations" LIMIT 5;

SELECT "school_id" FROM "graduation_rates" WHERE "graduated" ='100';

SELECT "name" FROM "schools" WHERE "id" in (
    SELECT "school_id" FROM "graduation_rates" WHERE "graduated" ='100'
);