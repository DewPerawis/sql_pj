DROP DATABASE IF EXISTS tinyairline;
CREATE DATABASE IF NOT EXISTS `tinyairline` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `tinyairline`;

DROP TABLE IF EXISTS customer;
CREATE TABLE customer  (
	cus_citizen_id CHAR(13) NOT NULL,
    cus_fname NVARCHAR(80) NOT NULL,
    cus_lname NVARCHAR(80) NOT NULL,
    cus_bdate DATE NOT NULL,
    CONSTRAINT pk_customer PRIMARY KEY (cus_citizen_id)
);

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

DROP TABLE IF EXISTS passenger;
CREATE TABLE passenger (
	p_passport_id CHAR(9) NOT NULL,
	p_fname NVARCHAR(80) NOT NULL,
	p_lname NVARCHAR(80) NOT NULL,
	p_mname NVARCHAR(80),
	p_citizen_id CHAR(13) NOT NULL,
    CONSTRAINT pk_passenger PRIMARY KEY (p_passport_id)
);

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

DROP TABLE IF EXISTS add_on ;
CREATE TABLE add_on (
	addon_id CHAR(5) NOT NULL,
	addon_name NVARCHAR(20) NOT NULL,
	ao_privillege NVARCHAR(20) NOT NULL,
	ao_nMax NVARCHAR(20) NOT NULL,
	ao_num_used NVARCHAR(20),
	ao_privillege_id NVARCHAR(20) NOT NULL,
	ao_nRef NVARCHAR(20) NOT NULL,
	ao_refund_ticket INT,
	ao_refund_rate DECIMAL(3,2),
    CONSTRAINT pk_add_on PRIMARY KEY (addon_id)
);

DROP TABLE IF EXISTS airport ;
CREATE TABLE airport (
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

DROP TABLE IF EXISTS legs ;
CREATE TABLE legs (
    flight_num CHAR(6) NOT NULL,
    plane_size NVARCHAR(20) NOT NULL,
    plane_type NVARCHAR(20) NOT NULL,
    seat_num CHAR(6) NOT NULL,
    boarding_ap_name NVARCHAR(20) NOT NULL,
    landing_ap_name NVARCHAR(20) NOT NULL,
	CONSTRAINT pk_legs PRIMARY KEY (flight_num)
);

DROP TABLE IF EXISTS ticket ;
CREATE TABLE ticket (
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

DROP TABLE IF EXISTS contain ;
CREATE TABLE contain (
	flight_num CHAR(6) NOT NULL
	ticket_id CHAR(6) NOT NULL
	seat_num CHAR(3) NOT NULL
		CONSTRAINT pk FOREIGN KEY (flight_num, ticket_id, seat_num)
    		CONSTRAINT fk_contain_flight FOREIGN KEY (flight_num) REFERENCES legs(flight_num),
    		CONSTRAINT fk_contain_ticket FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id),
		CONSTRAINT fk_contain_seat FOREIGN KEY (seat_num) REFERENCES ticket(seat_num)
);

DROP TABLE IF EXISTS purchase ;
CREATE TABLE purchase (
	addon_id CHAR(5) NOT NULL
	ticket_id CHAR(6) NOT NULL
	seat_num CHAR(3) NOT NULL
		CONSTRAINT pk FOREIGN KEY (addon_id, ticket_id, seat_num)
    		CONSTRAINT fk_contain_addon FOREIGN KEY (addon_id) REFERENCES add_on(addon_id),
    		CONSTRAINT fk_contain_ticket FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id),
		CONSTRAINT fk_contain_seat FOREIGN KEY (seat_num) REFERENCES ticket(seat_num)
);


DROP TABLE IF EXISTS luggage ;
CREATE TABLE luggage (
	luggage_id CHAR(8) NOT NULL,
	l_pname NVARCHAR(20) NOT NULL,
	l_weight DECIMAL(3,2) NOT NULL,
	l_size NVARCHAR(3) NOT NULL,
	p_passport_id CHAR(9) NOT NULL,
		CONSTRAINT pk FOREIGN KEY (luggage_id)
    		CONSTRAINT fk_luggage FOREIGN KEY (p_passport_id) REFERENCES passenger(p_passport_id),
);

DROP TABLE IF EXISTS color ;
CREATE TABLE color (
	luggage_id CHAR(8) NOT NULL,
	luggage_color NVARCHAR(20) NOT NULL,
		CONSTRAINT pk_color FOREIGN KEY (luggage_id, luggage_color),
    		CONSTRAINT fk_color FOREIGN KEY (luggage_id) REFERENCES luggage(luggage_id)
);

DROP TABLE IF EXISTS class ;
CREATE TABLE class (
	flight_num NVARCHAR(20) NOT NULL, #2จุดไม่เหมือนกัน
	legs_class NVARCHAR(20) NOT NULL,
		CONSTRAINT pk_color FOREIGN KEY (flight_num, legs_class),
    		CONSTRAINT fk_class FOREIGN KEY (flight_num) REFERENCES legs(flight_num)
);

DROP TABLE IF EXISTS boarding ;
CREATE TABLE boarding (
	airport_name NVARCHAR(20) NOT NULL,
	flight_num CHAR(6) NOT NULL,
		CONSTRAINT pk_boarding FOREIGN KEY (airport_name, flight_num),
    		CONSTRAINT fk_boarding_airport FOREIGN KEY (airport_name) REFERENCES airport(airport_name)
		CONSTRAINT fk_boarding_flight FOREIGN KEY (flight_num) REFERENCES legs(flight_num)
);

DROP TABLE IF EXISTS landing ;
CREATE TABLE landing (
	airport_name NVARCHAR(20) NOT NULL,
	flight_num CHAR(6) NOT NULL,
		CONSTRAINT pk_boarding FOREIGN KEY (airport_name, flight_num),
    		CONSTRAINT fk_boarding_airport FOREIGN KEY (airport_name) REFERENCES airport(airport_name)
		CONSTRAINT fk_boarding_flight FOREIGN KEY (flight_num) REFERENCES legs(flight_num)
);


