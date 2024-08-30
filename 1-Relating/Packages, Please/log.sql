-- *** The Lost Letter ***
SELECT * FROM "packages" WHERE "from_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue'
);

SELECT * FROM "addresses" WHERE "id" = (
    SELECT "address_id" FROM "scans" WHERE "package_id" = 384
    AND "action" = 'Drop'
);

-- *** The Devious Delivery ***
SELECT * FROM "packages" WHERE "from_address_id" IS NULL;
SELECT * FROM "addresses" WHERE "id" = (
    SELECT "address_id" FROM "scans" WHERE "action" = 'Drop'
    AND "package_id" = (
        SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL
    )
);

-- *** The Forgotten Gift ***
SELECT * FROM "packages" WHERE "to_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" = '728 Maple Place'
    );

SELECT * FROM "scans" WHERE "package_id" = 9523;

SELECT "name" FROM "drivers" WHERE "id" = (
    SELECT "driver_id" FROM "scans" WHERE "id" = 12432 
        AND "action" = 'Pick'
        );
