
-- *** The Lost Letter ***

-- check from address

SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue';

SELECT * FROM "packages WHERE "from_address_id" = '432';

SELECT * FROM "addresses" WHERE "id" ='854';

SELECT * FROM "scans" WHERE "package_id" = '384';



-- *** The Devious Delivery ***

-- check from adddress is null

SELECT * FROM "packages" WHERE "from_address_id" IS NULL

SELECT * FROM "scans" WHERE "package_id" = '5098'

SELECT * FROM "addresses" WHERE "id" = '348';



-- *** The Forgotten Gift ***

-- check from address and packages,scans

SELECT * FROM "addresses" WHERE "address" = '109 Tileston Street';

SELECT * FROM "packages" WHERE "from_address_id" = '9873';

SELECT * FROM "scans" WHERE "package_id" = '9523'

SELECT * FROM "drivers" WHERE "id" ='17'




