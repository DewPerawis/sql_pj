DROP DATABASE IF EXISTS tinyairline;
CREATE DATABASE IF NOT EXISTS `tinyairline` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `tinyairline`;

CREATE TABLE IF NOT EXISTS customer (
	cus_citizen_id CHAR(13) NOT NULL,
    cus_fname NVARCHAR(80) NOT NULL,
    cus_lname NVARCHAR(80) NOT NULL,
    cus_bdate DATE NOT NULL,
    CONSTRAINT pk_customer PRIMARY KEY (cus_citizen_id)
);

TRUNCATE TABLE customer;
INSERT INTO customer VALUES
('1102298671394', 'Somchai', 'Yimyai', '1972-10-06'),
('1113285777432', 'John', 'Doe', '2010-05-12'),
('1119118542694', 'Kanya', 'Srithong', '1940-11-09'),
('1180206944788', 'Michael', 'Johnson', '2010-06-03'),
('1148705657013', 'Amelia', 'Williams', '1970-04-03'),
('1140420234729', 'Chalida', 'Chaiyasit', '1951-01-01'),
('1126080846486', 'Emily', 'Jones', '1996-08-14'),
('1167704895602', 'Henry', 'Garcia', '1989-03-01'),
('1193259796875', 'Apinya', 'Rattana', '2005-11-16'),
('1109022359732', 'Chris', 'Lee', '1986-04-04'),
('1153734464339', 'Monthira', 'Panyachok', '2007-03-13'),
('1102332350591', 'Narong', 'Kaewkla', '1994-09-24'),
('1117875440464', 'Liam', 'Walker', '2006-11-01'),
('1141586855058', 'Noah', 'Harris', '1973-02-07'),
('1184736995081', 'Charlotte', 'Clark', '1984-02-26'),
('1106684194824', 'Jirapa', 'Wongnopparat', '1972-07-22'),
('1114018019731', 'Amelia', 'Gonzalez', '2008-07-04'),
('1132838002101', 'Liam', 'King', '1983-05-01'),
('1148442317454', 'Siriporn', 'Maneekul', '1972-08-01'),
('1167781239293', 'Lucas', 'Morris', '1951-05-20'),
('1192256804086', 'Charlotte', 'Adams', '1999-06-15'),
('1132736187935', 'Amelia', 'Roberts', '1938-02-01'),
('1117819475207', 'Liam', 'Phillips', '2004-02-20'),
('1157159900852', 'Henry', 'Walker', '2000-01-10'),
('1149686748854', 'Henry', 'Garcia', '1951-05-16'),
('1114054721122', 'Sophia', 'Moore', '1939-06-01'),
('1102830980988', 'Lucy', 'Carter', '1977-05-16'),
('1136740020318', 'Mia', 'Davis', '1987-03-13'),
('1190818062557', 'William', 'Lopez', '1964-06-09'),
('1123168888823', 'Amelia', 'Harris', '1983-11-09'),
('1199725224695', 'Noah', 'Harris', '1976-10-11'),
('1147737804886', 'Amelia', 'Garcia', '2007-10-04'),
('1115017093173', 'Ethan', 'Allen', '1953-06-24'),
('1129121085991', 'Henry', 'Baker', '1993-08-22'),
('1106970508061', 'William', 'Cook', '1993-10-18'),
('1133628955197', 'Sophia', 'Walker', '1960-01-16'),
('1125912617995', 'Lucas', 'Morris', '1978-03-07'),
('1144048707563', 'Ava', 'Scott', '1973-08-10'),
('1112047305362', 'Amelia', 'Roberts', '1962-09-12'),
('1144627855505', 'Grace', 'Morris', '1948-09-13'),
('1117215228204', 'Henry', 'Walker', '1944-05-02'),
('1154216419736', 'Chloe', 'Young', '2008-11-07'),
('1165102454312', 'Charlotte', 'Roberts', '1990-02-24'),
('1192554405147', 'Lucy', 'Carter', '2004-10-15'),
('1198381445822', 'Mia', 'Davis', '1975-05-15'),
('1171494406621', 'Amelia', 'Johnson', '1989-11-27'),
('1184078163731', 'Amelia', 'Harris', '2009-07-05'),
('1179894974098', 'Olivia', 'White', '1954-12-14'),
('1162499899066', 'Noah', 'Williams', '1979-11-08'),
('1191160386967', 'Noah', 'Martin', '2010-06-01');

CREATE TABLE IF NOT EXISTS passenger (
	p_passport_id CHAR(9) NOT NULL,
	p_fname NVARCHAR(80) NOT NULL,
	p_lname NVARCHAR(80) NOT NULL,
	p_mname NVARCHAR(80),
	p_citizen_id CHAR(13) NOT NULL,
    CONSTRAINT pk_passenger PRIMARY KEY (p_passport_id)
);

TRUNCATE TABLE passenger;
INSERT INTO passenger VALUES
('BA481920', 'Alice', 'Wonderland', 'Inthe', '1146524329195'),
('TQ597511', 'John', 'Doe', NULL, '1131755200177'),
('SX614430', 'Jane', 'Smith', 'Ann', '1154244048631'),
('VE657754', 'Michael', 'Johnson', 'David', '1159795130053'),
('ED183646', 'Amelia', 'Williams', 'Marie', '1101426193871'),
('DO477417', 'Liam', 'Brown', 'Michael', '1164567182402'),
('FR628679', 'Emily', 'Jones', 'Taylor', '1106570131297'),
('PY172671', 'Henry', 'Garcia', 'Luis', '1183688565891'),
('IW347070', 'Sophia', 'Moore', 'Claire', '1119366017956'),
('IH386717', 'Chris', 'Lee', NULL, '1163076513688'),
('RX793483', 'Olivia', 'White', 'Hannah', '1177527455915'),
('ON763226', 'William', 'Lopez', 'Francisco', '1153583154026'),
('OA307706', 'Liam', 'Walker', 'Ella', '1169827556271'),
('HO797910', 'Noah', 'Harris', 'James', '1101690675427'),
('AE057306', 'Charlotte', 'Clark', 'Zoe', '1171671637906'),
('IB267461', 'Ethan', 'Allen', 'Alexander', '1101651200375'),
('TZ932350', 'Amelia', 'Gonzalez', 'Elise', '1147853390669'),
('JG646776', 'Liam', 'King', 'Louis', '1105925343414'),
('AQ655225', 'Isabella', 'Scott', 'Chloe', '1154245494961'),
('OO206740', 'Lucas', 'Morris', 'Benjamin', '1109316388993'),
('AE196789', 'Charlotte', 'Adams', 'Penelope', '1129113288463'),
('BK313456', 'Amelia', 'Roberts', 'Harrison', '1135680762959'),
('SZ628540', 'Liam', 'Phillips', 'Sophia', '1137055071655'),
('BX572602', 'Henry', 'Walker', 'Jacob', '1152527545626'),
('FX740854', 'Chloe', 'Young', 'Amy', '1155316017045'),
('QG424723', 'Benjamin', 'King', 'Ryan', '1160494762079'),
('LX150813', 'Lucy', 'Carter', 'Lila', '1149981907224'),
('TH480913', 'Mia', 'Davis', 'Lily', '1101458944848'),
('BV676713', 'Jacob', 'Johnson', 'Isaac', '1134407708686'),
('YY870886', 'Amelia', 'Harris', 'Susan', '1175689238535'),
('VV114171', 'Olivia', 'White', 'Lily', '1169666643569'),
('EK853886', 'Amelia', 'Garcia', 'Grace', '1172355423412'),
('FJ110031', 'Noah', 'Martin', 'Leo', '1104769143238'),
('VI932648', 'Henry', 'Baker', NULL, '1195405655799'),
('MJ737531', 'William', 'Cook', 'James', '1166716615129'),
('NX409112', 'Sophia', 'Walker', 'Anna', '1115020780976'),
('FE153538', 'Benjamin', 'Allen', 'Ryan', '1123742077217'),
('CY818268', 'Ava', 'Scott', 'Chloe', '1172648499943'),
('KS389634', 'Lucas', 'King', 'Oliver', '1104861388063'),
('MY073424', 'Grace', 'Morris', 'Hannah', '1189360677075'),
('GM859796', 'Liam', 'Young', 'Elijah', '1176421973555'),
('OE395052', 'Jacob', 'Phillips', NULL, '1172372050882'),
('XH250089', 'Charlotte', 'Roberts', 'Clara', '1154001798236'),
('OO010864', 'Benjamin', 'Brown', 'Chloe', '1173346449871'),
('SK087696', 'Amelia', 'Lopez', 'Rose', '1169462161922'),
('IV850318', 'Amelia', 'Johnson', NULL, '1141273486037'),
('DA816216', 'Benjamin', 'Moore', 'Liam', '1165673506705'),
('DV336883', 'Emily', 'Carter', 'Lily', '1187162014051'),
('GF644594', 'Noah', 'Williams', 'Benjamin', '1162179821287'),
('SI289834', 'Mia', 'Adams', 'Emma', '1118217480289'),
('LL013097', 'Sophia', 'King', 'Jade', '1100928786088'),
('SN604096', 'William', 'Baker', 'Mark', '1139514964818'),
('JE749524', 'Wannarot', 'Phillips', NULL, '1102528253882'),
('ZG559237', 'Lucas', 'Moore', NULL, '1124969460512'),
('FC657064', 'Sudarat', 'Somsuk', NULL, '1117275654609'),
('CS818559', 'Kritsada', 'Chaiyasit', NULL, '1194435868072'),
('US554340', 'Siriporn', 'Kwanrath', NULL, '1102934137187'),
('ED302566', 'Sakchai', 'Kwanrath', NULL, '1111824432388'),
('AI382338', 'Napaporn', 'Wongpiyakul', NULL, '1187487017157'),
('TB463206', 'Chutima', 'Chaisuksai', NULL, '1134324031913'),
('RR586361', 'Prasit', 'Phusit', NULL, '1108384771135'),
('GD177878', 'Nattawut', 'Chalermkij', NULL, '1167181250067'),
('WJ870012', 'Waranya', 'Pimpaeng', NULL, '1114438603509'),
('DP819698', 'Sathit', 'Panitjaroen', NULL, '1172430116801'),
('DR577171', 'Kittinan', 'Wanlop', NULL, '1175076993673'),
('TL925713', 'Pornthip', 'Tuangsuk', NULL, '1155269031024'),
('TT658542', 'Kanchana', 'Jitphatcharaphong', NULL, '1110237599845'),
('TR580680', 'Phasakorn', 'Kaewkun', NULL, '1114127017799'),
('OL937340', 'Chonlada', 'Laohapaisarn', NULL, '1194953292798'),
('ER463023', 'Pongpol', 'Chutinthai', NULL, '1197565503018'),
('LK124355', 'Prasit', 'Phusit', NULL, '1126252059673'),
('HY518752', 'Chanchai', 'Sookla', NULL, '1183407831835'),
('VZ781152', 'Somchai', 'Kwanrath', NULL, '1154136448802'),
('LU019569', 'Somchai', 'Tananuwat', NULL, '1123035193328'),
('DJ565613', 'Wannarot', 'Rattanachai', NULL, '1139557257722'),
('XU893675', 'Apichart', 'Chantaraksa', NULL, '1172287480061'),
('NE624774', 'Chitchai', 'Patthanasophon', NULL, '1149647515356'),
('XI532913', 'Prasit', 'Srisungnoen', NULL, '1107213750698'),
('JN643754', 'Jirawan', 'Kaewmanee', NULL, '1166289602281'),
('CR407544', 'Phayung', 'Thongkum', NULL, '1167605526668');

CREATE TABLE IF NOT EXISTS add_on (
	addon_id CHAR(5) NOT NULL,
	addon_name NVARCHAR(20) NOT NULL,
	ao_privillege NVARCHAR(20) NOT NULL,
	ao_nMax BOOLEAN NOT NULL,
	ao_num_used NVARCHAR(20),
	ao_privillege_id NVARCHAR(20) NOT NULL,
	ao_nRef BOOLEAN NOT NULL,
	ao_refund_ticket INT,
	ao_refund_rate DECIMAL(3,2),
    CONSTRAINT pk_add_on PRIMARY KEY (addon_id)
);

CREATE TABLE IF NOT EXISTS airport (
	airport_name NVARCHAR(20) NOT NULL,
	ap_gateway INT NOT NULL,
	ap_parking_area INT NOT NULL,
	ap_runway INT NOT NULL,
	ap_terminal INT NOT NULL,
	ap_city NVARCHAR(20),
	ap_country NVARCHAR(20) NOT NULL,
	ap_district NVARCHAR(20),
    CONSTRAINT pk_airport PRIMARY KEY (airport_name)
);
TRUNCATE TABLE airport;
INSERT INTO airport (airport_name, ap_gateway, ap_parking_area, ap_runway, ap_terminal, ap_city, ap_country, ap_district) VALUES
('JFK Airport', 4, 50, 6, 5, 'New York', 'USA', 'Queens'),
('Heathrow', 3, 45, 4, 4, 'London', 'UK', 'Hillingdon'),
('Changi Airport', 5, 60, 7, 4, 'Singapore', 'Singapore', NULL),
('Dubai Airport', 4, 55, 5, 3, 'Dubai', 'UAE', NULL),
('Haneda Airport', 6, 70, 6, 5, 'Tokyo', 'Japan', 'Ōta'),
('Frankfurt Airport', 3, 40, 4, 3, 'Frankfurt', 'Germany', 'Hessen'),
('Sydney Airport', 4, 50, 5, 4, 'Sydney', 'Australia', 'Mascot'),
('Los Angeles Airport', 5, 80, 7, 6, 'Los Angeles', 'USA', 'Westchester'),
('Charles de Gaulle', 4, 65, 6, 5, 'Paris', 'France', 'Roissy-en-France'),
('Hong Kong Airport', 4, 70, 8, 6, 'Hong Kong', 'China', 'Chek Lap Kok');




CREATE TABLE IF NOT EXISTS legs (
    flight_num CHAR(6) NOT NULL,
    plane_size INT NOT NULL,
    plane_type NVARCHAR(20) NOT NULL,
    seat_num CHAR(3) NOT NULL,
	CONSTRAINT pk_legs PRIMARY KEY (flight_num)
);
TRUNCATE TABLE legs;
INSERT INTO legs (flight_num, plane_size, plane_type, seat_num) VALUES
('AA101', 180, 'Boeing 737', 'A32'),
('BA202', 250, 'Airbus A330', 'B12'),
('DL303', 150, 'Boeing 757', 'C16'),
('UA404', 200, 'Boeing 767', 'A45'),
('QF505', 300, 'Airbus A350', 'B22'),
('EK606', 400, 'Boeing 777', 'C10'),
('SQ707', 280, 'Airbus A380', 'A60'),
('AF808', 220, 'Boeing 787', 'B18'),
('LH909', 160, 'Bombardier CRJ900', 'C21'),
('CX010', 350, 'Airbus A340', 'A50'),
('NZ011', 180, 'Boeing 737', 'B25'),
('VA212', 250, 'Airbus A320', 'C30'),
('IB313', 150, 'Boeing 737', 'A15'),
('QR414', 200, 'Airbus A310', 'B19'),
('AC515', 300, 'Boeing 777', 'C35'),
('TK616', 400, 'Airbus A350', 'A42'),
('NH717', 280, 'Airbus A330', 'B29'),
('JL818', 220, 'Boeing 767', 'C40'),
('KE919', 160, 'Boeing 757', 'A20'),
('MU020', 350, 'Airbus A380', 'B31'),
('CX121', 180, 'Boeing 787', 'C12'),
('SQ222', 250, 'Airbus A340', 'A48'),
('BA323', 150, 'Boeing 737', 'B16'),
('AA424', 200, 'Airbus A310', 'C22'),
('DL525', 300, 'Boeing 777', 'A38'),
('UA626', 400, 'Airbus A350', 'B28'),
('QF727', 280, 'Boeing 767', 'C18'),
('EK828', 220, 'Airbus A330', 'A26'),
('AF929', 160, 'Boeing 737', 'B21'),
('LH030', 350, 'Airbus A380', 'C50');




CREATE TABLE IF NOT EXISTS ticket (
	ticket_id CHAR(6) NOT NULL,
	seat_num CHAR(3) NOT NULL,
	destination CHAR(3) NOT NULL,
	travel_date DATE NOT NULL,
	arrive_date DATE NOT NULL,
	start_point CHAR(3) NOT NULL,
	change_date DATETIME,
	reserve_date DATETIME NOT NULL,
	p_passport_id CHAR(9) NOT NULL,
	cus_citizen_id CHAR(13) NOT NULL,
	CONSTRAINT pk_ticket PRIMARY KEY (ticket_id, seat_num),
	CONSTRAINT fk_ticket_passport FOREIGN KEY (p_passport_id) REFERENCES passenger(p_passport_id),
	CONSTRAINT fk_ticket_citizen FOREIGN KEY (cus_citizen_id) REFERENCES customer(cus_citizen_id)
);
TRUNCATE TABLE ticket;
INSERT INTO ticket (ticket_id, seat_num, destination, travel_date, arrive_date, start_point, change_date, reserve_date, p_passport_id, cus_citizen_id) VALUES 
    ('T10001', 'A01', 'NYC', '2024-12-01', '2024-12-02', 'LAX', NULL, '2024-11-15', 'BA481920', '1102298671394'),
    ('T10002', 'A02', 'LAX', '2024-11-25', '2024-11-26', 'NYC', NULL, '2024-11-10', 'TQ597511', '1113285777432'),
    ('T10003', 'A03', 'CHI', '2024-12-05', '2024-12-06', 'LAX', NULL, '2024-11-20', 'SX614430', '1119118542694'),
    ('T10004', 'B01', 'SEA', '2024-11-20', '2024-11-21', 'NYC', NULL, '2024-11-05', 'VE657754', '1180206944788'),
    ('T10005', 'B02', 'NYC', '2024-12-10', '2024-12-11', 'SEA', NULL, '2024-11-25', 'ED183646', '1148705657013'),
    ('T10006', 'B03', 'MIA', '2024-11-15', '2024-11-16', 'NYC', NULL, '2024-10-30', 'DO477417', '1140420234729'),
    ('T10007', 'C01', 'LAX', '2024-12-15', '2024-12-16', 'SEA', NULL, '2024-11-25', 'FR628679', '1126080846486'),
    ('T10008', 'C02', 'NYC', '2024-11-22', '2024-11-23', 'MIA', NULL, '2024-11-07', 'PY172671', '1167704895602'),
    ('T10009', 'C03', 'SEA', '2024-11-30', '2024-12-01', 'CHI', NULL, '2024-11-15', 'IW347070', '1193259796875'),
    ('T10010', 'D01', 'CHI', '2024-12-03', '2024-12-04', 'LAX', NULL, '2024-11-18', 'IH386717', '1109022359732'),
    ('T10011', 'D02', 'MIA', '2024-12-07', '2024-12-08', 'SEA', NULL, '2024-11-22', 'RX793483', '1153734464339'),
    ('T10012', 'D03', 'NYC', '2024-12-18', '2024-12-19', 'CHI', NULL, '2024-12-02', 'ON763226', '1102332350591'),
    ('T10013', 'E01', 'LAX', '2024-11-28', '2024-11-29', 'NYC', NULL, '2024-11-13', 'OA307706', '1117875440464'),
    ('T10014', 'E02', 'SEA', '2024-11-23', '2024-11-24', 'MIA', NULL, '2024-11-08', 'HO797910', '1141586855058'),
    ('T10015', 'E03', 'CHI', '2024-12-12', '2024-12-13', 'SEA', NULL, '2024-11-27', 'AE057306', '1184736995081'),
    ('T10016', 'F01', 'NYC', '2024-11-19', '2024-11-20', 'MIA', NULL, '2024-11-04', 'IB267461', '1106684194824'),
    ('T10017', 'F02', 'LAX', '2024-11-27', '2024-11-28', 'SEA', NULL, '2024-11-12', 'TZ932350', '1114018019731'),
    ('T10018', 'F03', 'SEA', '2024-12-08', '2024-12-09', 'NYC', NULL, '2024-11-23', 'JG646776', '1132838002101'),
    ('T10019', 'G01', 'CHI', '2024-12-14', '2024-12-15', 'LAX', NULL, '2024-11-29', 'AQ655225', '1148442317454'),
    ('T10020', 'G02', 'NYC', '2024-11-26', '2024-11-27', 'MIA', NULL, '2024-11-11', 'BK313456', '1167781239293'),
    ('T10021', 'G03', 'LAX', '2024-12-01', '2024-12-02', 'CHI', NULL, '2024-11-16', 'SZ628540', '1192256804086'),
    ('T10022', 'H01', 'SEA', '2024-12-09', '2024-12-10', 'NYC', NULL, '2024-11-24', 'BX572602', '1132736187935'),
    ('T10023', 'H02', 'MIA', '2024-11-30', '2024-12-01', 'LAX', NULL, '2024-11-15', 'FX740854', '1117819475207'),
    ('T10024', 'H03', 'NYC', '2024-12-02', '2024-12-03', 'SEA', NULL, '2024-11-17', 'QG424723', '1157159900852'),
    ('T10025', 'I01', 'LAX', '2024-12-06', '2024-12-07', 'MIA', NULL, '2024-11-21', 'LX150813', '1149686748854'),
    ('T10026', 'I02', 'SEA', '2024-11-24', '2024-11-25', 'NYC', NULL, '2024-11-09', 'TH480913', '1114054721122'),
    ('T10027', 'I03', 'CHI', '2024-11-29', '2024-11-30', 'SEA', NULL, '2024-11-14', 'BV676713', '1102830980988'),
    ('T10028', 'J01', 'NYC', '2024-12-10', '2024-12-11', 'LAX', NULL, '2024-11-25', 'YY870886', '1136740020318'),
    ('T10029', 'J02', 'LAX', '2024-11-20', '2024-11-21', 'CHI', NULL, '2024-11-05', 'VV114171', '1190818062557'),
    ('T10030', 'J03', 'SEA', '2024-11-15', '2024-11-16', 'NYC', NULL, '2024-10-30', 'EK853886', '1123168888823');




CREATE TABLE IF NOT EXISTS contain (
    flight_num CHAR(6) NOT NULL,
    ticket_id CHAR(6) NOT NULL,
    seat_num CHAR(3) NOT NULL,
    CONSTRAINT pk_contain PRIMARY KEY (flight_num, ticket_id, seat_num),
    CONSTRAINT fk_contain_flight FOREIGN KEY (flight_num) REFERENCES legs(flight_num),
    CONSTRAINT fk_contain_ticket FOREIGN KEY (ticket_id, seat_num) REFERENCES ticket(ticket_id, seat_num)
);
TRUNCATE TABLE contain;
INSERT INTO contain (flight_num, ticket_id, seat_num) VALUES
('AA101', 'TKT001', 'A32'),
('BA202', 'TKT002', 'B12'),
('DL303', 'TKT003', 'C16'),
('UA404', 'TKT004', 'A45'),
('QF505', 'TKT005', 'B22'),
('EK606', 'TKT006', 'C10'),
('SQ707', 'TKT007', 'A60'),
('AF808', 'TKT008', 'B18'),
('LH909', 'TKT009', 'C21'),
('CX010', 'TKT010', 'A50'),
('NZ011', 'TKT011', 'B25'),
('VA212', 'TKT012', 'C30'),
('IB313', 'TKT013', 'A15'),
('QR414', 'TKT014', 'B19'),
('AC515', 'TKT015', 'C35'),
('TK616', 'TKT016', 'A42'),
('NH717', 'TKT017', 'B29'),
('JL818', 'TKT018', 'C40'),
('KE919', 'TKT019', 'A20'),
('MU020', 'TKT020', 'B31'),
('CX121', 'TKT021', 'C12'),
('SQ222', 'TKT022', 'A48'),
('BA323', 'TKT023', 'B16'),
('AA424', 'TKT024', 'C22'),
('DL525', 'TKT025', 'A38'),
('UA626', 'TKT026', 'B28'),
('QF727', 'TKT027', 'C18'),
('EK828', 'TKT028', 'A26'),
('AF929', 'TKT029', 'B21'),
('LH030', 'TKT030', 'C50');




CREATE TABLE IF NOT EXISTS purchase (
	addon_id CHAR(5) NOT NULL,
	ticket_id CHAR(6) NOT NULL,
	seat_num CHAR(3) NOT NULL,
	CONSTRAINT pk PRIMARY KEY (addon_id, ticket_id, seat_num),
	CONSTRAINT fk_purchase_addon FOREIGN KEY (addon_id) REFERENCES add_on(addon_id),
	CONSTRAINT fk_purchase_ticket FOREIGN KEY (ticket_id, seat_num) REFERENCES ticket(ticket_id, seat_num)
);

CREATE TABLE IF NOT EXISTS luggage (
	luggage_id CHAR(8) NOT NULL,
	l_pname NVARCHAR(20) NOT NULL,
	l_weight DECIMAL(3,2) NOT NULL,
	l_size NVARCHAR(3) NOT NULL,
	p_passport_id CHAR(9) NOT NULL,
	CONSTRAINT pk PRIMARY KEY (luggage_id),
	CONSTRAINT fk_luggage FOREIGN KEY (p_passport_id) REFERENCES passenger(p_passport_id)
);

CREATE TABLE IF NOT EXISTS color (
	luggage_id CHAR(8) NOT NULL,
	luggage_color NVARCHAR(20) NOT NULL,
	CONSTRAINT pk_color PRIMARY KEY (luggage_id, luggage_color),
	CONSTRAINT fk_color FOREIGN KEY (luggage_id) REFERENCES luggage(luggage_id)
);

CREATE TABLE IF NOT EXISTS class (
	flight_num CHAR(6) NOT NULL, 
	legs_class NVARCHAR(20) NOT NULL,
	CONSTRAINT pk_class PRIMARY KEY (flight_num, legs_class),
	CONSTRAINT fk_class FOREIGN KEY (flight_num) REFERENCES legs(flight_num)
);

CREATE TABLE IF NOT EXISTS boarding (
	airport_name NVARCHAR(20) NOT NULL,
	flight_num CHAR(6) NOT NULL,
	CONSTRAINT pk_boarding PRIMARY KEY (airport_name, flight_num),
	CONSTRAINT fk_boarding_airport FOREIGN KEY (airport_name) REFERENCES airport(airport_name),
	CONSTRAINT fk_boarding_flight FOREIGN KEY (flight_num) REFERENCES legs(flight_num)
);

CREATE TABLE IF NOT EXISTS landing (
	airport_name NVARCHAR(20) NOT NULL,
	flight_num CHAR(6) NOT NULL,
	CONSTRAINT pk_landing PRIMARY KEY (airport_name, flight_num),
	CONSTRAINT fk_landing_airport FOREIGN KEY (airport_name) REFERENCES airport(airport_name),
	CONSTRAINT fk_landing_flight FOREIGN KEY (flight_num) REFERENCES legs(flight_num)
);

