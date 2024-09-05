CREATE DATABASE IF NOT EXISTS english_monarchs_project;
USE english_monarchs_project;

CREATE TABLE IF NOT EXISTS monarchs (
monarch_id INT  PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL);

INSERT INTO monarchs (name)
VALUES 
('Alfred the Great'),
('Edward the Elder'),
('Æthelstan'),
('Edmund I'),
('Eadred'),
('Eadwig'),
('Edgar the Peaceful'),
('Edward the Martyr'),
('Æthelred the Unready'),
('Sweyn Forkbeard'),
('Edmund II (Ironside)'),
('Canute'),
('Harold I Harefoot'),
('Harthacanute'),
('Edward the Confessor'),
('Harold II'),
('William I'),
('William II'),
('Henry I'),
('Stephen'),
('Henry II'),
('Richard I'),
('John'),
('Henry III'),
('Edward I'),
('Edward II'),
('Edward III'),
('Richard II'),
('Henry IV'),
('Henry V'),
('Henry VI'),
('Edward IV'),
('Edward V'),
('Richard III'),
('Henry VII'),
('Henry VIII'),
('Edward VI'),
('Mary I'),
('Philip the Prudent'),
('Elizabeth I'),
('James I'),
('Charles I'),
('Charles II'),
('James II'),
('William III'),
('Mary II'),
('Anne'),
('George I'),
('George II'),
('George III'),
('George IV'),
('William IV'),
('Victoria'),
('Edward VII'),
('George V'),
('Edward VIII'),
('George VI'),
('Elizabeth II'),
('Charles III');

SELECT * FROM monarchs;

CREATE TABLE IF NOT EXISTS monarchs_life_dates (
monarch_id INT PRIMARY KEY AUTO_INCREMENT,
birth_date DATE,
death_date DATE,
CHECK (birth_date <= death_date OR death_date IS NULL),
FOREIGN KEY (monarch_id) REFERENCES monarchs(monarch_id));

INSERT INTO monarchs_life_dates (monarch_id, birth_date, death_date)
VALUES 
(1, '0849-01-01', '0899-01-01'),
(2, '0874-01-01', '0924-07-17'),
(3, '0894-01-01', '0939-10-27'),
(4, '0921-01-01', '0946-05-26'),
(5, '0923-01-01', '0955-11-23'),
(6, '0941-01-01', '0959-10-01'),
(7, '0943-01-01', '0975-07-08'),
(8, '0965-01-01', '0978-03-18'),
(9, '0966-01-01', '1016-04-23'),
(10, '0963-04-17', '1014-02-03'),
(11, '0990-01-01', '1016-11-30'),
(12, '0995-01-01', '1035-11-12'),
(13, '1016-01-01', '1040-03-17'),
(14, '1018-01-01', '1042-06-08'),
(15, '1003-01-01', '1066-01-05'),
(16, '1022-01-01', '1066-10-14'),
(17, '1028-01-01', '1087-09-09'),
(18, '1056-01-01', '1100-08-02'),
(19, '1068-09-01', '1135-12-01'),
(20, '1096-01-01', '1154-10-25'),
(21, '1133-03-05', '1189-07-06'),
(22, '1157-09-08', '1199-04-06'),
(23, '1166-12-24', '1216-10-19'),
(24, '1207-10-01', '1272-11-16'),
(25, '1239-06-17', '1307-07-07'),
(26, '1284-04-25', '1327-09-21'),
(27, '1312-11-13', '1377-06-21'),
(28, '1367-01-06', '1400-02-14'),
(29, '1367-04-03', '1413-03-20'),
(30, '1386-09-16', '1422-08-31'),
(31, '1421-12-06', '1471-05-21'),
(32, '1442-04-28', '1483-04-09'),
(33, '1470-11-02', NULL), -- Edward V disappeared from the Tower of London along with his brother and so his precise death date is unknown
(34, '1452-10-02', '1485-08-22'),
(35, '1457-01-28', '1509-04-21'),
(36, '1491-06-28', '1547-01-28'),
(37, '1537-10-12', '1553-07-06'),
(38, '1516-02-18', '1558-11-17'),
(39, '1527-05-21', '1598-09-13'),
(40, '1533-09-07', '1603-03-24'),
(41, '1566-06-19', '1625-03-27'),
(42, '1600-11-19', '1649-01-30'),
(43, '1630-05-29', '1685-02-06'),
(44, '1633-10-14', '1701-09-16'),
(45, '1650-11-04', '1702-03-08'),
(46, '1662-04-30', '1694-12-28'),
(47, '1665-02-06', '1714-08-01'),
(48, '1660-05-28', '1727-06-11'),
(49, '1683-10-30', '1760-10-25'),
(50, '1738-05-24', '1820-01-29'),
(51, '1762-08-12', '1830-06-26'),
(52, '1765-08-21', '1837-06-20'),
(53, '1819-05-24', '1901-01-22'),
(54, '1841-11-09', '1910-05-06'),
(55, '1865-06-03', '1936-01-20'),
(56, '1894-06-23', '1972-05-28'),
(57, '1895-12-14', '1952-02-06'),
(58, '1926-04-21', '2022-09-08'),
(59, '1948-11-14', NULL);

SELECT * FROM monarchs_life_dates;

-- Create a table for monarchs' gender
CREATE TABLE IF NOT EXISTS monarchs_gender (
monarch_id INT PRIMARY KEY,
is_male BOOLEAN,
FOREIGN KEY (monarch_id) REFERENCES monarchs(monarch_id));
    
-- Insert gender information for each monarch
INSERT INTO monarchs_gender (monarch_id, is_male)
VALUES
(1, 1),        -- Alfred the Great (Male)
(2, 1),        -- Edward the Elder (Male)
(3, 1),        -- Æthelstan (Male)
(4, 1),        -- Edmund I (Male)
(5, 1),        -- Eadred (Male)
(6, 1),        -- Eadwig (Male)
(7, 1),        -- Edgar the Peaceful (Male)
(8, 1),        -- Edward the Martyr (Male)
(9, 1),        -- Æthelred the Unready (Male)
(10, 1),       -- Sweyn Forkbeard (Male)
(11, 1),       -- Edmund II (Ironside) (Male)
(12, 1),       -- Canute (Male)
(13, 1),       -- Harold I Harefoot (Male)
(14, 1),       -- Harthacanute (Male)
(15, 1),       -- Edward the Confessor (Male)
(16, 1),       -- Harold II (Male)
(17, 1),       -- William I (Male)
(18, 1),       -- William II (Male)
(19, 1),       -- Henry I (Male)
(20, 1),       -- Stephen (Male)
(21, 1),       -- Henry II (Male)
(22, 1),       -- Richard I (Male)
(23, 1),       -- John (Male)
(24, 1),       -- Henry III (Male)
(25, 1),       -- Edward I (Male)
(26, 1),       -- Edward II (Male)
(27, 1),       -- Edward III (Male)
(28, 1),       -- Richard II (Male)
(29, 1),       -- Henry IV (Male)
(30, 1),       -- Henry V (Male)
(31, 1),       -- Henry VI (Male)
(32, 1),       -- Edward IV (Male)
(33, 1),       -- Edward V (Male)
(34, 1),       -- Richard III (Male)
(35, 1),       -- Henry VII (Male)
(36, 1),       -- Henry VIII (Male)
(37, 1),       -- Edward VI (Male)
(38, 0),       -- Mary I (Female)
(39, 1),       -- Philip the Prudent (Male)
(40, 0),       -- Elizabeth I (Female)
(41, 1),       -- James I (Male)
(42, 1),       -- Charles I (Male)
(43, 1),       -- Charles II (Male)
(44, 1),       -- James II (Male)
(45, 1),       -- William III (Male)
(46, 0),       -- Mary II (Female)
(47, 0),       -- Anne (Female)
(48, 1),       -- George I (Male)
(49, 1),       -- George II (Male)
(50, 1),       -- George III (Male)
(51, 1),       -- George IV (Male)
(52, 1),       -- William IV (Male)
(53, 0),       -- Victoria (Female)
(54, 1),       -- Edward VII (Male)
(55, 1),       -- George V (Male)
(56, 1),       -- Edward VIII (Male)
(57, 1),       -- George VI (Male)
(58, 0),       -- Elizabeth II (Female)
(59, 1);       -- Charles III (Male)

SELECT * FROM monarchs_gender;

CREATE TABLE IF NOT EXISTS monarchs_reigns (
monarch_id INT,
reign_sequence INT, -- Denotes the position of the reign in sequence where monarch reigned more than once
start_date DATE NOT NULL,
end_date DATE,
CHECK (start_date <= end_date OR end_date IS NULL),
PRIMARY KEY (monarch_id, reign_sequence),
FOREIGN KEY (monarch_id) REFERENCES monarchs(monarch_id));

-- Insert data for monarchs_reigns table
INSERT INTO monarchs_reigns (monarch_id, reign_sequence, start_date, end_date)
VALUES 
(1, 1, '0871-04-23', '0899-10-26'),
(2, 1, '0899-10-26', '0924-07-17'),
(3, 1, '0924-07-17', '0939-10-27'),
(4, 1, '0939-10-27', '0946-05-26'),
(5, 1, '0946-05-26', '0955-11-23'),
(6, 1, '0955-11-23', '0959-10-01'),
(7, 1, '0959-10-01', '0975-07-08'),
(8, 1, '0975-07-08', '0978-03-18'),
(9, 1, '0978-03-18', '1013-01-01'),
(10, 1, '1013-12-25', '1014-02-03'),
(9, 2, '1014-02-03', '1016-04-23'),
(11, 1, '1016-04-23', '1016-11-30'),
(12, 1, '1016-10-18', '1035-11-12'),
(13, 1, '1035-11-12', '1040-03-17'),
(14, 1, '1040-03-17', '1042-06-08'),
(15, 1, '1042-06-08', '1066-01-05'),
(16, 1, '1066-01-06', '1066-10-14'),
(17, 1, '1066-12-25', '1087-09-09'),
(18, 1, '1087-09-26', '1100-08-02'),
(19, 1, '1100-08-05', '1135-12-01'),
(20, 1, '1135-12-22', '1154-10-25'),
(21, 1, '1154-12-19', '1189-07-06'),
(22, 1, '1189-09-03', '1199-04-06'),
(23, 1, '1199-05-27', '1216-10-19'),
(24, 1, '1216-10-28', '1272-11-16'),
(25, 1, '1272-11-20', '1307-07-07'),
(26, 1, '1307-07-08', '1327-01-20'),
(27, 1, '1327-01-25', '1377-06-21'),
(28, 1, '1377-06-22', '1399-09-29'),
(29, 1, '1399-09-30', '1413-03-20'),
(30, 1, '1413-03-21', '1422-08-31'),
(31, 1, '1422-09-01', '1461-03-04'),
(32, 1, '1461-03-04', '1470-10-03'),
(31, 2, '1470-10-03', '1471-04-11'),
(32, 2, '1471-04-11', '1483-04-09'),
(33, 1, '1483-04-09', '1483-06-25'),
(34, 1, '1483-06-26', '1485-08-22'),
(35, 1, '1485-08-22', '1509-04-21'),
(36, 1, '1509-04-22', '1547-01-28'),
(37, 1, '1547-01-28', '1553-07-06'),
(38, 1, '1553-07-19', '1558-11-17'),
(39, 1, '1554-07-25', '1558-11-17'),
(40, 1, '1558-11-17', '1603-03-24'),
(41, 1, '1603-03-24', '1625-03-27'),
(42, 1, '1625-03-27', '1649-01-30'),
(43, 1, '1649-05-29', '1685-02-06'),
(44, 1, '1685-02-06', '1688-12-23'),
(45, 1, '1689-02-13', '1702-03-08'),
(46, 1, '1689-02-13', '1694-12-28'),
(47, 1, '1702-03-08', '1714-08-01'),
(48, 1, '1714-08-01', '1727-06-11'),
(49, 1, '1727-06-11', '1760-10-25'),
(50, 1, '1760-10-25', '1820-01-29'),
(51, 1, '1820-01-29', '1830-06-26'),
(52, 1, '1830-06-26', '1837-06-20'),
(53, 1, '1837-06-20', '1901-01-22'),
(54, 1, '1901-01-22', '1910-05-06'),
(55, 1, '1910-05-06', '1936-01-20'),
(56, 1, '1936-01-20', '1936-12-11'),
(57, 1, '1936-12-11', '1952-02-06'),
(58, 1, '1952-02-06', '2022-09-08'),
(59, 1, '2022-09-08', NULL);

SELECT * FROM monarchs_reigns;

CREATE TABLE IF NOT EXISTS monarchs_royal_houses 
(royal_houses_id INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
royal_house_name VARCHAR(50) UNIQUE NOT NULL);

INSERT INTO monarchs_royal_houses (royal_house_name)
VALUES
('House of Wessex'),
('House of Denmark'),
('House of Godwin'),
('House of Normandy'),
('House of Blois'),
('House of Anjou/Plantagenet'),
('House of Plantagenet'),
('House of Lancaster'),
('House of York'),
('House of Tudor'),
('House of Habsburg'),
('House of Stuart'),
('House of Orange-Nassau'),
('House of Hanover'),
('House of Saxe-Coburg and Gotha'),
('House of Windsor');

SELECT * FROM monarchs_royal_houses;

CREATE TABLE IF NOT EXISTS monarchs_royal_house_links (
monarch_id INT,
royal_houses_id INT,
PRIMARY KEY (monarch_id, royal_houses_id),
FOREIGN KEY (monarch_id) REFERENCES monarchs(monarch_id),
FOREIGN KEY (royal_houses_id) REFERENCES monarchs_royal_houses(royal_houses_id));

INSERT INTO monarchs_royal_house_links (monarch_id, royal_houses_id)
VALUES
(1, 1),  -- Alfred the Great, House of Wessex
(2, 1),  -- Edward the Elder, House of Wessex
(3, 1),  -- Æthelstan, House of Wessex
(4, 1),  -- Edmund I, House of Wessex
(5, 1),  -- Eadred, House of Wessex
(6, 1),  -- Eadwig, House of Wessex
(7, 1),  -- Edgar the Peaceful, House of Wessex
(8, 1),  -- Edward the Martyr, House of Wessex
(9, 1),  -- Æthelred the Unready, House of Wessex
(10, 2), -- Sweyn Forkbeard, House of Denmark
(11, 1), -- Edmund II (Ironside), House of Wessex
(12, 2), -- Canute, House of Denmark
(13, 2), -- Harold I Harefoot, House of Denmark
(14, 2), -- Harthacanute, House of Denmark
(15, 1), -- Edward the Confessor, House of Wessex
(16, 3), -- Harold II, House of Godwin
(17, 4), -- William I, House of Normandy
(18, 4), -- William II, House of Normandy
(19, 4), -- Henry I, House of Normandy
(20, 5), -- Stephen, House of Blois
(21, 6), -- Henry II, House of Anjou/Plantagenet
(22, 6), -- Richard I, House of Anjou/Plantagenet
(23, 6), -- John, House of Anjou/Plantagenet
(24, 7), -- Henry III, House of Plantagenet
(25, 7), -- Edward I, House of Plantagenet
(26, 7), -- Edward II, House of Plantagenet
(27, 7), -- Edward III, House of Plantagenet
(28, 7), -- Richard II, House of Plantagenet
(29, 8), -- Henry IV, House of Lancaster
(30, 8), -- Henry V, House of Lancaster
(31, 8), -- Henry VI, House of Lancaster
(32, 9), -- Edward IV, House of York
(33, 9), -- Edward V, House of York
(34, 9), -- Richard III, House of York
(35, 10), -- Henry VII, House of Tudor
(36, 10), -- Henry VIII, House of Tudor
(37, 10), -- Edward VI, House of Tudor
(38, 10), -- Mary I, House of Tudor
(39, 11), -- Philip the Prudent, House of Habsburg
(40, 10), -- Elizabeth I, House of Tudor
(41, 12), -- James I, House of Stuart
(42, 12), -- Charles I, House of Stuart
(43, 12), -- Charles II, House of Stuart
(44, 12), -- James II, House of Stuart
(45, 13), -- William III, House of Orange-Nassau
(46, 12), -- Mary II, House of Stuart
(47, 12), -- Anne, House of Stuart
(48, 14), -- George I, House of Hanover
(49, 14), -- George II, House of Hanover
(50, 14), -- George III, House of Hanover
(51, 14), -- George IV, House of Hanover
(52, 14), -- William IV, House of Hanover
(53, 14), -- Victoria, House of Hanover
(54, 15), -- Edward VII, House of Saxe-Coburg and Gotha
(55, 16), -- George V, House of Windsor
(56, 16), -- Edward VIII, House of Windsor
(57, 16), -- George VI, House of Windsor
(58, 16), -- Elizabeth II, House of Windsor
(59, 16); -- Charles III, House of Windsor

SELECT * FROM monarchs_royal_house_links;

CREATE VIEW monarchs_info AS
SELECT
m.name AS monarch_name,
CASE
WHEN mg.is_male THEN 'Male'
ELSE 'Female'
END AS gender,
rh.royal_house_name,
mdl.birth_date,
mdl.death_date,
re.reign_sequence AS reign_sequence,
re.start_date AS reign_start_date,
re.end_date AS reign_end_date
FROM monarchs m
JOIN monarchs_royal_house_links mrl ON m.monarch_id = mrl.monarch_id
JOIN monarchs_royal_houses rh ON mrl.royal_houses_id = rh.royal_houses_id
JOIN monarchs_life_dates mdl ON m.monarch_id = mdl.monarch_id
LEFT JOIN monarchs_reigns re ON m.monarch_id = re.monarch_id
LEFT JOIN monarchs_gender mg ON m.monarch_id = mg.monarch_id;

SELECT * FROM monarchs_info
ORDER BY reign_start_date;

-- SETUP COMPLETED 

-- Query to find out when a monarch reigned
SELECT * FROM monarchs; -- Find monarch_id for the monarch of interest
SELECT
mi.monarch_name,
mi.reign_sequence,
mi.reign_start_date,
mi.reign_end_date
FROM monarchs_info mi
JOIN monarchs m ON mi.monarch_name = m.name
WHERE m.monarch_id = 31    -- Edit # with the monarch you're interested in to find when they reigned.
ORDER BY mi.reign_sequence;

-- Calculate the length of a monarchs reign in years and days
DELIMITER //
CREATE PROCEDURE calculate_reign_length(IN monarch_id_param INT)
BEGIN
DECLARE monarch_name VARCHAR(255);
DECLARE reign_start DATE;
DECLARE reign_end DATE;
DECLARE reign_years INT;
DECLARE reign_days INT;

-- Get the monarch name
SELECT name
INTO monarch_name
FROM monarchs
WHERE monarch_id = monarch_id_param;

-- Get the earliest reign start date for the specified monarch
SELECT MIN(start_date)
INTO reign_start
FROM monarchs_reigns
WHERE monarch_id = monarch_id_param;
    
-- Check if the monarch is Charles III 
IF monarch_id_param = 59 THEN
SET reign_end = CURDATE();
ELSE 
-- Get the latest reign end date for the specified monarch
SELECT MAX(end_date)
INTO reign_end
FROM monarchs_reigns
WHERE monarch_id = monarch_id_param;
END IF;

-- Calculate reign length in years and days
SET reign_years = DATEDIFF(reign_end, reign_start) / 365;
SET reign_days = DATEDIFF(reign_end, reign_start) % 365;
-- Display the result
SELECT monarch_name AS monarch_name,
CONCAT(reign_years, ' years and ', reign_days, ' days') AS reign_length;
END //
DELIMITER ;

SELECT * FROM monarchs; -- Find the monarch_id of the monarch of interest
CALL calculate_reign_length(59); -- Replace ## with the monarch_id you are interested in

-- Was a certain monarch a child when they ascended to the throne?
DELIMITER //
CREATE FUNCTION under_18_at_reign_start(monarch_id INT) RETURNS VARCHAR(3)
DETERMINISTIC
BEGIN
DECLARE under_18_result VARCHAR(3);  
-- Check if the monarch was under 18 at the start of their first reign
SELECT CASE
WHEN MIN(DATEDIFF(re.start_date, mdl.birth_date) / 365) < 18 THEN 'Yes'
ELSE 'No'
END INTO under_18_result
FROM monarchs_reigns re
JOIN monarchs_life_dates mdl ON re.monarch_id = mdl.monarch_id
WHERE re.monarch_id = monarch_id
ORDER BY re.start_date
LIMIT 1;
RETURN under_18_result;
END //
DELIMITER ;

-- Find Monarch of interest
SELECT * FROM monarchs;
-- Example: Get the result for monarch_id
SELECT under_18_at_reign_start(37) AS under_18_result; -- replace (##) with monarch_id

-- How many Monarchs belonged to each Royal house?
SELECT
rh.royal_house_name AS `Royal House`,
COUNT(mrl.monarch_id) AS `Number of Monarchs`
FROM monarchs_royal_houses rh
LEFT JOIN monarchs_royal_house_links mrl ON rh.royal_houses_id = mrl.royal_houses_id
GROUP BY rh.royal_house_name;

-- Query to get monarch names for those who reigned over ## years
SELECT
m.name AS `Monarch Name`,
re.start_date AS `Reign Start Date`,
re.end_date AS `Reign End Date`,
FLOOR(DATEDIFF(re.end_date, re.start_date) / 365) AS `Reign Duration (Years)`,
DATEDIFF(re.end_date, re.start_date) % 365 AS `Reign Duration (Days)`
FROM monarchs_reigns re
JOIN monarchs m ON re.monarch_id = m.monarch_id
WHERE DATEDIFF(re.end_date, re.start_date) > 3650; -- Adjust 3650 days (10 years) as needed

-- Query to get monarch names for those who reigned less than ## years
SELECT
m.name AS `Monarch Name`,
re.start_date AS `Reign Start Date`,
re.end_date AS `Reign End Date`,
FLOOR(DATEDIFF(re.end_date, re.start_date) / 365) AS `Reign Duration (Years)`,
DATEDIFF(re.end_date, re.start_date) % 365 AS `Reign Duration (Days)`
FROM monarchs_reigns re
JOIN monarchs m ON re.monarch_id = m.monarch_id
WHERE DATEDIFF(re.end_date, re.start_date) < (3650); -- Adjust 3650 days (10 years) as needed

-- Which monarchs reigned more than once?
SELECT m.name AS monarch_name, COUNT(re.reign_sequence) AS num_reigns
FROM monarchs m
JOIN monarchs_reigns re ON m.monarch_id = re.monarch_id
GROUP BY m.monarch_id, m.name
HAVING COUNT(re.reign_sequence) > 1;

-- Query to find the eldest monarch at the time of their death
SELECT
m.name AS `Monarch Name`,
mld.death_date AS `Death Date`,
FLOOR(DATEDIFF(mld.death_date, mdl.birth_date) / 365) AS `Age at Death (Years)`,
DATEDIFF(mld.death_date, mdl.birth_date) % 365 AS `Remaining Days`
FROM monarchs_life_dates mdl
JOIN monarchs_life_dates mld ON mdl.monarch_id = mld.monarch_id
JOIN monarchs m ON mdl.monarch_id = m.monarch_id
ORDER BY `Age at Death (Years)` DESC, `Remaining Days` DESC
LIMIT 1;

-- Query to find the youngest monarch at the time of their ascension
SELECT
m.name AS `Monarch Name`,
re.start_date AS `Reign Start Date`,
DATEDIFF(re.start_date, mdl.birth_date) / 365 AS `Age at Ascension (Years)`,
DATEDIFF(re.start_date, mdl.birth_date) % 365 AS `Remaining Days`
FROM monarchs_reigns re
JOIN monarchs_life_dates mdl ON re.monarch_id = mdl.monarch_id
JOIN monarchs m ON re.monarch_id = m.monarch_id
ORDER BY `Age at Ascension (Years)`, `Remaining Days`
LIMIT 1;

-- How many royal houses are there?
SELECT COUNT(*) AS num_royal_houses
FROM monarchs_royal_houses;

-- Compare the number of kings and queens
SELECT
CASE WHEN mg.is_male = 1 THEN 'King' ELSE 'Queen' END AS title,
COUNT(*) AS count
FROM monarchs_gender mg
GROUP BY title;

-- Calculate the rounded average reign duration for queens and kings
SELECT
CASE WHEN mg.is_male = 1 THEN 'King' ELSE 'Queen' END AS title,
ROUND(AVG(DATEDIFF(re.end_date, re.start_date)), 0) AS avg_reign_duration_days
FROM monarchs_gender mg
LEFT JOIN monarchs_reigns re ON mg.monarch_id = re.monarch_id
GROUP BY title;

-- Report the most common first names
SELECT
SUBSTRING_INDEX(name, ' ', 1) AS first_name,
COUNT(*) AS name_count
FROM monarchs
GROUP BY first_name
ORDER BY name_count DESC;