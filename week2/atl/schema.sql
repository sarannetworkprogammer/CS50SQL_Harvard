CREATE TABLE passengers (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE flights (
    "id" INTEGER,
    "airline" TEXT,
    "source_code" TEXT,
    "dest_code" TEXT,
    "depart_time" NUMERIC NOT NULL,
    "est_arrival_time" NUMERIC NOT NULL,
    PRIMARY KEY("id")
);


CREATE TABLE check_ins (
    "id" INTEGER,
    "flight_number" INTEGER
    "date_time" NUMERIC,
    PRIMARY KEY("id")
    FOREIGN KEY("flight_number") REFERENCES "flights"("id")
);

CREATE TABLE airlines (
    "id" INTEGER,
    "name" TEXT,
    "concourse" TEXT

);

