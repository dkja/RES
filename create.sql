CREATE TABLE "users" (
  "id" integer UNIQUE PRIMARY KEY,
  "username" varchar UNIQUE NOT NULL,
  "password_hash" varchar NOT NULL
);

CREATE TABLE "archs" (
  "id" integer UNIQUE PRIMARY KEY,
  "name" varchar UNIQUE NOT NULL
);

CREATE TABLE "apps" (
  "id" integer UNIQUE PRIMARY KEY,
  "name" varchar UNIQUE NOT NULL
);

CREATE TABLE "jobs" (
  "id" integer UNIQUE PRIMARY KEY,
  "app_id" integer NOT NULL,
  "user_id" integer NOT NULL,
  "context_id" integer,

  CONSTRAINT "fk_apps"
    FOREIGN KEY ("app_id")
    REFERENCES "apps"( "id"),
  CONSTRAINT "fk_users"
    FOREIGN KEY ("user_id")
    REFERENCES "users"( "id"),
  CONSTRAINT "fk_contexts"
    FOREIGN KEY ("context_id")
    REFERENCES "contexts"( "id")  
);

CREATE TABLE "os_type" (
  "id" integer UNIQUE PRIMARY KEY,
  "name" varchar UNIQUE NOT NULL
);

CREATE TABLE "contexts" (
  "id" integer UNIQUE PRIMARY KEY,
  "os_type" integer NOT NULL,

  CONSTRAINT "fk_os_type"
    FOREIGN KEY ("os_type")
    REFERENCES "os_type"( "id"),
);

CREATE TABLE "devices_contexts" (
  "device_id" integer,
  "context_id" integer,

  CONSTRAINT "fk_devices"
    FOREIGN KEY ("device_id")
    REFERENCES "devices"("id"),
  CONSTRAINT "fk_contexts"
    FOREIGN KEY ("context_id")
    REFERENCES "contexts"("id")
);

CREATE TABLE "device_type" (
  "id" integer UNIQUE PRIMARY KEY,
  "name" varchar UNIQUE NOT NULL
);

CREATE TABLE "devices" (
  "id" integer UNIQUE PRIMARY KEY,
  "type" integer NOT NULL,
  "name" varchar UNIQUE NOT NULL,
  "data" varchar

  CONSTRAINT "fk_device_type"
    FOREIGN KEY ("type")
    REFERENCES "device_type"( "id"),
);

CREATE TABLE "workers" (
  "id" integer UNIQUE PRIMARY KEY,
  "name" varchar NOT NULL,
  "arch_id" integer,
  "current_job_id" integer,

  CONSTRAINT "fk_archs"
    FOREIGN KEY ("arch_id")
    REFERENCES "archs" ("id"),
  CONSTRAINT "fk_jobs"
    FOREIGN KEY ("current_job_id")
    REFERENCES "jobs" ("id")
);

-- ALTER TABLE "jobs" ADD FOREIGN KEY ("app_id") REFERENCES "apps" ("id");
-- ALTER TABLE "jobs" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
-- ALTER TABLE "jobs" ADD FOREIGN KEY ("context_id") REFERENCES "contexts" ("id");

-- ALTER TABLE "contexts" ADD FOREIGN KEY ("os_type") REFERENCES "os_type" ("id");

-- ALTER TABLE "devices_contexts" ADD FOREIGN KEY ("device_id") REFERENCES "devices" ("id");
-- ALTER TABLE "devices_contexts" ADD FOREIGN KEY ("context_id") REFERENCES "contexts" ("id");

-- ALTER TABLE "devices" ADD FOREIGN KEY ("type") REFERENCES "device_type" ("id");

-- ALTER TABLE "workers" ADD FOREIGN KEY ("arch_id") REFERENCES "archs" ("id");
-- ALTER TABLE "workers" ADD FOREIGN KEY ("current_job_id") REFERENCES "jobs" ("id");
