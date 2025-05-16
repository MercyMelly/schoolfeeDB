CREATE DATABASE schoolfeeDB;
USE schoolfeeDB;


CREATE TABLE Guardians (
    guardian_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE,
    address TEXT
);

CREATE TABLE Classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    gender ENUM('Male', 'Female') NOT NULL,
    dob DATE NOT NULL,
    guardian_id INT NOT NULL,
    class_id INT NOT NULL,
    admission_number VARCHAR(20) UNIQUE NOT NULL,
    FOREIGN KEY (guardian_id) REFERENCES Guardians(guardian_id) ON DELETE CASCADE,
    FOREIGN KEY (class_id) REFERENCES Classes(class_id) 
);

CREATE TABLE Academic_Terms (
    term_id INT AUTO_INCREMENT PRIMARY KEY,
    term_name VARCHAR(50) NOT NULL,
    year YEAR NOT NULL
);

CREATE TABLE Fees (
    fee_id INT AUTO_INCREMENT PRIMARY KEY,
    fee_name VARCHAR(50) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    class_id INT NOT NULL,
    FOREIGN KEY (class_id) REFERENCES Classes(class_id) ON DELETE CASCADE
);

CREATE TABLE Payment_Methods (
    method_id INT AUTO_INCREMENT PRIMARY KEY,
    method_name ENUM('Mpesa', 'Bank', 'Goods') NOT NULL
);

CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    fee_id INT NOT NULL,
    term_id INT NOT NULL,
    amount_paid DECIMAL(10,2) NOT NULL,
    payment_method INT NOT NULL,
    payment_reference VARCHAR(100),
    payment_date DATE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (fee_id) REFERENCES Fees(fee_id) ON DELETE CASCADE,
    FOREIGN KEY (term_id) REFERENCES Academic_Terms(term_id) ON DELETE CASCADE,
    FOREIGN KEY (payment_method) REFERENCES Payment_Methods(method_id) ON DELETE CASCADE
);

CREATE TABLE Goods_Transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    guardian_id INT NOT NULL,
    student_id INT NOT NULL,
    term_id INT NOT NULL,
    item_description VARCHAR(100) NOT NULL,
    quantity DECIMAL(10,2) NOT NULL,
    unit_value DECIMAL(10,2) NOT NULL,
    total_value DECIMAL(10,2) NOT NULL,
    transaction_date DATE NOT NULL,
    FOREIGN KEY (guardian_id) REFERENCES Guardians(guardian_id) ON DELETE CASCADE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (term_id) REFERENCES Academic_Terms(term_id) ON DELETE CASCADE
);
