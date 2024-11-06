CREATE DATABASE MANAGEMENT
USE MANAGEMENT
CREATE TABLE loginTable
(
	id int NOT NULL IDENTITY(1,1) primary key,
	username varchar(100) not null,
	pass varchar(100) not null
)
CREATE TABLE Good_Received_Note
(
	Number_Product int identity NOT NULL,
	Code nvarchar(50) NULL,
	Name_Employee nvarchar(255) NULL,
	Date_In date NULL,
	ID_Product nvarchar(50) NULL,
	Name_Product nvarchar(255) NULL,
	Amount int NULL,
	Price int NULL,
	Total_Money int NULL,
	primary key (Number_Product)
)
CREATE TABLE GOOD_DELIVERY_NOTE
(
	Number_Product int identity NOT NULL,
	Code1 nvarchar(50) NULL,
	Customer nvarchar(255) NULL,
	Phone nvarchar(50) NULL,
	Address nvarchar(50) NULL,
	Date_out date NULL,
	ID_Product nvarchar(50) NULL,
	Name_Product nvarchar(255) NULL,
	Amount int NULL,
	Price int NULL,
	Total_Money int NULL,
	Pay nvarchar(255) NULL,
	Ship nvarchar(255) NULL,
	primary key (Number_Product)
)
create table Purchase_Order
(
	Code2 nvarchar(50) not null,
	Name_City nvarchar(255) null,
	Address nvarchar(255) null,
	Phone nvarchar(255) null,
	Pay nvarchar(255) null,
	Date_Order date null,
	Id_Product nvarchar(50) null,
	Name_Product nvarchar(255) null,
	Amount int null,
	Price int null,
	Total_Money int null,
	primary key (Code2)
)
DROP TABLE Good_Delivery_Note
DROP TABLE Purchase_Order
DROP TABLE Good_Received_Note
INSERT INTO loginTable (username,pass) values ('admin','Admin123');
INSERT INTO loginTable (username,pass) values ('giabao','giabao1912');
INSERT INTO loginTable (username,pass) values ('dieuquynh','dieuquynh1912');
select * from loginTable
select * from Good_Received_Note
insert into Good_Received_Note
values (N'NH1', N'Gia Bảo', '2021-12-12' , 'SP1', N'Innisfree Pore Blur Pact', 500, 579000, 289500000),
		(N'NH1', N'Phi Nguyễn', '2021-12-12' , 'SP2', N'Innisfree Green Tea Facial Moisturizers', 200, 385000, 77000000),
		(N'NH2', N'Diệu Quỳnh', '2021-12-20', 'SP3', N'Innisfree Orchid Facial Moisturizers', 300, 230000, 69000000),
		(N'NH3', N'Trần Quốc Anh', '2021-12-25', 'SP1', N'Innisfree Pore Blur Pact', 400, 579000, 289500000),
		(N'NH001', N'Lê Văn Đạt', '2021-11-10' , 'SP1', N'Innisfree Pore Blur Pact', 200, 579000, 115800000),
		(N'NH18', N'Cao Đăng Khoa', '2021-12-29', 'SP8', N'Innisfree Orchid Youth Enriched Toner Hyaluronic Acid Face Treatment', 500, 550000, 275000000),
		(N'NH18', N'Phạm Đăng Khôi', '2021-12-29' , 'SP9', N'Limited Edition Daily UV Defense Sunscreen', 300, 419000, 125700000),
		(N'NH4', N'Lê Vi', '2021-12-29' , 'SP4', N'Innisfree Skinny Eye Mascara - Long Lash Makeup', 500, 470000, 235000000),
		(N'NH5', N'Quý Lê', '2021-12-29' , 'SP5', N'Innisfree Matte Mineral Setting Powder Duo)', 300, 350000, 105000000),
		(N'NH6', N'John', '2021-12-29' , 'SP6', N'Green Tea Hydration Heroes Set ', 500, 350000, 175000000),
		(N'NH7', N'Jenny', '2021-12-29', 'SP7', N'Clear Pores Ahead ', 500, 75000, 37500000)
insert into GOOD_DELIVERY_NOTE
values ('P01', N'Trần Lê Văn ', N'03256789', N'Quận 1, TPHCM', '2022-01-03', 'SP1', N'Innisfree Pore Blur Pact, 0.44 Ounce (Pack of 1)', 1, 600000, 600000, N'Unpaid', N'Delivery in progress'),
		('P02', N'Trần Văn Lê', N'03256789', N'Quận 2, TPHCM', '2022-01-03', 'SP1', N'Innisfree Pore Blur Pact, 0.44 Ounce (Pack of 1)', 1, 600000, 600000, N'Paid', N'Successful delivery'),
		('P03', N'Lê Vi', N'03256789', N'Quận 3, TPHCM', '2022-01-03', 'SP1',  N'Innisfree Pore Blur Pact, 0.44 Ounce (Pack of 1)', 2, 600000, 1200000, N'Unpaid', N'Delivery in progress'),
		('P04', N'Lê Văn Đạt', N'03256789', N'Quận 4, TPHCM', '2022-01-03', 'SP1',  N'Innisfree Pore Blur Pact, 0.44 Ounce (Pack of 1)', 2, 600000, 1200000, N'Unpaid', N'Delivery in progress'),
		('P05', N'Henry', N'03256789', N'Quận 5, TPHCM', '2022-01-03' , 'SP5', N'Innisfree Matte Mineral Setting Powder Duo, 0.17 Ounce (Pack of 2)', 1, 400000, 400000, N'Unpaid', N'Delivery in progress'),
		('P06', N'Trần Văn B', N'01234785', N'Quận 6, TPHCM', '2021-12-15' , 'SP1',  N'Innisfree Pore Blur Pact, 0.44 Ounce (Pack of 1)', 5, 600000, 3000000, N'Unpaid', N'Delivery in progress'),
		('P07', N'Trần Văn D', N'03256789', N'Quận 7, TPHCM', '2022-01-04' , 'SP4', N'Innisfree Skinny Eye Mascara - Long Lash Makeup', 10, 500000, 5000000, N'Unpaid', N'Delivery in progress'),
		('P08', N'Trần Văn E', N'03256789', N'Quận 8, TPHCM', '2022-01-04' , 'SP6', N'Green Tea Hydration Heroes Set ($50 Value)', 5, 400000, 2000000, N'Unpaid', N'Delivery in progress')
		insert into Purchase_Order
values ('M01', N'Trần Văn E', N'Quận 1, TPHCM', '1234', N'InternetBanking', '2022-06-03' , 'SP1', 'Innisfree Pore Blur Pact', 1, 600000, 600000),
		('M02', N'Trần Văn B', N'Quận 1, TPHCM', '12345', N'Payment in Case', '2022-01-04', 'SP4', 'Innisfree Skinny Eye Mascara - Long Lash Makeup', 1, 500000, 500000),
		('M03', N'Trần Văn A', N'Quận 1, TPHCM', '1234132', N'InternetBanking', '2022-01-04', 'SP4', 'Innisfree Skinny Eye Mascara - Long Lash Makeup', 1, 500000, 500000),
		('M04', N'Trần Văn C', N'Quận 1, TPHCM', '12312311', N'InternetBanking', '2022-01-04' , 'SP1', 'Innisfree Pore Blur Pact', 1, 600000, 600000),
		('M05', N'Trần Văn D', N'Quận 1, TPHCM', '23232424', N'Payment in Case', '2022-01-04', 'SP5', 'Innisfree Matte Mineral Setting Powder Duo)', 1, 400000, 400000)