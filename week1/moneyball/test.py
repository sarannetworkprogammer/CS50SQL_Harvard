SELECT * FROM "salaries" ORDER BY "player_id" LIMIT 10 ;
SELECT * FROM "teams" LIMIT 5;
SELECT * FROM "performances" LIMIT 5;


SELECT * FROM "players" LIMIT 5;

SELECT "year", ROUND(AVG("salary"),2) AS "average salary" FROM "salaries" GROUP BY "year" ORDER BY "year" DESC;

SELECT * FROM "players" WHERE "lastname" LIKE '%Cal%';


SELECT "id" FROM "players" WHERE "first_name"= 'Cal' AND "last_name" ='Ripken'; ans = 15726

SELECT "year", "salary" FROM "salaries" WHERE "player_id" = (
    SELECT "id" FROM "players" WHERE "first_name"= 'Cal' AND "last_name" ='Ripken'
) ORDER BY "year" DESC ;


Ken Griffey.



SELECT "id" FROM "players" WHERE "first_name"= 'Ken' AND "last_name" ='Griffey' AND "birth_year" = '1969'; ans 7266


SELECT "year","HR" FROM "performances" WHERE "player_id" =(
    SELECT "id" FROM "players" WHERE "first_name"= 'Ken' AND "last_name" ='Griffey' AND "birth_year" = '1969'
) ORDER BY "year" DESC;


SELECT "first_name", "last_name", "salary" FROM


Satchel Paige

SELECT "id" FROM "players" WHERE "first_name"= 'Satchel' AND "last_name" ='Paige';

SELECT "team_id" FROM "performances" WHERE "player_id" = (
    SELECT "id" FROM "players" WHERE "first_name"= 'Satchel' AND "last_name" ='Paige'

)

SELECT "name" FROM "teams" WHERE "id" =(
    SELECT "team_id" FROM "performances" WHERE "player_id" = (
        SELECT "id" FROM "players" WHERE "first_name"= 'Satchel' AND "last_name" ='Paige'
    )
);


SELECT "team_id", "year" ,"H" FROM "performances" ORDER BY "team_id" LIMIT 10;


SELECT "player_id", SUM("salary") AS "total_salary" FROM "salaries" GROUP BY "player_id" ORDER BY "total_salary" DESC LIMIT 5;


SELECT "player_id", SUM("salary")  FROM "salaries" GROUP BY "player_id" LIMIT 5;

SELECT "player_id", "H" FROM "performances" ORDER BY "H" DESC LIMIT 5;


SELECT "player_id" FROM "performances" ORDER BY "H" DESC LIMIT 1;

SELECT "salary" FROM "salaries" WHERE "player_id" =(
    SELECT "player_id" FROM "performances" ORDER BY "H" DESC LIMIT 1
);



SELECT SUM("salary") AS "salary" FROM "salaries" GROUP BY "player_id" ORDER BY "salary";