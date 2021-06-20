INSERT INTO publisher (name, country) VALUES ('PHI', 'India');
INSERT INTO publisher (name, country) VALUES ('Harper', 'USA');
INSERT INTO publisher (name, country) VALUES ('GCP', 'USA');
INSERT INTO publisher (name, country) VALUES ('Avery', 'USA');
INSERT INTO publisher (name, country) VALUES ('Del Rey', 'UK');
INSERT INTO publisher (name, country) VALUES ('Vintage', 'UK');

INSERT INTO subjects (name) VALUES ('C');
INSERT INTO subjects (name) VALUES ('UNIX');
INSERT INTO subjects (name) VALUES ('Technology');
INSERT INTO subjects (name) VALUES ('Go');
INSERT INTO subjects (name) VALUES ('Science Fiction');
INSERT INTO subjects (name) VALUES ('Productivity');
INSERT INTO subjects (name) VALUES ('Psychology');
INSERT INTO subjects (name) VALUES ('Politics');
INSERT INTO subjects (name) VALUES ('History');

INSERT INTO books (title, publisher) VALUES ('The C Programming Language', (SELECT id FROM PUBLISHER WHERE name='PHI'));
INSERT INTO books (title, publisher) VALUES ('The Go Programming Language', (SELECT id FROM PUBLISHER WHERE name='PHI'));
INSERT INTO books (title, publisher) VALUES ('The UNIX Programming Environment', (SELECT id FROM PUBLISHER WHERE name='PHI'));
INSERT INTO books (title, publisher) VALUES ('Cryptonomicon', (SELECT id FROM PUBLISHER WHERE name='Harper'));
INSERT INTO books (title, publisher) VALUES ('Deep Work', (SELECT id FROM PUBLISHER WHERE name='GCP'));
INSERT INTO books (title, publisher) VALUES ('Atomic Habits', (SELECT id FROM PUBLISHER WHERE name='Avery'));
INSERT INTO books (title, publisher) VALUES ('The City and The City', (SELECT id FROM PUBLISHER WHERE name='Del Rey'));
INSERT INTO books (title, publisher) VALUES ('The Great War for Civilisation', (SELECT id FROM PUBLISHER WHERE name='Vintage'));



INSERT INTO books_subjects (book, subject) VALUES ((SELECT id FROM books WHERE title = 'The C Programming Language'), (SELECT id FROM subjects WHERE name = 'C'));
INSERT INTO books_subjects (book, subject) VALUES ((SELECT id FROM books WHERE title = 'The C Programming Language'), (SELECT id FROM subjects WHERE name = 'UNIX'));
INSERT INTO books_subjects (book, subject) VALUES ((SELECT id FROM books WHERE title = 'The C Programming Language'), (SELECT id FROM subjects WHERE name = 'Technology'));
INSERT INTO books_subjects (book, subject) VALUES ((SELECT id FROM books WHERE title = 'The Go Programming Language'), (SELECT id FROM subjects WHERE name = 'Go'));
INSERT INTO books_subjects (book, subject) VALUES ((SELECT id FROM books WHERE title = 'The Go Programming Language'), (SELECT id FROM subjects WHERE name = 'Technology'));
INSERT INTO books_subjects (book, subject) VALUES ((SELECT id FROM books WHERE title = 'The UNIX Programming Environment'), (SELECT id FROM subjects WHERE name = 'UNIX'));
INSERT INTO books_subjects (book, subject) VALUES ((SELECT id FROM books WHERE title = 'The UNIX Programming Environment'), (SELECT id FROM subjects WHERE name = 'Technology'));
INSERT INTO books_subjects (book, subject) VALUES ((SELECT id FROM books WHERE title = 'Cryptonomicon'), (SELECT id FROM subjects WHERE name = 'Technology'));
INSERT INTO books_subjects (book, subject) VALUES ((SELECT id FROM books WHERE title = 'Cryptonomicon'), (SELECT id FROM subjects WHERE name = 'Science Fiction'));
INSERT INTO books_subjects (book, subject) VALUES ((SELECT id FROM books WHERE title = 'Deep Work'), (SELECT id FROM subjects WHERE name = 'Technology'));
INSERT INTO books_subjects (book, subject) VALUES ((SELECT id FROM books WHERE title = 'Deep Work'), (SELECT id FROM subjects WHERE name = 'Productivity'));
INSERT INTO books_subjects (book, subject) VALUES ((SELECT id FROM books WHERE title = 'Atomic Habits'), (SELECT id FROM subjects WHERE name = 'Productivity'));
INSERT INTO books_subjects (book, subject) VALUES ((SELECT id FROM books WHERE title = 'Atomic Habits'), (SELECT id FROM subjects WHERE name = 'Psychology'));
INSERT INTO books_subjects (book, subject) VALUES ((SELECT id FROM books WHERE title = 'The City and The City'), (SELECT id FROM subjects WHERE name = 'Science Fiction'));
INSERT INTO books_subjects (book, subject) VALUES ((SELECT id FROM books WHERE title = 'The City and The City'), (SELECT id FROM subjects WHERE name = 'Politics'));
INSERT INTO books_subjects (book, subject) VALUES ((SELECT id FROM books WHERE title = 'The Great War for Civilisation'), (SELECT id FROM subjects WHERE name = 'Politics'));
INSERT INTO books_subjects (book, subject) VALUES ((SELECT id FROM books WHERE title = 'The Great War for Civilisation'), (SELECT id FROM subjects WHERE name = 'History'));



