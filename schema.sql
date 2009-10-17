CREATE TABLE "logs" ("id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, "action" INTEGER, "note" VARCHAR(50), "number" INTEGER, "created_at" TIMESTAMP, "set_id" INTEGER NOT NULL, "owner_id" INTEGER NOT NULL, "operator_id" INTEGER NOT NULL);
CREATE TABLE "reservations" ("id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, "number" INTEGER, "user_id" INTEGER NOT NULL, "set_id" INTEGER NOT NULL);
CREATE TABLE "sequences" ("id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, "min" INTEGER, "max" INTEGER, "set_id" INTEGER NOT NULL);
CREATE TABLE "sets" ("id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, "name" VARCHAR(50), "type" INTEGER);
CREATE TABLE "users" ("id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, "email" VARCHAR(50), "name" VARCHAR(50), "password_hash" VARCHAR(32), "is_admin" BOOLEAN DEFAULT 'f');
CREATE INDEX "index_logs_operator" ON "logs" ("operator_id");
CREATE INDEX "index_logs_owner" ON "logs" ("owner_id");
CREATE INDEX "index_logs_set" ON "logs" ("set_id");
CREATE INDEX "index_reservations_set" ON "reservations" ("set_id");
CREATE INDEX "index_reservations_user" ON "reservations" ("user_id");
CREATE INDEX "index_sequences_set" ON "sequences" ("set_id");