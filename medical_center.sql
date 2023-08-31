CREATE TABLE "patients" (
  "id" integer PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar
);

CREATE TABLE "doctors" (
  "id" integer PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar
);

CREATE TABLE "relationships" (
  "patient_id" integer,
  "doctor_id" integer
);

CREATE TABLE "diagnoses" (
  "id" integer PRIMARY KEY,
  "diagnosis" text,
  "symptoms" text
);

CREATE TABLE "patient_diagnoses" (
  "patient_id" integer,
  "diagnosis_id" integer
);

ALTER TABLE "patients" ADD FOREIGN KEY ("id") REFERENCES "relationships" ("patient_id");

ALTER TABLE "doctors" ADD FOREIGN KEY ("id") REFERENCES "relationships" ("doctor_id");

ALTER TABLE "patients" ADD FOREIGN KEY ("id") REFERENCES "patient_diagnoses" ("patient_id");

ALTER TABLE "diagnoses" ADD FOREIGN KEY ("id") REFERENCES "patient_diagnoses" ("diagnosis_id");
