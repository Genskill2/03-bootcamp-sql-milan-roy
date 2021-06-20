CREATE TABLE publisher (id INTEGER PRIMARY KEY,
			 name TEXT,
			 country TEXT
			 );			 ;

CREATE TABLE books (id INTEGER PRIMARY KEY,
		     title TEXT,
		     publisher INTEGER,
		     CONSTRAINT fk_publisher
		     	FOREIGN KEY (publisher)
		     	REFERENCES publisher (id)
		     );			
		     
CREATE TABLE subjects (id INTEGER PRIMARY KEY,
			name TEXT
			);
			
CREATE TABLE books_subjects (book INTEGER,
			      subject INTEGER,
			      CONSTRAINT fk_books
			      	FOREIGN KEY (book)
			      	REFERENCES books(id),
			      CONSTRAINT fk_subjects
			      	FOREIGN KEY (subject)
			      	REFERENCES subjects(id)
			      	);	   
