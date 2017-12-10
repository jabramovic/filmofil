drop database if exists filmofil;
create database filmofil character set utf8;

use filmofil;

create table film(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
godina int not null,
imdb varchar(50) not null,
opis text not null,
slika varchar(50) not null,
ocjena int not null,
zanr int not null
);


create table zanr(
sifra int not null primary key auto_increment,
naziv varchar(50) not null
);


create table korisnik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
korisnickoime varchar(30) not null,
email varchar(50) not null,
lozinka varchar(50) not null,
kreiran datetime not null
);

create table komentar(
sifra int not null primary key auto_increment,
opis text not null,
ocjena int not null,
korisnik int not null,
film int not null
);

alter table film add foreign key (zanr) references zanr(sifra);
alter table komentar add foreign key (film) references film(sifra);
alter table komentar add foreign key (korisnik) references korisnik(sifra);

