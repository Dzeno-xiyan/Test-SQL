Datenbank :

SQL
CREATE TABLE Schüler (
    Vorname TEXT,
    Nachname TEXT,
    Alter INTEGER,
    Punkte INTEGER,
    PLZ INTEGER,
    Stadt TEXT,
    Email TEXT
);

SQL
CREATE TABLE Bücher (
    Titel TEXT,
    ISBN TEXT,
    Verlag TEXT,
    Ausgeliehen INTEGER,
    Ausgeliehen_von TEXT
);


SQL
CREATE TABLE Zeitschriften (
    Titel TEXT,
    ISBN TEXT,
    Verlag TEXT,
    Preis REAL,
    Datum TEXT,
    StckZahl INTEGER
);

-----------------------------------------------------------------------------

INSERT INTO Schüler (Vorname, Nachname, Alter, Punkte, PLZ, Stadt, Email)
VALUES
    ('Max', 'Mustermann', 16, 85, 12345, 'Musterstadt', 'max.mustermann@example.com'),
    ('Anna', 'Schmitz', 17, 92, 67890, 'Beispieldorf', 'anna.schmitz@example.com'),
    ('Peter', 'Meyer', 15, 78, 54321, 'Beispielhausen', 'peter.meyer@example.com'),
    ('Lisa', 'Müller', 18, 95, 98765, 'Musterdorf', 'lisa.mueller@example.com'),
    ('Tim', 'Schmidt', 16, 82, 12345, 'Musterstadt', 'tim.schmidt@example.com'),
    ('Lea', 'Wagner', 17, 90, 67890, 'Beispieldorf', 'lea.wagner@example.com'),
    ('Ben', 'Becker', 15, 75, 54321, 'Beispielhausen', 'ben.becker@example.com'),
    ('Mia', 'Weber', 18, 98, 98765, 'Musterdorf', 'mia.weber@example.com'),
    ('Paul', 'Fischer', 16, 88, 12345, 'Musterstadt', 'paul.fischer@example.com'),
    ('Sophie', 'Bauer', 17, 93, 67890, 'Beispieldorf', 'sophie.bauer@example.com');


-------------------------------------------------------------------------------------


INSERT INTO Bücher (Titel, ISBN, Verlag, Ausgeliehen, Ausgeliehen_von)
VALUES
    ('Der kleine Prinz', '9782266000018', 'Gallimard', 1, 'Max Mustermann'),
    ('1984', '9783423136017', 'dtv', 0, NULL),
    ('Stolz und Vorurteil', '9783423301844', 'dtv', 1, 'Anna Schmidt'),
    ('Der Name der Rose', '9783423115280', 'dtv', 0, NULL),
    ('Der Herr der Ringe', '9783453129016', 'dtv', 1, 'Peter Meyer'),
    ('Harry Potter und der Stein der Weisen', '9783548266013', 'Carlsen', 0, NULL),
    ('Kafka am Strand', '9783462033245', 'Suhrkamp', 1, 'Lisa Müller'),
    ('Die unendliche Geschichte', '9783423000017', 'Thienemann', 0, NULL),
    ('Der Alchimist', '9783423122536', 'dtv', 1, 'Tim Schmidt'),
    ('Momo', '9783423006497', 'Thienemann', 0, NULL);



----------------------------------------------------------------------------------------------------------


INSERT INTO Zeitschriften (Titel, ISBN, Verlag, Preis, Datum, StckZahl)
VALUES
    ('Nature', '1234-5678', 'Springer Nature', 29.99, '2023-11-27', 50),
    ('Science', '8765-4321', 'AAAS', 35.00, '2023-12-01', 30),
    ('Scientific American', '9876-5432', 'Scientific American', 19.95, '2023-12-15', 25),
    ('Nature Geoscience', '1234-5679', 'Springer Nature', 25.99, '2023-11-20', 40),
    ('Cell', '6789-0123', 'Cell Press', 32.00, '2023-12-05', 35),
    ('The Economist', '4321-8765', 'The Economist Group', 15.99, '2023-11-28', 60),
    ('National Geographic', '5678-1234', 'National Geographic Partners', 9.99, '2023-12-10', 45),
    ('New Scientist', '3210-9876', 'New Scientist', 18.50, '2023-12-15', 38),
    ('Forbes', '7890-1234', 'Forbes Media', 12.99, '2023-11-30', 55),
    ('Wired', '2345-6789', 'Condé Nast', 14.95, '2023-12-03', 42);

--------------------------------------------------------------------------------------------




