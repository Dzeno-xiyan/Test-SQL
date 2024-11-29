CREATE TABLE CD (
    CD_ID INT PRIMARY KEY AUTO_INCREMENT,
    ISBN_Nummer VARCHAR(20) UNIQUE,
    Titel VARCHAR(100)
);

CREATE TABLE Interpret (
    Interpret_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100)
);

CREATE TABLE CD_Interpret (
    CD_ID INT,
    Interpret_ID INT,
    PRIMARY KEY (CD_ID, Interpret_ID),
    FOREIGN KEY (CD_ID) REFERENCES CD(CD_ID),
    FOREIGN KEY (Interpret_ID) REFERENCES Interpret(Interpret_ID)
);

CREATE TABLE Song (
    Song_ID INT PRIMARY KEY AUTO_INCREMENT,
    Titel VARCHAR(100),
    CD_ID INT,
    FOREIGN KEY (CD_ID) REFERENCES CD(CD_ID)
);

INSERT INTO CD (ISBN_Nummer, Titel)
VALUES
    ('978-0-14311939-1', 'To Kill a Mockingbird'),
    ('978-0-06112008-4', 'The Lord of the Rings'),
    ('978-0-34539180-2', 'Pride and Prejudice'),
    ('978-0-45228424-6', '1984'),
    ('978-0-39304740-0', 'Sapiens: A Brief History of Humankind');
INSERT INTO Interpret (Name)
VALUES
    ('Harper Lee'),
    ('J.R.R. Tolkien'),
    ('Jane Austen'),
    ('George Orwell'),
    ('Yuval Noah Harari');

INSERT INTO CD_Interpret (CD_ID, Interpret_ID)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);

INSERT INTO Song (Titel, CD_ID)
VALUES
    ('Part One', 1),
    ('Part Two', 1),
    ('Book One', 2),
    ('Book Two', 2),
    ('Book Three', 2),
    ('Chapter 1', 3),
    ('Chapter 2', 3),
    ('Part One', 4),
    ('Part Two', 4),
    ('Part One', 5),
    ('Part Two', 5),
    ('Part Three', 5);

