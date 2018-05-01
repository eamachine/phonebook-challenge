create database contactsdb;

CREATE USER springuser WITH PASSWORD 'password';

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO springuser;
GRANT SELECT ON contact TO springuser;
GRANT INSERT ON contact TO springuser;

CREATE TABLE contact (
id        integer  SERIAL PRIMARY KEY ,
firstName       varchar(256),
lastName       varchar(256),
phone       varchar(15));

insert into contact values (1, 'Arun', 'kart', '415-8679089');
insert into contact values (2, 'Juan', 'Torus', '301-2390930');
insert into contact values (3, 'Nolux', 'Fernandez', '310-2930291');