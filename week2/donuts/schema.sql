CREATE TABLE ingredients (
    "id" INTEGER,
    "ingredient_name" TEXT,
    "price_per_unit" NUMERIC NOT NULL CHECK("price" != 0),
    PRIMARY KEY("id")
);

CREATE TABLE donuts (
    "id" INTEGER,
    "name" TEXT,
    "type" TEXT,
    "price" INTEGER NOT NULL CHECK("price" != 0),
    PRIMARY KEY("id")
);

CREATE TABLE orders (
    "id" INTEGER,
    "donut_id" INTEGER,
    "customer_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id")

);

CREATE TABLE customers (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "order_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("order_id") REFERENCES "orders"("id")
);