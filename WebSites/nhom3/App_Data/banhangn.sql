-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2017-03-28 15:30:51.283

-- tables
-- Table: Khachhang
use master
go
drop database banhang
Create database banhang
go
use banhang
go 
CREATE TABLE Khachhang (
    id varchar(32)  NOT NULL,
    ten nvarchar(255)  NOT NULL,
    diachi nvarchar(max)  NOT NULL,
    sdt int  NOT NULL,
    email varchar(255)  NOT NULL,
    ngaysinh datetime  NOT NULL,
    cmt int  NULL,
    CONSTRAINT User_ak_1 UNIQUE (id),
    CONSTRAINT Khachhang_pk PRIMARY KEY  (id)
);

-- Table: Sanpham
CREATE TABLE Sanpham (
    id varchar(32)  NOT NULL,
    ten nvarchar(255)  NOT NULL,
    gia int  NOT NULL,
    soluong int  NOT NULL,
    loaihang_id varchar(32)  NOT NULL,
    CONSTRAINT Sanpham_pk PRIMARY KEY  (id)
);

-- Table: hoadon
CREATE TABLE hoadon (
    id nvarchar(32)  NOT NULL,
    tongtien money  NOT NULL,
    trangthai nvarchar(255)  NOT NULL,
    ngay datetime  NOT NULL,
    User_id varchar(32)  NOT NULL,
    CONSTRAINT hoadon_pk PRIMARY KEY  (id)
);

-- Table: hoadonct
CREATE TABLE hoadonct (
    gia int  NOT NULL,
    soluong int  NOT NULL,
    Sanpham_id varchar(32)  NOT NULL,
    hoadon_id nvarchar(32)  NOT NULL,
    CONSTRAINT hoadonct_pk PRIMARY KEY  (hoadon_id,Sanpham_id)
);

-- Table: loaihang
CREATE TABLE loaihang (
    id varchar(32)  NOT NULL,
    ten nvarchar(255)  NOT NULL,
    CONSTRAINT loaihang_pk PRIMARY KEY  (id)
);

-- foreign keys
-- Reference: Sanpham_loaihang (table: Sanpham)
ALTER TABLE Sanpham ADD CONSTRAINT Sanpham_loaihang
    FOREIGN KEY (loaihang_id)
    REFERENCES loaihang (id);

-- Reference: hoadon_User (table: hoadon)
ALTER TABLE hoadon ADD CONSTRAINT hoadon_User
    FOREIGN KEY (User_id)
    REFERENCES Khachhang (id);

-- Reference: hoadonct_Sanpham (table: hoadonct)
ALTER TABLE hoadonct ADD CONSTRAINT hoadonct_Sanpham
    FOREIGN KEY (Sanpham_id)
    REFERENCES Sanpham (id);

-- Reference: hoadonct_hoadon (table: hoadonct)
ALTER TABLE hoadonct ADD CONSTRAINT hoadonct_hoadon
    FOREIGN KEY (hoadon_id)
    REFERENCES hoadon (id);

-- End of file.

insert into loaihang values ('lh1','apple')
insert into loaihang values ('lh2','samsung')
insert into loaihang values ('lh3','sony')
insert into loaihang values ('lh4','lg')
insert into loaihang values ('lh5','nokia')
insert into loaihang values ('lh6','asus')
insert into loaihang values ('lh7','oppo')
insert into loaihang values ('lh8','xiaomi')
insert into loaihang values ('lh9','htc')
insert into loaihang values ('lh10','vertu')


insert into khachhang values ('kh1', N'nguyễn tố như',N'hà nội',0123456864,'kh1@gmail.com','2/2/2000',321546498)
insert into khachhang values ('kh2', N'trần đặng anh',N'hà nội',0123456864,'kh2@gmail.com','2/2/2000',321546498)
insert into khachhang values ('kh3', N'lê hoàng đức',N'hà nội',0123456864,'kh3@gmail.com','2/2/2000',321546498)
insert into khachhang values ('kh4', N'vũ ngọc hải',N'hà nội',0123456864,'kh4@gmail.com','2/2/2000',321546498)
insert into khachhang values ('kh5', N'bùi quốc khánh',N'hà nội',0123456864,'kh5@gmail.com','2/2/2000',321546498)
insert into khachhang values ('kh6', N'đinh công mạnh',N'hà nội',0123456864,'kh6@gmail.com','2/2/2000',321546498)
insert into khachhang values ('kh7', N'lâm thao trường',N'hà nội',0123456864,'kh7@gmail.com','2/2/2000',321546498)
insert into khachhang values ('kh8', N'chu thị tiến',N'hà nội',0123456864,'kh8@gmail.com','2/2/2000',321546498)
insert into khachhang values ('kh9', N'hoàng lân',N'hà nội',0123456864,'kh9@gmail.com','2/2/2000',321546498)
insert into khachhang values ('kh10', N'lão hạc',N'hà nội',0123456864,'kh10@gmail.com','2/2/2000',321546498)

insert into Sanpham values ('s1','iphone1',5000000,100,'lh1')
insert into Sanpham values ('s2','iphone2',5000000,100,'lh1')
insert into Sanpham values ('s3','iphone3',5000000,100,'lh1')
insert into Sanpham values ('s4','iphone4',1000000,100,'lh1')
insert into Sanpham values ('s5','iphone5',15000000,100,'lh1')
insert into Sanpham values ('s6','iphone6',15000000,100,'lh1')
insert into Sanpham values ('s7','iphone7',15000000,100,'lh1')

insert into Sanpham values ('s8','samsung galaxy s1',5000000,100,'lh2')
insert into Sanpham values ('s9','samsung galaxy s2',5000000,100,'lh2')
insert into Sanpham values ('s10','samsung galaxy s3',2000000,100,'lh2')
insert into Sanpham values ('s11','samsung galaxy s4',4000000,100,'lh2')
insert into Sanpham values ('s12','samsung galaxy s5',3000000,100,'lh2')
insert into Sanpham values ('s13','samsung galaxy s6',8000000,100,'lh2')

insert into Sanpham values ('s14','sony xperia 1',8000000,100,'lh3')
insert into Sanpham values ('s15','sony xperia 2',12000000,100,'lh3')
insert into Sanpham values ('s16','sony xperia 3',14000000,100,'lh3')
insert into Sanpham values ('s17','sony xperia 4',13000000,100,'lh3')
insert into Sanpham values ('s18','sony xperia 5',6000000,100,'lh3')

insert into Sanpham values ('s19','lg g3',5000000,100,'lh4')
insert into Sanpham values ('s20','nokia 2g',8000000,100,'lh5')
insert into Sanpham values ('s21','asus 2',8000000,100,'lh6')
insert into Sanpham values ('s22','asus 5',8000000,100,'lh6')
insert into Sanpham values ('s23','oppo F1s',10000000,100,'lh7')
insert into Sanpham values ('s24','xiaomi x1',8000000,100,'lh8')
insert into Sanpham values ('s25','htc 2',8000000,100,'lh9')
insert into Sanpham values ('s26','vertu 1000',380000000,10,'lh10')

insert into hoadon values ('hd1',15000000, N'Đã thanh toán','2/2/2017','kh1')
insert into hoadon values ('hd2',25000000, N'Chưa thanh toán','2/2/2017','kh2')
insert into hoadon values ('hd3',35000000, N'đã thanh toán','2/2/2017','kh3')
insert into hoadon values ('hd4',45000000, N'đã thanh toán','2/2/2017','kh4')
insert into hoadon values ('hd5',55000000, N'đã thanh toán','2/2/2017','kh5')
insert into hoadon values ('hd6',65000000, N'đã thanh toán','2/2/2017','kh6')
insert into hoadon values ('hd7',75000000, N'đã thanh toán','2/2/2017','kh7')
insert into hoadon values ('hd8',85000000, N'đã thanh toán','2/2/2017','kh8')
insert into hoadon values ('hd9',95000000, N'đã thanh toán','2/2/2017','kh9')
insert into hoadon values ('hd10',15000000, N'đã thanh toán','2/2/2017','kh10')
insert into hoadon values ('hd11',125000000, N'đã thanh toán','2/2/2017','kh1')
insert into hoadon values ('hd12',135000000, N'đã thanh toán','2/2/2017','kh2')
insert into hoadon values ('hd13',145000000, N'đã thanh toán','2/2/2017','kh3')
insert into hoadon values ('hd14',155000000, N'đã thanh toán','2/2/2017','kh4')
insert into hoadon values ('hd15',165000000, N'đã thanh toán','2/2/2017','kh5')
insert into hoadon values ('hd16',175000000, N'đã thanh toán','2/2/2017','kh6')
insert into hoadon values ('hd17',185000000, N'đã thanh toán','2/2/2017','kh7')
insert into hoadon values ('hd18',195000000, N'đã thanh toán','2/2/2017','kh8')
insert into hoadon values ('hd19',105000000, N'đã thanh toán','2/2/2017','kh9')
insert into hoadon values ('hd20',25000000, N'đã thanh toán','2/2/2017','kh10')
insert into hoadonct values (5000000,2,'s1','hd1')
insert into hoadonct values (5000000,2,'s2','hd1')

select * from hoadonct