/*Create a Student table with the following column names, data types, and constraints:

ID - integer with range 0 to 65 thousand, auto increment, primary key

FirstName - variable-length string with max 20 chars, not NULL

LastName - variable-length string with max 30 chars, not NULL

Street - variable-length string with max 50 chars, not NULL

City - variable-length string with max 20 chars, not NULL

State - fixed-length string of 2 chars, not NULL, default "TX"

Zip - integer with range 0 to 16 million, not NULL

Phone - fixed-length string of 10 chars, not NULL

Email - variable-length string with max 30 chars, must be unique*/

create table Student(
ID smallint unsigned auto_increment primary key,
FirstName varchar(20) not null,
LastName varchar(30) not null,
Street varchar(50) not null,
City varchar(20) not null,
State char(2) not null default"TX",
Zip mediumint unsigned not null,
Phone char(10) not null,
Email varchar(30) unique);

