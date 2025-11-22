-- 1. Bảng thể loại
CREATE TABLE IF NOT EXISTS the_loai (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_the_loai VARCHAR(50) NOT NULL
);

-- 2. Bảng vai trò
CREATE TABLE IF NOT EXISTS vai_tro (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_vai_tro VARCHAR(20) NOT NULL
);

-- 3. Bảng quốc gia
CREATE TABLE IF NOT EXISTS quoc_gia (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_quoc_gia VARCHAR(50) NOT NULL
);

-- 4. Bảng người dùng
CREATE TABLE IF NOT EXISTS nguoi_dung (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_dang_nhap VARCHAR(50) NOT NULL,
    mat_khau VARCHAR(50) NOT NULL,
    ho_ten VARCHAR(50),
    email VARCHAR(50),
    sdt VARCHAR(10),
    vai_tro_id INT,
    ngay_sinh DATETIME,
    FOREIGN KEY (vai_tro_id) REFERENCES vai_tro(id)
);

-- 5. Bảng phim
CREATE TABLE IF NOT EXISTS phim (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_phim VARCHAR(255) NOT NULL,
    dao_dien_id INT,
    nam_phat_hanh INT,
    poster VARCHAR(255),
    quoc_gia_id INT,
    so_tap INT,
    trailer VARCHAR(255),
    mo_ta TEXT,
    FOREIGN KEY (dao_dien_id) REFERENCES nguoi_dung(id),
    FOREIGN KEY (quoc_gia_id) REFERENCES quoc_gia(id)
);

-- 6. Bảng phim - diễn viên
CREATE TABLE IF NOT EXISTS phim_dien_vien (
    id INT PRIMARY KEY AUTO_INCREMENT,
    phim_id INT,
    dien_vien_id INT,
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    FOREIGN KEY (dien_vien_id) REFERENCES nguoi_dung(id)
);

-- 7. Bảng phim - thể loại
CREATE TABLE IF NOT EXISTS phim_the_loai (
    id INT PRIMARY KEY AUTO_INCREMENT,
    phim_id INT,
    the_loai_id INT,
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    FOREIGN KEY (the_loai_id) REFERENCES the_loai(id)
);

-- 8. Bảng tập phim
CREATE TABLE IF NOT EXISTS tap_phim (
    id INT PRIMARY KEY AUTO_INCREMENT,
    so_tap INT,
    tieu_de VARCHAR(255),
    phim_id INT,
    thoi_luong FLOAT,
    trailer VARCHAR(255),
    FOREIGN KEY (phim_id) REFERENCES phim(id)
);
SELECT p.ten_phim, qg.ten_quoc_gia, nd.ho_ten as dao_dien, dv.ho_ten as dien_vien from phim p 
join quoc_gia qg on p.quoc_gia_id = qg.id 
join nguoi_dung nd on p.dao_dien_id = nd.id 
join phim_dien_vien pdv on p.id = pdv.phim_id 
join nguoi_dung dv on pdv.dien_vien_id = dv.id 
where p.id = 10;



-- the loai
INSERT INTO the_loai (id, ten_the_loai) VALUES
(1,'Hành Động'), 
(2,'Hài'), 
(3,'Tâm Lý'), 
(4,'Chiến Tranh'), 
(5,'Võ Thuật'),
(6,'Viễn Tưởng'), 
(7,'Khoa Học'), 
(8,'Âm Nhạc'), 
(9,'Truyền Hình'), 
(10,'Thuyết Minh'),
(11,'Lãng Mạn'), 
(12,'Cổ Trang'), 
(13,'Hình Sự'), 
(14,'Thể Thao'), 
(15,'Chiếu Rạp'),
(16,'Hoạt Hình'), 
(17,'Kinh Dị'), 
(18,'Thần Thoại'), 
(19,'Anime'), 
(20,'Xuyên Không'),
(22,'Học đường'), 
(23,'Sử Thi'), 
(24,'Trinh Thám'), 
(25,'Lịch Sử'), 
(26,'Kiếm Hiệp'),
(27,'Chính Kịch'), 
(28,'Tài Liệu'), 
(29,'Bí Ẩn'), 
(30,'Gia Đình');

-- vai tro
INSERT INTO vai_tro (id, ten_vai_tro) VALUES
(1,'Admin'),
(2,'Đạo diễn'),
(3,'Diễn viên'),
(4,'User'),

-- quoc gia
INSERT INTO quoc_gia (id, ten_quoc_gia) VALUES
(1,'Việt Nam'),
(2,'Mỹ'),
(3,'Anh'),
(4,'Nhật Bản'),
(5,'Thái Lan'),
(6,'Hàn Quốc'),
(7,'Trung Quốc'),

-- người dùng
INSERT INTO nguoi_dung (id, ten_dang_nhap, mat_khau, ho_ten, email, sdt, ngay_sinh, vai_tro_id) VALUES
(1,'AW','2321','Annabelle Wallace','aw@gmail.com','0555922111','1984-09-05',3),
(2,'JC','0500','Josh Cooley','jc@gmail.com','0375837183','1979-05-23',2),
(3,'MT','1011','Mason Thames','mt@gmail.com','0736274627','2007-07-10',3),
(4,'PHG','9616','Phạm Hương Giang','phg@gmail.com','0382747284','2005-02-09',1),
(5,'DR','6768','Daniel Radcliffe','dr@gmail.com','0284756284','1989-07-23',3),
(6,'NTH','6970','Nông Thị Hoài','nth@gmail.com','0384728475','2005-07-30',4),
(7,'ĐNH','7172','Đỗ Nhật Hoàng','dnh@gmail.com','0754748274','1997-11-13',3),
(8,'JC','7374','James Cameron','jc@gmail.com','0201783234','1954-08-16',2),
(9,'TM','7576','Takayama Minami','tm@gmail.com','0512015101','1964-05-05',3),
(10,'NTV','9221','Nguyễn Thị Vân','ntv@gmail.com','0620178101','2005-09-07',4),
(11,'EW','8112','Emma Watson','ew@gmail.com','0892321905','1990-04-15',3),
(12,'CTTQ','0255','Cao Thị Thu Quyên','cttq@gmail.com','0010192930','2005-03-06',4),
(13,'TH','5121','Tom Hanks','th@gmail.com','0814748115','1956-07-09',3),
(14,'FGG','2362','F. Gary Gray','fgg@gmail.com','0999142161','1969-07-17',2),
(15,'VD','2117','Vin Diesel','vd@gmail.com','0121611022','1967-07-18',3),
(16,'NTN','4454','Nguyễn Thúy Nga','ntn@gmail.com','0919992012','2005-11-25',4),
(17,'KYJ','3122','Kim You-jung','kyj@gmail.com','0128281257','1999-09-22',3),
(18,'LML','4041','Lý Mai Ly','lml@gmail.com','0142063598','2005-09-16',4),
(19,'DJ','6448','Dwayne Johnson','dj@gmail.com','0052025661','1972-05-02',3),
(20,'TT','0710','Trấn Thành','tt@gmail.com','0691329535','1987-02-05',2),
(21,'AP','4146','Jason Statham','js@gmail.com','0708321860','1967-07-26',3),
(22,'LTL','8443','Lê Thị Lệ','ltl@gmail.com','0144119112','2005-08-07',4),
(23,'PAD','3201','Phương Anh Đào','pad@gmail.com','0025122321','1992-04-30',3),
(24,'NKV','1221','Nguyễn Kiều Vy','nkv@gmail.com','0050010119','2005-12-30',4),
(25,'TT','9113','Tuấn Trần','tt@gmail.com','0292504816','1992-11-20',3),
(26,'GE','6722','Gareth Edwards','ge@gmail.com','0426319585','1975-06-01',2),
(27,'LD','5220','Leonardo DiCaprio','ld@gmail.com','0858228299','1974-11-11',3),
(28,'VHL','1152','Vương Hà Linh','vhl@gmail.com','0202352935','2005-08-19',4),
(29,'HH','4521','Holly Hunter','hh@gmail.com','0574034123','1958-03-20',3),
(30,'PTH','7212','Phạm Thị Huế','pth@gmail.com','0320230030','2005-02-04',4);

-- phim
INSERT INTO phim (id, ten_phim, nam_phat_hanh, quoc_gia_id, dao_dien_id, poster, so_tap, trailer, mo_ta) VALUES
(1,'Conan',10,4,20,'..\\FPT\\img\\dọc\\conan.jpg',1,'https://www.youtube.com/watch?v=C4pG3GbhQZw','Kaito Kid gửi thư thách thức để đánh cắp thanh kiếm Hijikata, kéo Conan vào cuộc điều tra nhằm làm rõ mục đích thật sự đằng sau vụ trộm bí ẩn này.'),
(1,'Conan',13,4,20,'..\\FPT\\img\\dọc\\conan.jpg',1,'https://www.youtube.com/watch?v=C4pG3GbhQZw','Kaito Kid gửi thư thách thức để đánh cắp thanh kiếm Hijikata, kéo Conan vào cuộc điều tra nhằm làm rõ mục đích thật sự đằng sau vụ trộm bí ẩn này.'),
(1,'Conan',16,4,20,'..\\FPT\\img\\dọc\\conan.jpg',1,'https://www.youtube.com/watch?v=C4pG3GbhQZw','Kaito Kid gửi thư thách thức để đánh cắp thanh kiếm Hijikata, kéo Conan vào cuộc điều tra nhằm làm rõ mục đích thật sự đằng sau vụ trộm bí ẩn này.'),
(2,'Mưa đỏ',1,1,26,'FPT\\img\\350x495-muado.jpg',1,'https://www.youtube.com/watch?v=BD6PoZJdt_M','Phim kể về tiểu đội lính Bắc Việt trong 81 ngày đêm chiến đấu bảo vệ Thành cổ Quảng Trị năm 1972.'),
(2,'Mưa đỏ',4,1,26,'FPT\\img\\350x495-muado.jpg',1,'https://www.youtube.com/watch?v=BD6PoZJdt_M','Phim kể về tiểu đội lính Bắc Việt trong 81 ngày đêm chiến đấu bảo vệ Thành cổ Quảng Trị năm 1972.'),
(2,'Mưa đỏ',17,1,26,'FPT\\img\\350x495-muado.jpg',1,'https://www.youtube.com/watch?v=BD6PoZJdt_M','Phim kể về tiểu đội lính Bắc Việt trong 81 ngày đêm chiến đấu bảo vệ Thành cổ Quảng Trị năm 1972.'),
(3,'Wall E',6,2,2,'FPT\\img\\dọc\\walle.jpg',1,'https://www.youtube.com/watch?v=CZ1CATNbXg0&t=23s','WALL-E, robot dọn rác cuối cùng trên Trái Đất hoang tàn, gặp EVE và vô tình bước vào hành trình xuyên vũ trụ, mở ra hi vọng cho loài người trở về nhà.'),
(3,'Wall E',20,2,2,'FPT\\img\\dọc\\walle.jpg',1,'https://www.youtube.com/watch?v=CZ1CATNbXg0&t=23s','WALL-E, robot dọn rác cuối cùng trên Trái Đất hoang tàn, gặp EVE và vô tình bước vào hành trình xuyên vũ trụ, mở ra hi vọng cho loài người trở về nhà.'),
(3,'Wall E',20,2,2,'FPT\\img\\dọc\\walle.jpg',1,'https://www.youtube.com/watch?v=CZ1CATNbXg0&t=23s','WALL-E, robot dọn rác cuối cùng trên Trái Đất hoang tàn, gặp EVE và vô tình bước vào hành trình xuyên vũ trụ, mở ra hi vọng cho loài người trở về nhà.'),
(4,'Câu chuyện đồ chơi 4',10,2,2,'FPT\\img\\dọc\\toys.jpg',1,'https://www.youtube.com/watch?v=wmiIUN-7qhE&t=3s','Woody gặp lại Bo Peep và nhận ra thế giới đồ chơi đã thay đổi, mở ra cuộc phiêu lưu mới đầy thử thách và khám phá bản thân.'),
(4,'Câu chuyện đồ chơi 4',11,2,2,'FPT\\img\\dọc\\toys.jpg',1,'https://www.youtube.com/watch?v=wmiIUN-7qhE&t=3s','Woody gặp lại Bo Peep và nhận ra thế giới đồ chơi đã thay đổi, mở ra cuộc phiêu lưu mới đầy thử thách và khám phá bản thân.'),
(4,'Câu chuyện đồ chơi 4',20,2,2,'FPT\\img\\dọc\\toys.jpg',1,'https://www.youtube.com/watch?v=wmiIUN-7qhE&t=3s','Woody gặp lại Bo Peep và nhận ra thế giới đồ chơi đã thay đổi, mở ra cuộc phiêu lưu mới đầy thử thách và khám phá bản thân.'),
(5,'Mai',2,1,20,'FPT\\img\\dọc\\mai.jpg',1,'https://www.youtube.com/watch?v=Yz96EBNwMGw','Phim kể về cuộc đời người phụ nữ Mai, gợi mở bí ẩn quá khứ chưa được hé lộ và những điều chờ đợi trong tương lai.'),
(5,'Mai',7,1,20,'FPT\\img\\dọc\\mai.jpg',1,'https://www.youtube.com/watch?v=Yz96EBNwMGw','Phim kể về cuộc đời người phụ nữ Mai, gợi mở bí ẩn quá khứ chưa được hé lộ và những điều chờ đợi trong tương lai.'),
(5,'Mai',18,1,20,'FPT\\img\\dọc\\mai.jpg',1,'https://www.youtube.com/watch?v=Yz96EBNwMGw','Phim kể về cuộc đời người phụ nữ Mai, gợi mở bí ẩn quá khứ chưa được hé lộ và những điều chờ đợi trong tương lai.'),
(6,'Ponyo',5,4,8,'FPT\\img\\dọc\\ponyo.jpg',1,'https://www.youtube.com/watch?v=CsR3KVgBzSM','Cô cá vàng Ponyo muốn trở thành người, tạo nên hành trình kì diệu cùng cậu bé Sousuke.'),
(6,'Ponyo',11,4,8,'FPT\\img\\dọc\\ponyo.jpg',1,'https://www.youtube.com/watch?v=CsR3KVgBzSM','Cô cá vàng Ponyo muốn trở thành người, tạo nên hành trình kì diệu cùng cậu bé Sousuke.'),
(6,'Ponyo',20,4,8,'FPT\\img\\dọc\\ponyo.jpg',1,'https://www.youtube.com/watch?v=CsR3KVgBzSM','Cô cá vàng Ponyo muốn trở thành người, tạo nên hành trình kì diệu cùng cậu bé Sousuke.'),
(7,'Kỷ băng hà',2,2,26,'FPT\\img\\dọc\\kybangha.jpg',1,'https://www.youtube.com/watch?v=i4noiCRJRoE','Scrat gây hỗn loạn vũ trụ, buộc Manny và nhóm bạn bắt đầu hành trình phiêu lưu đầy thử thách, gặp bạn mới và đối mặt kẻ thù.'),
(7,'Kỷ băng hà',11,2,26,'FPT\\img\\dọc\\kybangha.jpg',1,'https://www.youtube.com/watch?v=i4noiCRJRoE','Scrat gây hỗn loạn vũ trụ, buộc Manny và nhóm bạn bắt đầu hành trình phiêu lưu đầy thử thách, gặp bạn mới và đối mặt kẻ thù.'),
(7,'Kỷ băng hà',20,2,26,'FPT\\img\\dọc\\kybangha.jpg',1,'https://www.youtube.com/watch?v=i4noiCRJRoE','Scrat gây hỗn loạn vũ trụ, buộc Manny và nhóm bạn bắt đầu hành trình phiêu lưu đầy thử thách, gặp bạn mới và đối mặt kẻ thù.'),
(8,'Xin Lỗi Anh Chỉ Là Sát Thủ',1,6,14,'FPT\\img\\dọc\\xinloisatthu.jpg',1,'https://www.youtube.com/watch?v=oIigGbzwuIQ','Một sát thủ gặp tai nạn hoán đổi thân phận với diễn viên quần chúng, kéo theo loạt tình huống dở khóc dở cười.'),
(8,'Xin Lỗi Anh Chỉ Là Sát Thủ',2,6,14,'FPT\\img\\dọc\\xinloisatthu.jpg',1,'https://www.youtube.com/watch?v=oIigGbzwuIQ','Một sát thủ gặp tai nạn hoán đổi thân phận với diễn viên quần chúng, kéo theo loạt tình huống dở khóc dở cười.'),
(8,'Xin Lỗi Anh Chỉ Là Sát Thủ',9,6,14,'FPT\\img\\dọc\\xinloisatthu.jpg',1,'https://www.youtube.com/watch?v=oIigGbzwuIQ','Một sát thủ gặp tai nạn hoán đổi thân phận với diễn viên quần chúng, kéo theo loạt tình huống dở khóc dở cười.'),
(9,'Titanic',7,2,8,'FPT\\img\\dọc\\titanic.jpg',1,'https://www.youtube.com/watch?v=kVrqfYjkTdQ','Chuyện tình bi thương giữa Jack và Rose trên con tàu huyền thoại chìm giữa Đại Tây Dương.'),
(9,'Titanic',10,2,8,'FPT\\img\\dọc\\titanic.jpg',1,'https://www.youtube.com/watch?v=kVrqfYjkTdQ','Chuyện tình bi thương giữa Jack và Rose trên con tàu huyền thoại chìm giữa Đại Tây Dương.'),
(9,'Titanic',19,2,8,'FPT\\img\\dọc\\titanic.jpg',1,'https://www.youtube.com/watch?v=kVrqfYjkTdQ','Chuyện tình bi thương giữa Jack và Rose trên con tàu huyền thoại chìm giữa Đại Tây Dương.'),
(10,'Annabelle',12,2,26,'FPT\\img\\dọc\\annabelle.jpg',1,'https://www.youtube.com/watch?v=paFgQNPGlsg','Con búp bê ma ám gieo rắc những hiện tượng siêu nhiên đáng sợ cho gia đình sở hữu nó.'),
(11,'Maleficent',1,2,2,'FPT\\img\\dọc\\maleficent.jpg',1,'https://www.youtube.com/watch?v=7Aw-XMYBeIQ','Góc nhìn mới về Tiên Hắc Ám và hành trình từ thù hận đến yêu thương dành cho công chúa Aurora.'),
(11,'Maleficent',5,2,2,'FPT\\img\\dọc\\maleficent.jpg',1,'https://www.youtube.com/watch?v=7Aw-XMYBeIQ','Góc nhìn mới về Tiên Hắc Ám và hành trình từ thù hận đến yêu thương dành cho công chúa Aurora.'),
(11,'Maleficent',7,2,2,'FPT\\img\\dọc\\maleficent.jpg',1,'https://www.youtube.com/watch?v=7Aw-XMYBeIQ','Góc nhìn mới về Tiên Hắc Ám và hành trình từ thù hận đến yêu thương dành cho công chúa Aurora.'),
(12,'Turbo',11,2,26,'FPT\\img\\dọc\\turbo.jpg',1,'https://www.youtube.com/watch?v=VlRtm8Gh9PQ','Chú ốc sên mơ ước trở thành vận động viên đua xe và bất ngờ có siêu tốc độ.'),
(13,'Gia đình siêu nhân 2',1,2,2,'FPT\\img\\dọc\\gdsieunhan.jpg',1,'https://www.youtube.com/watch?v=DFqjOM4egbo','Gia đình Parr tiếp tục dùng siêu năng lực để chống lại âm mưu thao túng của kẻ phản diện.'),
(13,'Gia đình siêu nhân 2',11,2,2,'FPT\\img\\dọc\\gdsieunhan.jpg',1,'https://www.youtube.com/watch?v=DFqjOM4egbo','Gia đình Parr tiếp tục dùng siêu năng lực để chống lại âm mưu thao túng của kẻ phản diện.'),
(13,'Gia đình siêu nhân 2',20,2,2,'FPT\\img\\dọc\\gdsieunhan.jpg',1,'https://www.youtube.com/watch?v=DFqjOM4egbo','Gia đình Parr tiếp tục dùng siêu năng lực để chống lại âm mưu thao túng của kẻ phản diện.'),
(14,'Chàng hậu',2,6,8,'FPT\\img\\dọc\\changhau.jpg',20,'https://www.youtube.com/watch?v=xNUU57g4s40','Đầu bếp hiện đại Jang Bong Hwan xuyên không vào thân xác hoàng hậu, gây ra chuỗi tình huống bi hài trong triều đình.'),
(14,'Chàng hậu',14,6,8,'FPT\\img\\dọc\\changhau.jpg',20,'https://www.youtube.com/watch?v=xNUU57g4s40','Đầu bếp hiện đại Jang Bong Hwan xuyên không vào thân xác hoàng hậu, gây ra chuỗi tình huống bi hài trong triều đình.'),
(15,'Spy x Family',13,4,8,'FPT\\img\\dọc\\spyxfamily.jpg',25,'https://www.youtube.com/watch?v=u6RgsYr2GB0','Điệp viên Twilight lập gia đình giả để hoàn thành nhiệm vụ, không biết vợ là sát thủ và con gái đọc được suy nghĩ.'),
(16,'Mashle: Phép Thuật Và Cơ Bắp',1,4,20,'FPT\\img\\dọc\\mashle.jpg',12,'https://www.youtube.com/watch?v=AwQJLqJAUBI','Mash sống trong thế giới phép thuật nhưng chỉ dùng sức mạnh cơ bắp để quẩy nát mọi thử thách.'),
(16,'Mashle: Phép Thuật Và Cơ Bắp',13,4,20,'FPT\\img\\dọc\\mashle.jpg',12,'https://www.youtube.com/watch?v=AwQJLqJAUBI','Mash sống trong thế giới phép thuật nhưng chỉ dùng sức mạnh cơ bắp để quẩy nát mọi thử thách.'),
(17,'Minion',11,2,20,'FPT\\img\\dọc\\minion.jpg',1,'https://www.youtube.com/watch?v=6DxjJzmYsXo','Gru cùng các Minions lên kế hoạch trở thành siêu tội phạm để gia nhập nhóm Vicious 6, dẫn đến loạt tình huống hài hước.'),
(18,'The Meg',1,2,26,'FPT\\img\\dọc\\the meg.jpg',1,'https://www.youtube.com/watch?v=YCyFvy8EvF8','Một nhóm khảo sát biển sâu chạm trán siêu cá mập Megalodon khổng lồ.'),
(18,'The Meg',6,2,26,'FPT\\img\\dọc\\the meg.jpg',1,'https://www.youtube.com/watch?v=YCyFvy8EvF8','Một nhóm khảo sát biển sâu chạm trán siêu cá mập Megalodon khổng lồ.'),
(18,'The Meg',12,2,26,'FPT\\img\\dọc\\the meg.jpg',1,'https://www.youtube.com/watch?v=YCyFvy8EvF8','Một nhóm khảo sát biển sâu chạm trán siêu cá mập Megalodon khổng lồ.'),
(19,'Chúng Tôi Đơn Giản Là Gấu',11,2,14,'FPT\\img\\dọc\\bear.jpg',140,'https://www.youtube.com/watch?v=0ZNsLy2IwcY','Ba anh em gấu cố hòa nhập với cuộc sống loài người đầy hài hước.'),
(20,'Doraemon',13,4,8,'FPT\\img\\dọc\\doraemon.jpg',1,'https://www.youtube.com/watch?v=Yug8gbDd5EQ','Nobita, Doraemon và bạn bè cùng Mika bảo vệ hành tinh âm nhạc khỏi sinh vật hủy diệt, cứu lấy tương lai của âm nhạc và Trái Đất.'),
(21,'Xin Chào Jadoo',2,6,8,'FPT\\img\\dọc\\jadoo.jpg',20,'https://www.youtube.com/watch?v=YtpGgAbOOTY','Chuyện đời thường vui nhộn của cô bé Jadoo tinh nghịch và gia đình.'),
(21,'Xin Chào Jadoo',13,6,8,'FPT\\img\\dọc\\jadoo.jpg',20,'https://www.youtube.com/watch?v=YtpGgAbOOTY','Chuyện đời thường vui nhộn của cô bé Jadoo tinh nghịch và gia đình.'),
(22,'Vẻ Đẹp Đích Thực',7,6,26,'FPT\\img\\dọc\\vedepdichthuc.jpg',16,'https://www.youtube.com/watch?v=1qt52_D2qtk','Im Joo Kyung dùng trang điểm thay đổi bản thân, gây rắc rối hài hước và thu hút hai chàng trai trong lúc giữ hình tượng lung linh.'),
(23,'Công viên kỷ Jura',5,2,26,'FPT\\img\\dọc\\Jurassic.jpg',1,'https://www.youtube.com/watch?v=jan5CFWs9ic','Một nhóm nhân vật mạo hiểm truy tìm DNA khủng long để nghiên cứu y học, đối mặt nhiều loài khủng long nguy hiểm và khám phá bí ẩn tự nhiên.'),
(24,'Quá nhanh quá nguy hiểm',1,2,14,'FPT\\img\\dọc\\qnqnh.jpg',1,'https://www.youtube.com/watch?v=_7tF-Uf7IZY','Dom bị dụ trở lại thế giới tội phạm, cả nhóm phải chiến đấu khắp nơi để ngăn âm mưu đen tối và bảo vệ nhau.'),
(25,'Đẳng cấp thú cưng',11,2,2,'FPT\\img\\dọc\\thucung.jpg',1,'https://www.youtube.com/watch?v=g3vprAJ2X-k','Cuộc sống bí mật của thú cưng khi chủ nhân vắng nhà, với phi vụ giải cứu kịch tính.'),
(26,'X thân mến',1,6,2,'FPT\\img\\dọc\\xthanmen.jpg',12,'https://www.youtube.com/watch?v=62WcqUVFxS8','Baek Ah Jin nổi tiếng nhờ lợi dụng người khác, trong khi hai chàng trai dấn thân cứu cô khỏi nguy hiểm.'),
(26,'X thân mến',3,6,2,'FPT\\img\\dọc\\xthanmen.jpg',12,'https://www.youtube.com/watch?v=62WcqUVFxS8','Baek Ah Jin nổi tiếng nhờ lợi dụng người khác, trong khi hai chàng trai dấn thân cứu cô khỏi nguy hiểm.'),
(27,'Trung tâm chăm sóc chấn thương',3,6,8,'FPT\\img\\dọc\\trungtam.jpg',8,'https://www.youtube.com/watch?v=luv7rHcN4AU','Một bác sĩ cứng rắn dẫn dắt đội ngũ trở thành chiến binh cứu người xuất sắc tại trung tâm chấn thương.'),
(28,'Khom lưng',8,7,26,'FPT\\img\\dọc\\khomlung.jpg',36,'https://www.youtube.com/watch?v=ZWmKbIQ_nSI','Tiểu Kiều gả cho kẻ thù để cứu Yên Châu, từ đó cùng Ngụy Thiệu hóa giải thù hận và dần nảy sinh tình cảm.'),
(29,'Harry Potter',5,2,8,'FPT\\img\\dọc\\harrypotter.jpg',1,'https://www.youtube.com/watch?v=VyHV0BRtdxo','Cậu bé Harry khám phá thế giới phép thuật và chiến đấu chống Chúa Tể Voldemort.'),
(30,'Bí kíp luyện rồng',1,2,26,'FPT\\img\\dọc\\dragon.jpg',1,'https://www.youtube.com/watch?v=tCrdzzpk6qg','Hiccup kết bạn với chú rồng Răng Sún, thay đổi cách người Viking nhìn về loài rồng.');

--phim_dien_vien
INSERT INTO phim_dien_vien (id, phim_id, dien_vien_id) VALUES
(1,1,9),
(2,2,7),
(3,2,25),
(4,3,5),
(5,4,3),
(6,4,13),
(7,5,11),
(8,5,23),
(9,6,13),
(10,8,9),
(11,9,21),
(12,9,27),
(13,10,1),
(14,13,29),
(15,14,25),
(16,15,27),
(17,16,29),
(18,18,21),
(19,20,7),
(20,21,9),
(21,22,17),
(22,24,15),
(23,24,19),
(24,24,21),
(25,25,1),
(26,26,14),
(27,28,19),
(28,29,5),
(29,29,11),
(30,30,3);



INSERT INTO TAPPHIM (id, so_tap, tieu_de, phim_id, thoi_luong, trailer) VALUES
(1,1,'Conan',1,111,'https://www.youtube.com/watch?v=C4pG3GbhQZw'),
(2,1,'Mưa đỏ',2,124,'https://www.youtube.com/watch?v=BD6PoZJdt_M'),
(3,1,'Wall E',3,98,'https://www.youtube.com/watch?v=CZ1CATNbXg0&t=23s'),
(4,1,'Câu chuyện đồ chơi 4',4,100,'https://www.youtube.com/watch?v=wmiIUN-7qhE&t=3s'),
(5,1,'Mai',5,131,'https://www.youtube.com/watch?v=Yz96EBNwMGw'),
(6,1,'Ponyo',6,101,'https://www.youtube.com/watch?v=CsR3KVgBzSM'),
(7,1,'Kỷ băng hà',7,81,'https://www.youtube.com/watch?v=i4noiCRJRoE'),
(8,1,'Xin Lỗi Anh Chỉ Là Sát Thủ',8,112,'https://www.youtube.com/watch?v=oIigGbzwuIQ'),
(9,1,'Titanic',9,195,'https://www.youtube.com/watch?v=kVrqfYjkTdQ'),
(10,1,'Annabelle',10,109,'https://www.youtube.com/watch?v=paFgQNPGlsg'),
(11,1,'Maleficent',11,119,'https://www.youtube.com/watch?v=7Aw-XMYBeIQ'),
(12,1,'Turbo',12,96,'https://www.youtube.com/watch?v=VlRtm8Gh9PQ'),
(13,1,'Gia đình siêu nhân 2',13,118,'https://www.youtube.com/watch?v=DFqjOM4egbo'),
(14,20,'Chàng hậu',14,75,'https://www.youtube.com/watch?v=xNUU57g4s40'),
(15,12,'Mashle: Phép Thuật Và Cơ Bắp',16,23,'https://www.youtube.com/watch?v=AwQJLqJAUBI'),
(16,140,'Chúng Tôi Đơn Giản Là Gấu',19,11,'https://www.youtube.com/watch?v=0ZNsLy2IwcY'),
(17,1,'Doraemon',20,115,'https://www.youtube.com/watch?v=Yug8gbDd5EQ'),
(18,16,'Vẻ Đẹp Đích Thực',22,70,'https://www.youtube.com/watch?v=1qt52_D2qtk'),
(19,1,'Công viên kỷ Jura',23,134,'https://www.youtube.com/watch?v=jan5CFWs9ic'),
(20,1,'Quá nhanh quá nguy hiểm',24,136,'https://www.youtube.com/watch?v=_7tF-Uf7IZY'),
(21,1,'Đẳng cấp thú cưng',25,90,'https://www.youtube.com/watch?v=g3vprAJ2X-k'),
(22,12,'X thân mến',26,55,'https://www.youtube.com/watch?v=62WcqUVFxS8'),
(23,8,'Trung tâm chăm sóc chấn thương',27,55,'https://www.youtube.com/watch?v=luv7rHcN4AU'),
(24,36,'Khom lưng',28,25,'https://www.youtube.com/watch?v=ZWmKbIQ_nSI'),
(25,1,'Harry Potter',29,133,'https://www.youtube.com/watch?v=VyHV0BRtdxo'),
(26,1,'Bí kíp luyện rồng',30,125,'https://www.youtube.com/watch?v=tCrdzzpk6qg');