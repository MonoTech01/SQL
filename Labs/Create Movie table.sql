/*Create a Movie table with the following columns:

ID - positive integer with maximum value of 65,535
Title - variable-length string with up to 50 characters
Rating - fixed-length string with 4 characters
ReleaseDate - date
Budget - decimal value representing a cost of up to 999,999 dollars, with 2 digits for cents*/

create table Movie(
ID smallint unsigned,
Title varchar(50),
Rating char(4),
ReleaseDate date,
Budget decimal(8,2));
