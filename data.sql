use schoolfeedb;
INSERT INTO Guardians (full_name, phone, email, address)
VALUES
('Mary Wambui', '0700111222', 'mary@ueab.ac.ke', 'Nakuru'),
('John Kiplagat', '0712345678', 'kiplagat10@gmail.com', 'Eldoret'),
('Alice Achieng', '0722333444', 'alice@gmail.com', 'Kisumu');

INSERT INTO Classes (class_name)
VALUES
('Grade 1'),
('Grade 2'),
('Grade 3');

INSERT INTO Students (full_name, gender, dob, guardian_id, class_id, admission_number)
VALUES
('Kevin Otieno', 'Male', '2016-05-10', 1, 1, 'ADM001'),
('Faith Njeri', 'Female', '2015-09-18', 2, 2, 'ADM002'),
('Brian Kiptoo', 'Male', '2016-12-01', 3, 3, 'ADM003');

INSERT INTO Academic_Terms (term_name, year)
VALUES
('Term 1', 2025),
('Term 2', 2025),
('Term 3', 2025);

INSERT INTO Fees (fee_name, amount, class_id) VALUES
('Tuition', 15000.00, 1),
('Activity', 2000.00, 1),
('Tuition', 16000.00, 2),
('Activity', 2500.00, 2),
('Tuition', 17000.00, 3),
('Activity', 3000.00, 3);

INSERT INTO Payment_Methods (method_name)
VALUES
('Mpesa'),
('Bank'),
('Goods');

INSERT INTO Payments (student_id, fee_id, term_id, amount_paid, payment_method, payment_reference, payment_date)
VALUES
(1, 1, 1, 10000.00, 1, 'MPESA123456', '2025-01-15'),
(2, 3, 1, 16000.00, 2, 'BANK987654', '2025-01-20'),
(3, 5, 1, 5000.00, 3, 'GOODS234567', '2025-01-25');

INSERT INTO Goods_Transactions (guardian_id, student_id, term_id, item_description, quantity, unit_value, total_value, transaction_date) VALUES
(1, 1, 1, 'Maize', 10, 5000.00, 50000.00, '2025-01-10'),
(3, 3, 1, 'Beans', 5, 7000.00, 35000.00, '2025-01-22');
