BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "dlt_file" (
    "id" bigserial PRIMARY KEY,
    "title" text NOT NULL,
    "created" bigint NOT NULL
);


--
-- MIGRATION VERSION FOR dlt_ai
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('dlt_ai', '20250314062134352', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250314062134352', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
