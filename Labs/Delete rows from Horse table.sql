/*The Horse table has the following columns:

ID - integer, auto increment, primary key
RegisteredName - variable-length string
Breed - variable-length string
Height - decimal number
BirthDate - date
Delete the following rows:

Horse with ID 5.
All horses with breed Holsteiner or Paint.
All horses born before March 13, 2013.*/

delete from Horse
where ID = 5;

delete from Horse
where Breed in ("Holsteiner","Paint");

delete from Horse
where BirthDate < "2013-03-13";
