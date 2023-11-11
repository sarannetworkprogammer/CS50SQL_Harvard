CREATE TABLE "meteorites_temp" (
    "name",
    "id",
    "nametype" ,
    "class" ,
    "mass",
    "discovery",
    "year",
    "lat",
    "long"
);

UPDATE "meteorites_temp"
SET "mass" = ROUND("mass",2)
WHERE "mass" IS NOT NULL;

UPDATE "meteorites_temp"
SET "year" = 'NULL'
WHERE "year"= '';

UPDATE "meteorites_temp"
SET "lat" = 'NULL'
WHERE "lat" = '';

UPDATE "meteorites_temp"
SET "lat" = 'NULL'
WHERE "long" = '';


UPDATE "meteorites_temp"
SET "mass" = ROUND("mass",2)
WHERE "mass" IS NOT NULL;


UPDATE "meteorites_temp"
SET "lat" = ROUND("lat",2)
WHERE "lat" IS NOT NULL;


UPDATE "meteorites_temp"
SET "long" = ROUND("long",2)
WHERE "long" IS NOT NULL;

DELETE FROM "meteorites_temp"
WHERE "nametype" ='Relict';

CREATE TABLE "meteorites" (
    "id" INTEGER,
    "name",
    "class",
    "mass",
    "discovery",
    "year",
    "lat",
    "long",
    PRIMARY KEY("id")
);


INSERT INTO "meteorites" ("name","class","mass","discovery","year","lat","long")
SELECT "name","class","mass","discovery","year","lat","long" FROM "meteorites_temp" ORDER BY "year" ASC, "name" ASC;