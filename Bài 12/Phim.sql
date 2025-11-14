# Chạy lệnh nhiều lần ko bị lỗi 
CREATE DATABASE IF NOT EXISTS quanly_phim;
CREATE TABLE THELOAI(
    id_tl int PRIMARY KEY,
    ten_tl varchar(30)
);
CREATE TABLE TAIKHOAN(
	id INT PRIMARY KEY,
    ten_dang_nhap varchar(50),
    ten_nguoi_dung varchar(50),
    mk varchar(50),
    email varchar(50),
    sdt varchar(10),
	quyen_id INT,
    ngay_sinh datetime
);
CREATE TABLE QUYEN(
	id int, 
    ten_quyen varchar
);
CREATE TABLE PHIM(
	id_phim int PRIMARY KEY,
    ten_phim varchar,
    dao_dien_id int,
    poster text,
    nd_phim varchar, 
    nam_phat_hanh int,
    quocgia_id int,
    so_tap int,
    trailer varchar,
    mo_ta text
);
CREATE TABLE PHIM_DIENVIEN(
    id INT,
    ten_dv varchar,
    dien_vien_id int
);
CREATE TABLE QUOCGIA(
	id int PRIMARY KEY,
    ten_qg varchar
);
CREATE TABLE TAPPHIM(
    id int,
    so_tap int,
    tieu_de varchar,
    phim_id int,
    thoi_luong float,
    trailer varchar
);