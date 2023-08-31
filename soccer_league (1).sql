CREATE TABLE "teams" (
  "id" integer PRIMARY KEY,
  "team_name" varchar
);

CREATE TABLE "players" (
  "id" integer PRIMARY KEY,
  "first_name" text,
  "last_name" text,
  "team_id" integer
);

CREATE TABLE "games" (
  "id" integer PRIMARY KEY,
  "game_date" text,
  "team1_id" integer,
  "team2_id" integer,
  "score" text
);

CREATE TABLE "goals" (
  "goal_id" integer PRIMARY KEY,
  "player_id" integer,
  "game_id" integer
);

CREATE TABLE "referees" (
  "id" integer PRIMARY KEY,
  "first_name" text,
  "last_name" text
);

CREATE TABLE "referees_games" (
  "game_id" integer,
  "ref_id" integer
);

ALTER TABLE "players" ADD FOREIGN KEY ("team_id") REFERENCES "teams" ("id");

ALTER TABLE "games" ADD FOREIGN KEY ("team1_id") REFERENCES "teams" ("id");

ALTER TABLE "games" ADD FOREIGN KEY ("team2_id") REFERENCES "teams" ("id");

ALTER TABLE "goals" ADD FOREIGN KEY ("player_id") REFERENCES "players" ("id");

ALTER TABLE "goals" ADD FOREIGN KEY ("game_id") REFERENCES "games" ("id");

ALTER TABLE "referees_games" ADD FOREIGN KEY ("game_id") REFERENCES "games" ("id");

ALTER TABLE "referees_games" ADD FOREIGN KEY ("ref_id") REFERENCES "referees" ("id");
