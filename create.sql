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
  "name" varchar UNIQUE NOT NULL,
  "description" varchar
);

CREATE TABLE "jobs" (
  "id" integer UNIQUE PRIMARY KEY,
  "app_id" integer NOT NULL,
  "user_id" integer NOT NULL,
  "context_id" integer NOT NULL,

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
    REFERENCES "os_type"( "id")
);

CREATE TABLE "devices_contexts" (
  "device_id" integer NOT NULL,
  "context_id" integer NOT NULL,

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
  "data" varchar,

  CONSTRAINT "fk_device_type"
    FOREIGN KEY ("type")
    REFERENCES "device_type"( "id")
);

CREATE TABLE "workers" (
  "id" integer UNIQUE PRIMARY KEY,
  "device_id" integer NOT NULL,
  "name" varchar NOT NULL,
  "arch_id" integer NOT NULL,
  "current_job_id" integer,

  CONSTRAINT "fk_devices"
    FOREIGN KEY ("device_id")
    REFERENCES "devices" ("id"),
  CONSTRAINT "fk_archs"
    FOREIGN KEY ("arch_id")
    REFERENCES "archs" ("id"),
  CONSTRAINT "fk_jobs"
    FOREIGN KEY ("current_job_id")
    REFERENCES "jobs" ("id")
);




INSERT INTO archs (id, name) VALUES (1, 'i386');
INSERT INTO archs (id, name) VALUES (2, 'x64');
INSERT INTO archs (id, name) VALUES (3, 'arm64');
INSERT INTO archs (id, name) VALUES (4, 'armel');
INSERT INTO archs (id, name) VALUES (5, 'mips');
INSERT INTO archs (id, name) VALUES (6, 'mips64el');
INSERT INTO archs (id, name) VALUES (7, 'mipsel');
INSERT INTO archs (id, name) VALUES (8, 'ppc64el');
INSERT INTO archs (id, name) VALUES (9, 'nvidia');

INSERT INTO os_type (id, name) VALUES (1, 'linux');
INSERT INTO os_type (id, name) VALUES (2, 'osx');
INSERT INTO os_type (id, name) VALUES (3, 'windows');
INSERT INTO os_type (id, name) VALUES (4, 'android');


INSERT INTO device_type (id, name) VALUES (0, 'unknown');
INSERT INTO device_type (id, name) VALUES (1, 'CPU');
INSERT INTO device_type (id, name) VALUES (2, 'memory');
INSERT INTO device_type (id, name) VALUES (3, 'storage');
INSERT INTO device_type (id, name) VALUES (4, 'Ethernet');
INSERT INTO device_type (id, name) VALUES (5, 'GPU');





-- ALTER TABLE "jobs" ADD FOREIGN KEY ("app_id") REFERENCES "apps" ("id");
-- ALTER TABLE "jobs" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
-- ALTER TABLE "jobs" ADD FOREIGN KEY ("context_id") REFERENCES "contexts" ("id");

-- ALTER TABLE "contexts" ADD FOREIGN KEY ("os_type") REFERENCES "os_type" ("id");

-- ALTER TABLE "devices_contexts" ADD FOREIGN KEY ("device_id") REFERENCES "devices" ("id");
-- ALTER TABLE "devices_contexts" ADD FOREIGN KEY ("context_id") REFERENCES "contexts" ("id");

-- ALTER TABLE "devices" ADD FOREIGN KEY ("type") REFERENCES "device_type" ("id");

-- ALTER TABLE "workers" ADD FOREIGN KEY ("arch_id") REFERENCES "archs" ("id");
-- ALTER TABLE "workers" ADD FOREIGN KEY ("current_job_id") REFERENCES "jobs" ("id");
