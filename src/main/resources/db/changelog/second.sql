--liquibase formatted sql

--changeset alex:4
CREATE TABLE IF NOT EXISTS test (
   id SERIAL PRIMARY KEY,
   code VARCHAR,
   sort_order INTEGER
);

--rollback drop table test;

--changeset alex:5
CREATE TABLE IF NOT EXISTS test2 (
   id SERIAL PRIMARY KEY,
   code VARCHAR,
   name VARCHAR
);

--rollback drop table test2;