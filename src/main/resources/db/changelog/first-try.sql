--liquibase formatted sql

--changeset alex:1
CREATE TABLE IF NOT EXISTS sizes (
   id SERIAL PRIMARY KEY,
   code VARCHAR,
   sort_order INTEGER
);

--rollback drop table sizes;

--changeset alex:2
CREATE TABLE IF NOT EXISTS colors (
   id SERIAL PRIMARY KEY,
   code VARCHAR,
   name VARCHAR
);

--rollback drop table colors;