CREATE DATABASE IF NOT EXISTS Gallery;

USE Gallery;
CREATE DATABASE IF NOT EXISTS Gallery;

USE Gallery;

CREATE table User(User_ID int AUTO_INCREMENT not null primary key, 
					FirstName varchar(20) not null,
					
					Phone int not null);



CREATE table Gallery(Gallery_ID int AUTO_INCREMENT not null primary key, 
					 Gallery_Name varchar(40) not null,
					 URL varchar(40) not null, 
					 Location varchar(100) not null );

CREATE table Location(Location_ID int AUTO_INCREMENT not null primary key, 
						Location_Name varchar(40) not null, 
		
						Location_type varchar(40) not null, 
						Start_Date date not null, 
						End_Date date not null);

CREATE table Category(Cateory_ID int AUTO_INCREMENT not null primary key, 
					   
					  Category_Name varchar(40) not null, 
					  Start_Date date not null, 
						End_Date date not null);
					  

CREATE table Art(Art_ID int AUTO_INCREMENT not null primary key, 
					  Title varchar(40) not null, 
					 
					  Year year(4) not null, 
					  Type varchar(40) not null, 
					  

CREATE table Display(Category_ID int not null, 
		     Art_ID int not null, 
		     primary key (Category_ID,Art_ID));

ALTER table Gallery add column Date_ID int not null;

ALTER table Gallery add foreign key(Date_ID) references User(User_ID) on delete cascade;


ALTER table User add column Price_ID int not null;

ALTER table Art add foreign key (Price_ID) references User(User_ID) on delete cascade;


ALTER table Art add column Gallery_ID int not null;

ALTER table Art add foreign key (Gallery_ID) references Gallery(Gallery_ID) on delete cascade;


ALTER table Art add column C_ID int not null;

ALTER table Art add foreign key (Category_ID) references Category(Category_ID) on delete cascade;


ALTER table Display add foreign key (Location_ID) references Location(Location_ID) on delete cascade;

ALTER table Display add foreign key (Painting_ID) references Art(Art_ID) on delete cascade;
