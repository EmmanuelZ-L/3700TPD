CREATE TABLE theUser (
	userID character(10) PRIMARY KEY,
	fName character (15),
	lName character (15),
	Address character varying (150), 
	Gender character (1),
	Birthday date
); 


CREATE TABLE book (
	ISBN character(13) PRIMARY KEY,
	Name character (150),
	Genre character(20)
);

CREATE TABLE publisher (
	publisherName character (30) PRIMARY KEY,
	publisherAddress character varying (150)
);

CREATE TABLE author (
	authorname character (40) PRIMARY KEY
);

CREATE TABLE worksFor (
	pubName character (30) REFERENCES publisher,
	authorName character(40) REFERENCES author,
	PRIMARY KEY ( pubName, authorName)
);

CREATE TABLE hasRead ( 
	bookISBN character (13) REFERENCES book,
	usID character (10) REFERENCES theUser,
	PRIMARY KEY (bookISBN, usID)
);

CREATE TABLE isReading (
	bookISBN character (13) REFERENCES book,
	usID character (10) REFERENCES theUser,
	pageNum character(4), 
	PRIMARY KEY (bookISBN, usID) 
);

CREATE TABLE publishedBy (
	pubName character (30) REFERENCES publisher,
	authorName character (40) REFERENCES author,
	pubDate date,
	PRIMARY KEY (pubName, authorName)
);

CREATE TABLE willRead (
	bookISBN character (13) REFERENCES book,
	usID character (10) REFERENCES theUser,
	PRIMARY KEY (bookISBN, usID)
);
-- Load data into tables
INSERT INTO theUser (userID, fName, lName, Address, Gender, Birthday) values
	(


	

	

	