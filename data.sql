create database se_project;
use se_project;

drop  table if exists account;

create table account(
username varchar(30),
password varchar(30),
email varchar(60),
phone varchar(20)
);

drop  table if exists cart;

create table cart(
username varchar(30),
item varchar(30),
amount int
);

drop  table if exists tools;

create table tools(
item varchar(30),
model varchar(30),
rate double,
salevolume int
)