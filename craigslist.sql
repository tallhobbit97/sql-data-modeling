CREATE TABLE "regions" (
  "id" integer PRIMARY KEY,
  "region_name" text
);

CREATE TABLE "users" (
  "id" integer PRIMARY KEY,
  "username" varchar,
  "region_id" integer
);

CREATE TABLE "posts" (
  "title" text,
  "content" text,
  "user_id" integer,
  "location" text,
  "region_id" integer,
  "cat_id" integer
);

CREATE TABLE "categories" (
  "id" integer PRIMARY KEY,
  "category" text
);

ALTER TABLE "users" ADD FOREIGN KEY ("region_id") REFERENCES "regions" ("id");

ALTER TABLE "posts" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "posts" ADD FOREIGN KEY ("region_id") REFERENCES "regions" ("id");

ALTER TABLE "posts" ADD FOREIGN KEY ("cat_id") REFERENCES "categories" ("id");
