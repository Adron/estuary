CREATE TABLE "users"."users" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "name" text NOT NULL, "email" text NOT NULL, "details" text, "user_metadata" jsonb, PRIMARY KEY ("id") , UNIQUE ("email"));
CREATE OR REPLACE FUNCTION "users"."set_current_timestamp_updated_at"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_users_users_updated_at"
BEFORE UPDATE ON "users"."users"
FOR EACH ROW
EXECUTE PROCEDURE "users"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_users_users_updated_at" ON "users"."users" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
