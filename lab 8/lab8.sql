


drop table if exists Directs;
drop table if exists Acts;
drop table if exists Actors;
drop table if exists Directors;
drop table if exists Movies;



-- Actors --
create table Actors (
   aid char(4) not null,
   Name text,
   Address varchar,
   BirthDate date,
   HairColor text,
   EyeColor text,
   Height int,
   Weight int,
   SpouseName text,
   FavColor text,
   ScreenActorsGuildAnniverseryDate varchar,
	primary key(aid)
);

-- Directors --
create table Directors (
    did char(4) not null,
    Name text,
    Address varchar,
    SpouseName text,
    FilmSchool text,
    DirectorsGuildAnniverseryDate varchar,
    FavLensMaker text,
    primary key(did)
    );

-- Movies --
create table Movies (
    mid char(4) not null,
    Name text,
    YearReleased int,
    MPAAnum int,
    DomesticSales numeric(15,2),
    ForeignSales numeric(15,2),
    DVDsales numeric(15,2),
    primary key(mid)
);

-- Acts --
create table Acts(
    roleNum char(4) not null,
    mid char(4) not null references Movies(mid),
    aid char(4) not null references Actors(aid),
    Role text,
	primary key (roleNum));
    
-- Directs --
create table Directs(
    dirNum char(4) not null,
    mid char(4) not null references Movies(mid),
    did char(4) not null references Directors(did));
    
   
-- Actors data --
insert into Actors( aid, Name, Address, BirthDate, HairColor, EyeColor, 
Height, Weight, SpouseName, FavColor, ScreenActorsGuildAnniverseryDate)
 values('a001', 'Liam Neeson', '26 Tranquility Lane, Bethesda MD', '4/9/1960', 'Grey', 'Brown', 70, 165, 'Mary Neeson', 'Red', '6/7'),
 	   ('a002', 'Matt Damon', '1 College Road, Boston MA', '5/15/1975', 'Black', 'Green', 68, 175, 'Patricia Damon', 'Green', '7/9'),
       ('a003', 'Steve McQueen', '37 Lakeview Drive Spring Lake, NJ', '2/14/1951', 'Black', 'Brown', 65, 160, 'Jane Brown', 'Yellow', '4/23'),
       ('a004', 'Steven Burns', '28 Rock Ave, Trumbull CT', '2/16/1981', 'Brown', 'Blue', 62, 155, null, 'Orange', '4/2'),
       ('a005', 'Robbie Blum', '168 Jay Lane, Santa Cruz CA', '4/19/1987', 'Black', 'Blue', 72, 165, null, 'Green', '9/14'),
       ('a006', 'Martin Courtney', '3368 Green Street, Westfield NJ', '5/25/1978', 'Black', 'Green', 66, 185, 'Sarah Courtney', 'Green', '10/10'),
       ('a007', 'Matt Mondonile', '12 Duck Drive, Westfield NJ', '6/9/1977', 'Black', 'Blue', 73, 183, 'Amy Mondonile', 'Teal', '11/4'),
       ('a008', 'Ricky Vaughn', '17 Reservoir Blvd, Glendale AZ', '9/22/1972', 'Black', 'Blue', 71, 175, 'Debbie Vaughn', 'Purple', '12/2'),
       ('a009', 'Pauly Shore', '459 Elm Street, Hollywood CA', '2/1/1968', 'Black', 'Brown', 67, 190, 'Sheila Shore', 'Green', '1/26'),
       ('a010', 'Brendan Frasier', '132 Hammertown Road, Hollywood CA', '5/7/1975', 'Brown', 'Brown', 70, 200, 'Hannah Frasier', 'Orange', '4/26'); 
 
-- Movies data --
insert into Movies( mid, Name, YearReleased, MPAAnum, DomesticSales, ForeignSales, DVDsales)
values('m001', 'Encino Man', 1992, 41892, 25000000.00, 7500000.00, 15000000.00);

insert into Movies( mid, Name, YearReleased, MPAAnum, DomesticSales, ForeignSales, DVDsales)
values('m002', 'Taken 25', 2015, 51432, 65000000.00, 49000200.00, 12000000.00);

insert into Movies( mid, Name, YearReleased, MPAAnum, DomesticSales, ForeignSales, DVDsales)
values('m003', 'Snow Days', 2007, 48521, 78002000.00, 2450000.00, 9500000.00);

insert into Movies( mid, Name, YearReleased, MPAAnum, DomesticSales, ForeignSales, DVDsales)
values('m004', 'Surreal Exposure', 2013, 49821, 102000000.00, 55000000.00, 6000000.00);

insert into Movies( mid, Name, YearReleased, MPAAnum, DomesticSales, ForeignSales, DVDsales)
values('m005', 'Major League', 1989, 38021, 32000000.00, 23000000.00, 14000000.00);

insert into Movies( mid, Name, YearReleased, MPAAnum, DomesticSales, ForeignSales, DVDsales)
values('m006', 'Bourne Legacy Rebourne 6', 2016, 51913, 241000000.00, 124000000.00, 16000000.00);

insert into Movies( mid, Name, YearReleased, MPAAnum, DomesticSales, ForeignSales, DVDsales)
values('m007', 'Air Bud', 1997, 44678, 132000000.00, 21000000.00, 6000000.00);

insert into Movies( mid, Name, YearReleased, MPAAnum, DomesticSales, ForeignSales, DVDsales)
values('m008', 'Wanted Dead or Alive', 1975, 35674, 12000000.00, 9500000.00, 870000000.00);

insert into Movies( mid, Name, YearReleased, MPAAnum, DomesticSales, ForeignSales, DVDsales)
values('m009', 'Bio-Dome', 1996, 43987, 13000000.00, 4560000.00, 3600000.00);
      
insert into Movies( mid, Name, YearReleased, MPAAnum, DomesticSales, ForeignSales, DVDsales)
values('m010', 'The Mummy', 1999, 46102, 42000000.00, 98000000.00, 70000.00);

-- Directors data --
insert into Directors(did, Name, Address, SpouseName, FilmSchool, DirectorsGuildAnniverseryDate, FavLensMaker)
values('d001', 'Stephen Sommers', '4 Applewood Drive, Seattle WA', 'Sophia Sommers', 'FIT', '5/2', 'LensBaby'),
	  ('d002', 'Pauly Shore', '459 Elm Street, Hollywood CA', 'Sheila Shore', 'Syracuse University', '6/6', 'Canon'),
      ('d003', 'Martin Courtney', '3368 Green Street, Westfield NJ', 'Sarah Courtney', 'Ithaca College', '6/6', 'Nikon'),
      ('d004', 'Bill Evans', '457 River Street, Mohawk NY', 'Debby Evans', 'Colorado Film School', '8/4', 'Canon'),
      ('d005', 'Brian Meyer', '243 Main Street, Riverdale MA', 'Jill Meyer', 'Florida State University', '9/7', 'Nikon');

insert into Acts(roleNum, mid, aid, role)
values('r001', 'm001', 'a009', 'Stoney Brown'),
	  ('r002', 'm001', 'a010', 'Link'),
      ('r003', 'm002', 'a001', 'Bryan Mills'),
      ('r004', 'm003', 'a006', 'Martin Courtney'),
      ('r005', 'm003', 'a007', 'Matt Mondonile'),
      ('r006', 'm004', 'a007', 'Matt Mondonile'),
      ('r007', 'm005', 'a008', 'Ricky Vaughn'),
      ('r008', 'm006', 'a002', 'Jason Bourne'),
      ('r009', 'm007', 'a005', 'Air Bud'),
      ('r010', 'm008', 'a003', 'Josh Randall'),
      ('r011', 'm008', 'a004', 'Jason Nichols'),
      ('r012', 'm009', 'a009', 'Bud Macintosh'),
      ('r013', 'm009', 'a005', 'Doyle Johnson'),
      ('r014', 'm010', 'a010', 'Rick OConnell');
      
      
insert into Directs(DirNum, did, mid)
values('0001', 'd001', 'm002'),
 	  ('0002', 'd001', 'm010'),
	  ('0003', 'd002', 'm001'),
      ('0004', 'd002', 'm009'),
      ('0005', 'd003', 'm003'),
      ('0006', 'd003', 'm004'),
      ('0007', 'd005', 'm007'),
      ('0008', 'd005', 'm008'),
      ('0009', 'd004', 'm005'),
      ('0010', 'd004', 'm006');
      
      



       


    