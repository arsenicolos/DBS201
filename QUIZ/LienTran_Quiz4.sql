-- name: Lien Tran --
-- ID:163733173 --

CREATE TABLE actorInformation (
ActorID int primary key,
LName varchar(30) not null,
FName varchar(30) not null,
DateOfBirth date,
BirthCountry varchar(3),
constraint birth_fk foreign key (BirthCountry) references country(CountryCode)
);

CREATE TABLE country(
CountryCode varchar(3) primary key,
CountryName char(50) not null 
);

