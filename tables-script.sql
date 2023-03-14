CREATE DATABASE indian_bank;

CREATE TABLE product_master(
    pid char(2) primary key,
    product_name varchar(25) not null
);

CREATE TABLE region_master(
    rid integer primary key,
    region_name char(6) not null
);


CREATE TABLE branch_master(
    brid char(3) primary key,
    branch_name varchar(30) not null,
    branch_address varchar(50) not null,
    rid integer not null references region_master(rid)
);


CREATE TABLE user_master(
    userid integer primary key,
    username varchar(30) not null,
    designation char(1) not null
);


CREATE TABLE account_master(
    acid integer primary key,
    name varchar(40) not null,
    address varchar(50) not null,
    brid char(3) not null references branch_master(brid),
    pid char(2) not null references product_master(pid),
    date_of_opening datetime not null,
    clear_balance money,
    unclear_balance money,
    status char(1) default 'O'
);




CREATE TABLE transaction_master(
    transaction_number integer primary key identity(1,1),
    
);

