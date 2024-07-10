--liquibase formatted sql

--changeset your.name:1 labels:example-label context:example-context
--comment: Create the person table
create table person (
    id serial primary key not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE person;

--changeset your.name:2 labels:example-label context:example-context
--comment: Create the company table
create table company (
    id serial primary key not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE company;

--changeset other.dev:3 labels:example-label context:example-context
--comment: Alter the person table to add country column
alter table person add column country varchar(2)
--rollback ALTER TABLE person DROP COLUMN country;
