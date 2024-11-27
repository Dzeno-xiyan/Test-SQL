Erklärung:

CREATE TABLE: Erstellt eine neue Tabelle mit den angegebenen Spalten und Datentypen.
INSERT INTO: Fügt einen neuen Datensatz in eine Tabelle ein.
PRIMARY KEY: Definiert die eindeutige Kennung einer Zeile.
AUTOINCREMENT: Die ID wird automatisch erhöht für jeden neuen Eintrag.
FOREIGN KEY: Definiert eine Beziehung zwischen zwei Tabellen.
REFERENCES ist ein Schlüsselwort in SQL, das verwendet wird, um eine Beziehung zwischen zwei Tabellen herzustellen. Diese Beziehung wird als Fremdschlüsselbeziehung bezeichnet.
Fremdschlüssel: In der Tabelle "Behandlungen" wird eine Spalte (z.B. patient_id) definiert.
Verweis auf den Primärschlüssel: Diese Spalte wird mit REFERENCES mit dem Primärschlüssel einer anderen Tabelle (in diesem Fall patient_id in der Tabelle "Patienten") verknüpft.
Referenzielle Integrität: Durch diese Verknüpfung wird sichergestellt, dass in der Spalte "patient_id" der Tabelle "Behandlungen" nur Werte vorkommen, die auch als Primärschlüssel 
in der Tabelle "Patienten" existieren. Das heißt, du kannst in der Tabelle "Behandlungen" keinen Patienten angeben, der nicht in der Tabelle "Patienten" vorhanden ist.    
----------------------------------------------------------------------
    Beispiel:
CREATE TABLE Patienten (
    patient_id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE Behandlungen (
    behandlung_id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    FOREIGN KEY(patient_id) REFERENCES Patienten(patient_id)
);

patient_id in der Tabelle "Behandlungen" ist der Fremdschlüssel.
REFERENCES Patienten(patient_id) besagt, dass dieser Fremdschlüssel auf den Primärschlüssel patient_id in der Tabelle "Patienten" verweist.

----------------------------------------------------------------------    
----------------------------------------------------------------------

CREATE TABLE Patienten (
    patient_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nachname TEXT,
    vorname TEXT,
    geburtstag DATE,
    geschlecht CHAR,
    adresse TEXT
);

CREATE TABLE Ärzte (
    arzt_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nachname TEXT,
    vorname TEXT,
    fachgebiet TEXT
);

CREATE TABLE Diagnosen (
    diagnose_id INTEGER PRIMARY KEY AUTOINCREMENT,
    bezeichnung TEXT
);


CREATE TABLE Laborwerte (
    laborwert_id INTEGER PRIMARY KEY AUTOINCREMENT,
    patient_id INTEGER,
    untersuchungsdatum DATE,
    wert REAL,
    einheit TEXT,
    FOREIGN KEY(patient_id) REFERENCES Patienten(patient_id)
);


CREATE TABLE Behandlungen (
    behandlung_id INTEGER PRIMARY KEY AUTOINCREMENT,
    patient_id INTEGER,
    arzt_id INTEGER,
    diagnose_id INTEGER,
    behandlungsdatum DATE,
    beschreibung TEXT,
    FOREIGN KEY(patient_id) REFERENCES Patienten(patient_id),
    FOREIGN KEY(arzt_id) REFERENCES Ärzte(arzt_id),
    FOREIGN KEY(diagnose_id) REFERENCES Diagnosen(diagnose_id)
);

CREATE TABLE Medikamente (
    medikament_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE Verschreibungen (
    verschreibung_id INTEGER PRIMARY KEY AUTOINCREMENT,
    behandlung_id INTEGER,
    medikament_id INTEGER,
    dosis TEXT,
    FOREIGN KEY(behandlung_id) REFERENCES Behandlungen(behandlung_id),
    FOREIGN KEY(medikament_id) REFERENCES Medikamente(medikament_id)
);



-- Patienten
INSERT INTO Patienten (nachname, vorname, geburtstag, geschlecht, adresse)
VALUES ('Müller', 'Max', '1980-01-01', 'M', 'Musterstraße 1, 12345 Musterstadt');
INSERT INTO Patienten (nachname, vorname, geburtstag, geschlecht, adresse)
VALUES ('Schmidt', 'Anna', '1975-05-15', 'W', 'Hauptstraße 20, 54321 Musterstadt');

-- Ärzte
INSERT INTO Ärzte (nachname, vorname, fachgebiet)
VALUES ('Schneider', 'Peter', 'Chirurgie');
INSERT INTO Ärzte (nachname, vorname, fachgebiet)
VALUES ('Meyer', 'Maria', 'Innere Medizin');

-- Diagnosen
INSERT INTO Diagnosen (bezeichnung)
VALUES ('Grippe');
INSERT INTO Diagnosen (bezeichnung)
VALUES ('Bauchschmerzen');

-- Behandlungen
INSERT INTO Behandlungen (patient_id, arzt_id, diagnose_id, behandlungsdatum, beschreibung)
VALUES (1, 1, 1, '2023-11-22', 'Fiebersenkende Mittel');
INSERT INTO Behandlungen (patient_id, arzt_id, diagnose_id, behandlungsdatum, beschreibung)
VALUES (2, 2, 2, '2023-11-23', 'Ultraschall');

-- Medikamente
INSERT INTO Medikamente (name)
VALUES ('Paracetamol');
INSERT INTO Medikamente (name)
VALUES ('Ibuprofen');

-- Verschreibungen
INSERT INTO Verschreibungen (behandlung_id, medikament_id, dosis)
VALUES (1, 1, '2 Tabletten täglich');
INSERT INTO Verschreibungen (behandlung_id, medikament_id, dosis)
VALUES (2, 2, 'Nach Bedarf');

-- Laborwerte
INSERT INTO Laborwerte (patient_id, untersuchungsdatum, wert, einheit)
VALUES (1, '2023-11-22', 80, 'mg/dl'); -- Beispiel: Blutzuckerwert
INSERT INTO Laborwerte (patient_id, untersuchungsdatum, wert, einheit)
VALUES (2, '2023-11-22', 40, 'mg/dl'); -- Beispiel: Blutzuckerwert

-- Veränderung der Behandlung
ALTER TABLE Behandlungen
ADD COLUMN testzweck TEXT;

UPDATE Behandlungen
SET testzweck = 'Routineuntersuchung'
WHERE behandlung_id = 1;

UPDATE Behandlungen
SET testzweck = 'Notfall'
WHERE behandlung_id = 2;


