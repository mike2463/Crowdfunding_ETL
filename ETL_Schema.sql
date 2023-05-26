drop table campaign,category,contacts,subcategory;
create table if not exists "category" ("category_ids" VARCHAR not null, "category" VARCHAR not null, primary key (category_ids));
create table if not exists "subcategory" ("subcategory_ids" VARCHAR not null, "subcategory" VARCHAR not null, primary key (subcategory_ids));
create table if not exists "contacts" ("contact_id" int not null, "first_name" VARCHAR not null, "last_name" VARCHAR not null, "email" VARCHAR not null,
									  primary key ("contact_id"));
create table if not exists "campaign" ("cf_id" int not null, "contact_id" int, foreign key ("contact_id") references "contacts"("contact_id"), "company_name" VARCHAR not null, description VARCHAR(55) not null,
									  "goal" float not null, "pledged" float not null, "outcome" VARCHAR not null, "backers_count" int not null, "country" VARCHAR not null, 
									  "currency" VARCHAR not null, "launch_date" date not null, "end_date" date not null, "category_ids" VARCHAR not null, 
									 foreign key ("category_ids") references "category"("category_ids"), "subcategory" VARCHAR not null, 
									 foreign key ("subcategory") references "subcategory"("subcategory_ids"));
select * from contacts
select * from category
select * from subcategory
select * from campaign