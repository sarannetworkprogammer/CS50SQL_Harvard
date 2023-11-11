-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it


-- users table
CREATE TABLE "users" (
    "id" INTEGER,
    "first_name" NOT NULL,
    "last_name" NOT NULL UNIQUE,
    "username" NOT NULL UNIQUE,
    "password" NOT NULL,
    "user_type",
    "location",
    PRIMARY KEY("id")
);

-- songs table

CREATE TABLE "songs" (
    "id" INTEGER,
    "title" TEXT NOT NULL,
    "album" NOT NULL,
    "type" TEXT,
    "composer" TEXT,
    "writer" TEXT,
    "date_added" NOT NULL,
    "duration" NUMERIC NOT NULL,
    "year",
    PRIMARY KEY("id")
);


-- playlist table

CREATE TABLE "playlist" (
    "id" INTEGER,
    "playlistname",
    "user_id",
    "song_id",
    "date_created",
    PRIMARY KEY ("id"),
    FOREIGN KEY ("user_id") REFERENCES "users"("id"),
    FOREIGN KEY ("song_id") REFERENCES "songs"("id")
);

--audiobooks table

CREATE TABLE "audiobooks" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "song_id",
    "playlist_id",
    PRIMARY KEY ("id"),
    FOREIGN KEY ("song_id") REFERENCES "songs"("id"),
    FOREIGN KEY ("playlist_id") REFERENCES "playlist"("id")
);

--episodes table

CREATE TABLE "episodes" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "author" TEXT NOT NULL,
    "category",
    "duration",
    "released",
    "user_id",
    PRIMARY KEY("id"),
    FOREIGN KEY ("user_id") REFERENCES "users"("id")
);

--podcasts table

CREATE TABLE "podcasts" (
    "id" INTEGER,
    "name",
    "category",
    "episode_id",
    PRIMARY KEY ("id"),
    FOREIGN KEY ("episode_id") REFERENCES "episodes"("id")
);

-- subscription

CREATE TABLE "subscription" (
    "id" INTEGER,
    "user_id" INTEGER,
    "song_id" INTEGER,
    "cost" NUMERIC,
    FOREIGN KEY ("user_id") REFERENCES "users"("id"),
    FOREIGN KEY ("song_id") REFERENCES "songs"("id")
);
--- writers table

CREATE TABLE "writers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "country" TEXT NOT NULL,
    PRIMARY KEY ("id")
);

-- composers table

CREATE TABLE "composers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    PRIMARY KEY ("id")
);

-- ratings table

CREATE TABLE "ratings" (

    "id" INTEGER,
    "user_id"
    "song_id"
    FOREIGN KEY ("user_id") REFERENCES "users"("id"),
    FOREIGN KEY ("song_id") REFERENCES "songs"("id")
);