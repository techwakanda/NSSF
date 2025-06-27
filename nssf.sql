--  -- CREATE DATABASE NSSF_Employee;
--  Use NSSF
 -- CREATE TABLE NSSF (
--     NationalID VARCHAR(10) PRIMARY KEY,
--     Name VARCHAR(50),
--     DateOfBirth DATE,
--     NSSFNo VARCHAR(10),
--     Sex ENUM('Male', 'Female'),
--     BasicSalary DECIMAL(10,2),
--     Deduction DECIMAL(10,2)
-- );
-- INSERT INTO NSSF (NationalID, Name, DateOfBirth, NSSFNo, Sex, BasicSalary)
-- VALUES 
-- ('24500010', 'Cate Mwambia', '1965-01-02', 'T3728944', 'Female', 180500.75),
-- ('24500011', 'Clinton Kavetsa', '1967-08-22', 'T3782604', 'Male', 100190.20),
-- ('24500012', 'Raymond Omollo', '1973-04-10', 'E4512268', 'Male', 85000.40),
-- ('24500013', 'Oscar Katuku', '1971-11-22', 'E4521286', 'Male', 120330.15),
-- ('24500014', 'Jackline Mweni', '1982-02-07', 'G754900', 'Female', 275450.35),
-- ('24500015', 'Jane Wabwire', '1976-12-13', 'E6893542', 'Female', 66870.25),
-- ('24500016', 'Samson Kinyutu', '1958-07-05', 'R753597', 'Male', 46000.00),
-- ('24500017', 'Daisy Oketch', '1975-05-05', 'E679826', 'Female', 88564.55);

-- SET SQL_SAFE_UPDATES = 0;
-- UPDATE NSSF
-- SET Deduction = ROUND(BasicSalary * 0.02, 2);
-- SET SQL_SAFE_UPDATES = 1;

-- CREATE TABLE Pay (
--     Emp_no INT PRIMARY KEY,
--     Fixed_salary DECIMAL(10, 2),
--     Overtime_hours INT,
--     Overtime_Pay DECIMAL(10, 2),
--     Gross_Pay DECIMAL(10, 2),
--     Tax DECIMAL(10, 2),
--     Net_Pay DECIMAL(10, 2)
-- );

-- -- Inserting records with formula:
-- -- Overtime_Pay = 0.15 * Fixed_Salary * (Overtime_hours / 100)
-- -- Gross_Pay = Fixed_Salary + Overtime_Pay
-- -- Tax = 0.35 * Gross_Pay
-- -- Net_Pay = Gross_Pay - Tax

-- INSERT INTO Pay (Emp_no, Fixed_salary, Overtime_hours, Overtime_Pay, Gross_Pay, Tax, Net_Pay)
-- VALUES
-- (
--     95000,
--     160000,
--     60,
--     0.15 * 160000 * (60 / 100),  -- 14400
--     160000 + (0.15 * 160000 * 0.6),  -- 174400
--     0.35 * (160000 + 14400),  -- 61040
--     (160000 + 14400) - (0.35 * (160000 + 14400))  -- 113360
-- ),
-- (
--     95001,
--     74000,
--     120,
--     0.15 * 74000 * (120 / 100),  -- 13320
--     74000 + (0.15 * 74000 * 1.2),  -- 87320
--     0.35 * (74000 + 13320),  -- 30562
--     (74000 + 13320) - (0.35 * (74000 + 13320))  -- 56758
-- );

-- SELECT * FROM Pay
-- WHERE Tax > 15000 AND Tax < 42000;

SELECT * FROM Pay
WHERE Overtime_Pay <> 85000;


 

