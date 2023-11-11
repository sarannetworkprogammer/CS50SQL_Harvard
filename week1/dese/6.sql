SELECT "name" FROM "schools" WHERE "id" IN (
    SELECT "school_id" FROM "graduation_Rates" WHERE "graduated" = '100');