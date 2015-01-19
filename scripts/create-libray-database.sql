# Create sample libary database

# Start from scratch
drop database if exists library;
create database library;
use library;

# Create the tables

create table borrowers
( borrowerid int not null primary key auto_increment,
  name varchar(100) not null,
  address varchar(100) not null
) engine = innodb;


create table books
(   bookid int not null primary key auto_increment,
    title varchar(100) not null,
    author varchar(100) not null,
    onloan boolean,
    duedate date,
    borrowerid int,
    foreign key (borrowerid) references borrowers(borrowerid)
) engine = innodb;

# Populate the tables with some sample data

insert into borrowers values
    (100, 'Homer Simpson', '742 Evergreen Terrace, Springfield'),
    (101, 'John Doe', '54 High Street, Bagshot'),
    (102, 'Jane Smith', '5 Church Lane, Hambridge'),
    (103, 'Henry Higgins', '14 Mayfair');


insert into books values
    (null, 'Dodger', 'Terry Pratchett', false, null, null),
    (null, 'Dune', 'Frank Herbert', false, null, null),
    (null, 'The Lost Continent', 'Bill Bryson', false, null, null),
    (null, 'Knots and Crosses', 'Ian Rankin', false, null, null),
    (null, 'The hanging Garden', 'Ian Rankin', false, null, null);
