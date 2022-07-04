# Create database
create database javatest;

# Select the webapp database to use
use javatest;

create table testdata (
  id int not null auto_increment primary key,
  foo varchar(25),
  bar int);

insert into testdata values(null, 'hello', 12345);