-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/ivnEew
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "campany_name" VARCHAR   NOT NULL,
    "description" VARCHAR(50)   NOT NULL,
    "goal" float   NOT NULL,
    "pladged" float   NOT NULL,
    "outcome" VARCHAR   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "currency" int   NOT NULL,
    "launch_date" datetime   NOT NULL,
    "end_date" datetime   NOT NULL,
    "category_ids" int   NOT NULL,
    "subcategory_ids" int   NOT NULL
);

CREATE TABLE "category" (
    "category_ids" int   NOT NULL,
    "category" VARCHAR   NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_ids" int   NOT NULL,
    "subcategory" VARCHAR   NOT NULL
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "email" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_ids" FOREIGN KEY("category_ids")
REFERENCES "category" ("category_ids");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_ids" FOREIGN KEY("subcategory_ids")
REFERENCES "subcategory" ("subcategory_ids");

