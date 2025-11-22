-- GIẢ ĐỊNH: đã USE quan_ly_web_phim;

-- 1. the_loai
INSERT INTO the_loai (ten_the_loai) VALUES
('Hành Động'), 
('Hài'), 
('Tâm Lý'), 
('Chiến Tranh'), 
('Viễn Tưởng'), 
('Khoa Học'),  
('Lãng Mạn'), 
('Cổ Trang'), 
('Hình Sự'),  
('Chiếu Rạp'),
('Hoạt Hình'), 
('Kinh Dị'), 
('Anime'), 
('Xuyên Không'),
('Học đường'), 
('Trinh Thám'), 
('Lịch Sử'), 
('Chính Kịch'), 
('Bí Ẩn'), 
('Gia Đình');

-- 2. vai_tro
INSERT INTO vai_tro (ten_vai_tro) VALUES
('admin'),
('dao_dien'),
('dien_vien'),
('user');

-- 3. quoc_gia
INSERT INTO quoc_gia (ten_quoc_gia) VALUES
('Viet Nam'),
('My'),
('Anh'),
('Nhat Ban'),
('Thai Lan'),
('Han Quoc'),
('Trung Quoc');


-- 4. nguoi_dung
-- id 1: admin
-- id 2-11: dao_dien
-- id 12-30: dien_vien
INSERT INTO nguoi_dung
(ten_dang_nhap, mat_khau, ho_ten, email, sdt, vai_tro_id, ngay_sinh) VALUES
('PHG','9616','Phạm Hương Giang','phg@gmail.com','0382747284',1,'2005-02-09'),

('JC','0500','Josh Cooley','jc@gmail.com','0375837183','1979-05-23',2),
('JC','7374','James Cameron','jc@gmail.com','0201783234','1954-08-16',2),
('FGG','2362','F. Gary Gray','fgg@gmail.com','0999142161','1969-07-17',2),
('TT','0710','Trấn Thành','tt@gmail.com','0691329535','1987-02-05',2),
('GE','6722','Gareth Edwards','ge@gmail.com','0426319585','1975-06-01',2),

6('AW','2321','Annabelle Wallace','aw@gmail.com','0555922111','1984-09-05',3),
7 3('MT','1011','Mason Thames','mt@gmail.com','0736274627','2007-07-10',3),
8 5('DR','6768','Daniel Radcliffe','dr@gmail.com','0284756284','1989-07-23',3),
9 7('ĐNH','7172','Đỗ Nhật Hoàng','dnh@gmail.com','0754748274','1997-11-13',3),
10 9('TM','7576','Takayama Minami','tm@gmail.com','0512015101','1964-05-05',3),
11 11('EW','8112','Emma Watson','ew@gmail.com','0892321905','1990-04-15',3),
12 13('TH','5121','Tom Hanks','th@gmail.com','0814748115','1956-07-09',3),
13 15('VD','2117','Vin Diesel','vd@gmail.com','0121611022','1967-07-18',3),
14 17('KYJ','3122','Kim You-jung','kyj@gmail.com','0128281257','1999-09-22',3),
15 19('DJ','6448','Dwayne Johnson','dj@gmail.com','0052025661','1972-05-02',3),
16 21('AP','4146','Jason Statham','js@gmail.com','0708321860','1967-07-26',3),
17 23('PAD','3201','Phương Anh Đào','pad@gmail.com','0025122321','1992-04-30',3),
18 25('TT','9113','Tuấn Trần','tt@gmail.com','0292504816','1992-11-20',3),
19 27('LD','5220','Leonardo DiCaprio','ld@gmail.com','0858228299','1974-11-11',3),
20 29('HH','4521','Holly Hunter','hh@gmail.com','0574034123','1958-03-20',3),

('NTH','6970','Nông Thị Hoài','nth@gmail.com','0384728475','2005-07-30',4),
('NTV','9221','Nguyễn Thị Vân','ntv@gmail.com','0620178101','2005-09-07',4),
('CTTQ','0255','Cao Thị Thu Quyên','cttq@gmail.com','0010192930','2005-03-06',4),
('NTN','4454','Nguyễn Thúy Nga','ntn@gmail.com','0919992012','2005-11-25',4),
('LML','4041','Lý Mai Ly','lml@gmail.com','0142063598','2005-09-16',4),
('LTL','8443','Lê Thị Lệ','ltl@gmail.com','0144119112','2005-08-07',4),
('NKV','1221','Nguyễn Kiều Vy','nkv@gmail.com','0050010119','2005-12-30',4),
('VHL','1152','Vương Hà Linh','vhl@gmail.com','0202352935','2005-08-19',4),
('PTH','7212','Phạm Thị Huế','pth@gmail.com','0320230030','2005-02-04',4);

-- 5. phim (30 phim, dao_dien_id = 2..11, quoc_gia_id = 1..10)
INSERT INTO phim
(ten_phim, dao_dien_id, nam_phat_hanh, poster, quoc_gia_id, so_tap, trailer, mo_ta) VALUES
('Conan', 5, 2024, 'conan.jpg', 4, 1, 'https://example.com/trailer/p1', 'Mo ta phim 1'),
('Mưa đỏ', 6, 2025, '350x495-muado.jpg', 1, 1, 'https://example.com/trailer/p2', 'Mo ta phim 2'),
('Wall E', 2, 2008, 'walle.jpg', 2, 1, 'https://example.com/trailer/p3', 'Mo ta phim 3'),
('Câu chuyện đồ chơi 4', 2, 2019, 'toys.jpg', 2, 1, 'https://example.com/trailer/p4', 'Mo ta phim 4'),
('Mai', 5, 2024, 'mai.jpg', 1, 1, 'https://example.com/trailer/p5', 'Mo ta phim 5'),
('Ponyo', 3, 2008, 'ponyo.jpg', 4, 1, 'https://example.com/trailer/p6', 'Mo ta phim 6'),
('Kỷ băng hà', 6, 2016, 'kybangha.jpg', 2, 1, 'https://example.com/trailer/p7', 'Mo ta phim 7'),
('Xin Lỗi Anh Chỉ Là Sát Thủ', 4, 2016, 'xinloisatthu.jpg', 6, 1, 'https://example.com/trailer/p8', 'Mo ta phim 8'),
('Titanic', 3, 1997, 'titanic.jpg', 2, 1, 'https://example.com/trailer/p9', 'Mo ta phim 9'),
('Annabelle', 6, 2014, 'annabelle.jpg', 2, 1, 'https://example.com/trailer/p10', 'Mo ta phim 10'),
('Maleficent', 2, 2014, 'maleficent.jpg', 2, 1, 'https://example.com/trailer/p11', 'Mo ta phim 11'),
('Turbo', 6, 2013, 'turbo.jpg', 2, 1, 'https://example.com/trailer/p12', 'Mo ta phim 12'),
('Gia đình siêu nhân 2', 2, 2018, 'gdsieunhan.jpg', 2, 1, 'https://example.com/trailer/p13', 'Mo ta phim 13'),
('Chàng hậu', 3, 2020, 'changhau.jpg', 6, 20, 'https://example.com/trailer/p14', 'Mo ta phim 14'),
('Spy x Family', 3, 2022, 'spyxfamily.jpg', 4, 25, 'https://example.com/trailer/p15', 'Mo ta phim 15'),
('Mashle: Phép Thuật Và Cơ Bắp', 5, 2023, 'mashle.jpg', 4, 12, 'https://example.com/trailer/p16', 'Mo ta phim 16'),
('Minion', 5, 2022, 'minion.jpg', 2, 1, 'https://example.com/trailer/p17', 'Mo ta phim 17'),
('The Meg', 6, 2018, 'the meg.jpg', 2, 1, 'https://example.com/trailer/p18', 'Mo ta phim 18'),
('Trần tình lệnh', 4, 2019, 'trantinhlenh.jpg', 7, 50, 'https://www.youtube.com/watch?v=vV_ixJISQGQ', 'Mo ta phim 19'),
('Doraemon', 3, 2024, 'doraemon.jpg', 4, 1, 'https://example.com/trailer/p20', 'Mo ta phim 20'),
('Xin Chào Jadoo', 3, 1998, 'jadoo.jpg', 6, 20, 'https://example.com/trailer/p21', 'Mo ta phim 21'),
('Vẻ Đẹp Đích Thực', 6, 2020, 'vedepdichthuc.jpg', 6, 16, 'https://example.com/trailer/p22', 'Mo ta phim 22'),
('Công viên kỷ Jura', 6, 2025, 'Jurassic.jpg', 2, 1, 'https://example.com/trailer/p23', 'Mo ta phim 23'),
('Quá nhanh quá nguy hiểm', 4, 2018, 'qnqnh.jpg', 2, 1, 'https://example.com/trailer/p24', 'Mo ta phim 24'),
('Đẳng cấp thú cưng', 2, 2016, 'thucung.jpg', 2, 1, 'https://example.com/trailer/p25', 'Mo ta phim 25'),
('X thân mến', 2, 2025, 'xthanmen.jpg', 6, 12, 'https://example.com/trailer/p26', 'Mo ta phim 26'),
('Trung tâm chăm sóc chấn thương', 4, 2025, 'trungtam.jpg', 6, 8, 'https://example.com/trailer/p27', 'Mo ta phim 27'),
('Khom lưng', 6, 2025, 'khomlung.jpg', 7, 36, 'https://example.com/trailer/p28', 'Mo ta phim 28'),
('Harry Potter', 3, 2001, 'harrypotter.jpg', 3, 1, 'https://example.com/trailer/p29', 'Mo ta phim 29'),
('Bí kíp luyện rồng', 6, 2025, 'dragon.jpg', 2, 1, 'https://example.com/trailer/p30', 'Mo ta phim 30');

-- 6. phim_the_loai (mỗi phim 1–2 thể loại)
INSERT INTO phim_the_loai (phim_id, the_loai_id) VALUES
(1,1),(1,16),
(2,1),(2,4),(2,17),
(3,6),(3,20),
(4,1),(4,1),(4,1),
(5,5),(5,5),(5,5),
(6,5),(6,5),(6,5),
(7,1),(7,9),(7,9),
(8,7),(8,7),(8,7),
(9,5),(9,5),(9,5),
(10,2),
(11,1),(11,1),(11,1),
(12,4),
(13,7),(13,7),(13,7),
(14,2),(14,2),
(15,3),
(16,1),(16,1),
(17,5),
(18,7),(18,7),
(19,1),
(20,2),
(21,1),(21,1),
(22,3),
(23,7),
(24,4),
(25,2),
(26,1),(26,1),
(27,5),
(28,7),
(29,1),
(30,2);

-- 7. phim_dien_vien (mỗi phim 2 diễn viên: dùng id 12..30)
INSERT INTO phim_dien_vien (phim_id, dien_vien_id) VALUES
(1,11),(1,13),
(2,10),(2,19),
(3,9),(3,15),
(4,8),(4,13),
(5,12),(5,18),
(6,13),(6,19),
(7,18),(7,19),
(8,11),(8,20),
(9,17),(9,20),
(10,7),(10,19),
(11,15),(11,16),
(12,13),(12,14),
(13,8),(13,21),
(14,8),(14,19),
(15,20),(15,12),
(16,21),(16,7),
(17,8),(17,9),
(18,10),(18,17),
(19,12),(19,13),
(20,10),(20,14),
(21,11),(21,17),
(22,15),(22,19),
(23,20),(23,21),
(24,14),(24,16),(24,17),
(25,7),(25,8),
(26,9),(26,10),
(27,11),(27,12),
(28,13),(28,16),
(29,12),(29,15),
(30,8),(30,16);

-- 8. tap_phim (5 phim đầu, mỗi phim 3 tập = 15 rows)
INSERT INTO tap_phim (so_tap, tieu_de, phim_id, thoi_luong, trailer) VALUES
(1,'Conan - Tap 1',1,111,'https://www.youtube.com/watch?v=C4pG3GbhQZw'),
(1,'Mưa đỏ - Tap 1',2,124,'https://www.youtube.com/watch?v=BD6PoZJdt_M'),
(1,'Wall E - Tap 1',3,98,'https://www.youtube.com/watch?v=CZ1CATNbXg0&t=23s'),
(1,'Câu chuyện đồ chơi 4 - Tap 1',4,100,'https://www.youtube.com/watch?v=wmiIUN-7qhE&t=3s'),
(1,'Mai - Tap 1',5,131,'https://www.youtube.com/watch?v=Yz96EBNwMGw'),
(1,'Ponyo - Tap 1',6,101,'https://www.youtube.com/watch?v=CsR3KVgBzSM'),
(1,'Kỷ băng hà - Tap 1',7,81,'https://www.youtube.com/watch?v=i4noiCRJRoE'),
(1,'Xin Lỗi Anh Chỉ Là Sát Thủ - Tap 1',8,112,'https://www.youtube.com/watch?v=oIigGbzwuIQ'),
(1,'Titanic - Tap 1',9,195,'https://www.youtube.com/watch?v=kVrqfYjkTdQ'),
(1,'Annabelle - Tap 1',10,109,'https://www.youtube.com/watch?v=paFgQNPGlsg'),
(1,'Maleficent - Tap 1',11,119,'https://www.youtube.com/watch?v=7Aw-XMYBeIQ'),
(1,'Turbo - Tap 1',12,96,'https://www.youtube.com/watch?v=VlRtm8Gh9PQ'),
(1,'Gia đình siêu nhân 2 - Tap 1',13,118,'https://www.youtube.com/watch?v=DFqjOM4egbo'),

(1,'Chàng hậu - Tap 1',14,75,'https://example.com/trailer/p5_t1'),
(2,'Chàng hậu - Tap 2',14,74,'https://example.com/trailer/p5_t2'),
(3,'Chàng hậu - Tap 3',14,76,'https://example.com/trailer/p5_t3');

(1,'Mashle: Phép Thuật Và Cơ Bắp - Tap 1',15,23,'https://www.youtube.com/watch?v=AwQJLqJAUBI'),
(2,'Mashle: Phép Thuật Và Cơ Bắp - Tap 2',15,24,'https://www.youtube.com/watch?v=AwQJLqJAUBI'),
(3,'Mashle: Phép Thuật Và Cơ Bắp - Tap 3',15,25,'https://www.youtube.com/watch?v=AwQJLqJAUBI');