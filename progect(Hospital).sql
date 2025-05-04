create database test4;
CREATE TABLE test4. Patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    gender ENUM('Male', 'Female'),
    date_of_birth DATE,
    phone VARCHAR(15),
    address TEXT
);
CREATE TABLE test4. Doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);
CREATE TABLE test4. Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATETIME,
    reason TEXT,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);
CREATE TABLE test4. Medical_Records (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    diagnosis TEXT,
    treatment TEXT,
    record_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);
CREATE TABLE test4. Medications (
    medication_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT
);
CREATE TABLE test4. Prescriptions (
    prescription_id INT AUTO_INCREMENT PRIMARY KEY,
    record_id INT,
    medication_id INT,
    dosage VARCHAR(100),
    frequency VARCHAR(100),
    FOREIGN KEY (record_id) REFERENCES Medical_Records(record_id),
    FOREIGN KEY (medication_id) REFERENCES Medications(medication_id)
);
INSERT INTO test4. Patients (name, gender, date_of_birth, phone, address)
VALUES 
('أحمد محمد', 'Male', '1990-05-15', '01012345678', 'القاهرة'),
('سارة علي', 'Female', '1985-12-10', '01087654321', 'الجيزة');
INSERT INTO test4. Doctors (name, specialization, phone, email)
VALUES 
('د. محمود عادل', 'قلب', '01234567890', 'mahmoud@example.com'),
('د. منى حسن', 'أطفال', '01123456789', 'mona@example.com');
INSERT INTO test4. Appointments (patient_id, doctor_id, appointment_date, reason)
VALUES 
(1, 1, '2025-05-10 10:00:00', 'مراجعة فحص القلب'),
(2, 2, '2025-05-11 12:30:00', 'كحة وحرارة');
INSERT INTO test4. Medical_Records (patient_id, diagnosis, treatment, record_date)
VALUES 
(1, 'ارتفاع ضغط الدم', 'أدوية تنظيم الضغط', '2025-05-10'),
(2, 'نزلة برد', 'راحة ومضاد حيوي', '2025-05-11');
INSERT INTO test4. Medications (name, description)
VALUES 
('كونكور', 'دواء لعلاج ارتفاع ضغط الدم'),
('أموكسيسيلين', 'مضاد حيوي واسع المجال');
INSERT INTO test4. Prescriptions (record_id, medication_id, dosage, frequency)
VALUES 
(1, 1, '5 مجم', 'مرة واحدة يوميًا'),
(2, 2, '500 مجم', '3 مرات يوميًا');
select * from test4. Medications;










