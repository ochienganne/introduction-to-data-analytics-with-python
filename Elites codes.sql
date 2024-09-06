use Elites;
-- Original table
HealthRecord1 (RecordID, PatientName, Age, Gender, Diagnosis, Treatment, AdmissionDate, DischargeDate, DoctorName, Notes);
 select*from HealthRecord1;
 
 Create Separate Tables for Each Entity
-- Table 1: Patients
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10)
);
-- Table 2: Doctors

CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100)
);
-- Table 3: Diagnoses

CREATE TABLE Diagnoses (
    DiagnosisID INT PRIMARY KEY AUTO_INCREMENT,
    DiagnosisName VARCHAR(100)
);
-- Table 4: Treatments

CREATE TABLE Treatments (
    TreatmentID INT PRIMARY KEY AUTO_INCREMENT,
    TreatmentName VARCHAR(100)
);
-- Table 5: HealthRecords
CREATE TABLE HealthRecords (
    RecordID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    DiagnosisID INT,
    TreatmentID INT,
    AdmissionDate DATE,
    DischargeDate DATE,
    DoctorID INT,
    Notes TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DiagnosisID) REFERENCES Diagnoses(DiagnosisID),
    FOREIGN KEY (TreatmentID) REFERENCES Treatments(TreatmentID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);
--  Insert Data into New Tables
First, insert data into the Patients, Doctors, Diagnoses, and Treatments tables.

Insert into Patients

INSERT INTO Patients (Name, Age, Gender) VALUES
('John Doe', 45, 'Male'),
('Jane Smith', 30, 'Female'),
('Alice Johnson', 50, 'Female'),
('Bob Lee', 60, 'Male'),
('Charlie Kim', 40, 'Male'),
('Diana Ross', 35, 'Female'),
('Eve Adams', 28, 'Female'),
('Frank Wright', 55, 'Male'),
('Grace Lee', 65, 'Female');
Insert into Doctors

INSERT INTO Doctors (Name) VALUES
('Dr. Smith'),
('Dr. Brown'),
('Dr. White'),
('Dr. Green'),
('Dr. Black'),
('Dr. Grey'),
('Dr. Blue'),
('Dr. Red'),
('Dr. Yellow');
Insert into Diagnoses

INSERT INTO Diagnoses (DiagnosisName) VALUES
('Hypertension'),
('Diabetes'),
('Asthma'),
('Heart Disease'),
('Arthritis'),
('Migraine'),
('Anemia'),
('Cancer'),
('Osteoporosis');
Insert into Treatments

INSERT INTO Treatments (TreatmentName) VALUES
('Medication'),
('Insulin'),
('Inhaler'),
('Surgery'),
('Physical Therapy'),
('Iron Supplements'),
('Chemotherapy'),
('Calcium Supplements');
Insert into HealthRecords
-- You'll need to use the IDs from the other tables to insert into HealthRecords.
-- You can use JOINs or manual lookup to get IDs for insertion

-- Example for the first record
INSERT INTO HealthRecords (PatientID, DiagnosisID, TreatmentID, AdmissionDate, DischargeDate, DoctorID, Notes) VALUES
(1, 1, 1, '2024-01-10', '2024-01-20', 1, 'Follow-up required'),
(2, 2, 2, '2024-02-15', '2024-02-25', 2, NULL),
(3, 3, 3, '2024-03-05', '2024-03-15', 3, 'Monitor symptoms'),
(4, 4, 4, '2024-04-10', '2024-04-20', 4, 'Regular check-ups'),
(5, 5, 5, '2024-05-01', '2024-05-10', 5, 'Pain management'),
(6, 6, 6, '2024-06-15', '2024-06-25', 6, NULL),
(7, 7, 7, '2024-07-05', '2024-07-15', 7, 'Dietary changes'),
(8, 8, 8, '2024-08-10', '2024-08-20', 8, 'Regular follow-ups'),
(9, 9, 9, '2024-09-01', '2024-09-10', 9, 'Bone density monitoring');
