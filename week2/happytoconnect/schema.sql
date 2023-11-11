CREATE TABLE users (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    PRIMARY KEY("id")

);

CREATE TABLE school (
    "id" INTEGER,
    "type" TEXT,
    "location" TEXT,
    "year" NUMERIC,
    PRIMARY KEY("id")

);

CREATE TABLE companies(
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "industry" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE connections(
    "id" INTEGER,
    "user_id" INTEGER,
    "school_start_date" NUMERIC,
    "school_end_date" NUMERIC,
    "degree_type" TEXT,
    "compnany_start_date" NUMERIC
    "company_end_date" NUMERIC,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id")
);