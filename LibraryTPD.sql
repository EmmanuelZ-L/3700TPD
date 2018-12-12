CREATE TABLE theUser (
	userID character(10) PRIMARY KEY,
	fName character (15),
	lName character (15),
	Address character varying (150), 
	Gender character (1),
	Birthday date
); 


CREATE TABLE book (
	ISBN character(20) PRIMARY KEY,
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
INSERT INTO theUser(userID, fname, lname, Address, Gender, Birthday)
VALUES ('0000000000', 'John', 'Doe', '1738 Squad Road', 'M', '1993-03-11'); 

INSERT INTO Book (ISBN, Name, Genre, Author)
VALUES ('0-8-7113-993-6', 'The Last Stand of Fox Company', 'Non-Fiction', 'Bob Drury'),
('0-8173-1161-0', 'China Marine', 'Non-Fiction', 'E.B. Sledge'),
('0-87011-355- 0', 'The Reluctant Admiral: Yamamoto and the Imperial Navy', 'Non-Fiction', 'Hiroyuki Agawa'),
('9781338299144', 'Harry Potter and the Philosophers Stone', 'Fiction', 'J.K. Rowling'),
('9780439064873', 'Harry Potter and the Chamber of Secrets', 'Fiction', 'J.K. Rowling'),
('9780747542155', 'Harry Potter and the Prisoner of Azkaban', 'Fiction', 'J.K. Rowling'),
('9780345342966', 'Fahrenheit 451', 'Fiction', 'Ray Bradbury');




	

	

	
