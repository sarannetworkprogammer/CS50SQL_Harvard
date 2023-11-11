-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database

--getting title album from this year order by category
SELECT "title", "album" FROM "songs" WHERE "year" = '2023' ORDER BY "type";

-- getting title, audio books joining two tables
SELECT "title", "duration", "audiobooks"."name" FROM "songs"
JOIN "audiobooks" ON "songs"."id" = "audiobooks"."song_id"
WHERE "playlist_id" = '5';

-- getting playlist name specific for the user

SELECT "playlistname" "song_id" FROM "playlist" WHERE "user_id" =(
    SELECT "id" FROM "users" WHERE "user_name" = 'alice'
);

-- counting songs of the writer

SELECT "writer", COUNT("songs") FROM "songs" GROUP BY "writer";

--counting how mnay songs has each user in their account and also sorting by count

SELECT "user_id", COUNT("song_id") AS "count_per_user" FROM "playlist" GROUP BY "user_id" ORDER BY COUNT("song_id") DESC;

-- select episode based on username

SELECT "name","category" , "duration", "released" FROM "episodes" WHERE "user_id" = (
    SELECT "id" FROM "users" WHERE "username" = 'bob'
);

-- creating view as audio getting title , audiobooks_name

CREATE VIEW "audio" AS
SELECT "title", "audiobooks"."name" FROM "songs"
JOIN "audiobooks" ON "songs"."id" = "audiobooks"."song_id"
WHERE "playlist_id" = '5';

-- view for user_playlist

CREATE VIEW "user_playlist" AS
SELECT "playlistname" FROM "playlist" WHERE "user_id" =(
    SELECT "id" FROM "users" WHERE "user_name" = 'alice'
);

-- view for user_episode

CREATE VIEW "user_episode" AS
SELECT "name","category" , "duration", "released" FROM "episodes" WHERE "user_id" = (
    SELECT "id" FROM "users" WHERE "username" = 'bob'
);

-- insert queries

INSERT INTO "users" ("first_name", "last_name","username", "password","user_type","location")
VALUES ('alice','kera','1234','premium','texas');

INSERT INTO "writers" ("first_name","last_name","country")
VALUES ('bob','tex','US);

--update queries

UPDATE "subscription"
SET "cost" ='100'
WHERE "song_id" = '10';


UPDATE "users"
SET "username" = 'edx'
WHERE "first_name" = 'ted' AND "last_name" ='hex';

-delete queries

DELET FROM "songs"
WHERE "year" <= '1950';



-- index for usernames

CREATE INDEX "user_index" ON "users" ("username", "id");
CREATE INDEX "song_index" ON "songs" ("id","title","album","year");
CREATE INDEX "playlist_index" ON "playlist"("id","playlistname");