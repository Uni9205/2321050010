let danhSachPhim = [
    {
        id: 1,
        tenPhim: "Wall-E",
        namPhatHanh: 2008,
        tuoi: 10,
        thoiLuong: 98,
        quocGia: "Mỹ",
        poster: "img/ngang/walle.jpg",
        theLoai: "Phim hoạt hình",
        trailer: "https://www.youtube.com/watch?v=_kslEYbMr1g",
    },
    {
        id: 2,
        tenPhim: "Toys Store 4",
        namPhatHanh: 2019,
        tuoi: 6,
        thoiLuong: 100,
        quocGia: "Mỹ",
        poster: "img/ngang/toysstore.jpg",
        theLoai: "Phim hoạt hình",
        trailer: "https://www.youtube.com/watch?v=wmiIUN-7qhE",
    },
    {
        id: 3,
        tenPhim: "Mai",
        namPhatHanh: 2024,
        tuoi: 16,
        thoiLuong: 130,
        quocGia: "Việt Nam",
        poster: "img/ngang/Mai.jpg",
        theLoai: "Phim chiếu rạp",
        trailer: "https://www.youtube.com/watch?v=Yz96EBNwMGw",
    },
    {
        id: 4,
        tenPhim: "Ponyo",
        namPhatHanh: 2008,
        tuoi: 6,
        thoiLuong: 101,
        quocGia: "Nhật Bản",
        poster: "img/ngang/ponyo2.jpg",
        theLoai: "Phim Anime",
        trailer: "https://www.youtube.com/watch?v=CsR3KVgBzSM",
    },
    {
        id: 5,
        tenPhim: "Sát thủ vô cùng cực",
        namPhatHanh: 2025,
        tuoi: 16,
        thoiLuong: 107,
        quocGia: "Hàn Quốc",
        poster: "img/ngang/satthu.webp",
        theLoai: "Phim hài",
        trailer: "https://www.youtube.com/watch?v=nmsMIDYfCow",
    },
    {
        id: 6,
        tenPhim: "Xin lỗi anh chỉ là sát thủ",
        namPhatHanh: 2016,
        tuoi: 16,
        thoiLuong: 112,
        quocGia: "Hàn Quốc",
        poster: "img/ngang/xinloisatthu.webp",
        theLoai: "Phim chiếu rạp",
        trailer: "https://www.youtube.com/watch?v=YoQESz6FO7o",
    },
    {
        id: 7,
        tenPhim: "Bỗng dưng trúng số",
        namPhatHanh: 2022,
        tuoi: 13,
        thoiLuong: 113,
        quocGia: "Hàn Quốc",
        poster: "img/ngang/trung-so.webp",
        theLoai: "Phim hài",
        trailer: "https://www.youtube.com/watch?v=yeMf-Dva5r0",
    },
    {
        id: 8,
        tenPhim: "Đất Rừng Phương Nam",
        namPhatHanh: 2023,
        tuoi: 10,
        thoiLuong: 120,
        quocGia: "Việt Nam",
        poster: "img/ngang/datrungphuongnam.jpg",
        theLoai: "Phim sử thi",
        trailer: "https://www.youtube.com/watch?v=hktzirCnJmQ",
    },
    {
        id: 9,
        tenPhim: "Địa đạo",
        namPhatHanh: 2016,
        tuoi: 13,
        thoiLuong: 127,
        quocGia: "Hàn Quốc",
        poster: "img/ngang/diadao.jpg",
        theLoai: "Phim lịch sử",
        trailer: "https://www.youtube.com/watch?v=xh6IDHjvytU",
    },
    {
        id: 10,
        tenPhim: "Turbo",
        namPhatHanh: 2013,
        tuoi: 6,
        thoiLuong: 96,
        quocGia: "Mỹ",
        poster: "img/ngang/turbo.webp",
        theLoai: "Phim hoạt hình",
        trailer: "https://www.youtube.com/watch?v=12mo4cOuvAw",
    },
    {
        id: 11,
        tenPhim: "gia đình siêu nhân",
        namPhatHanh: 2018,
        tuoi: 7,
        thoiLuong: 118,
        quocGia: "Mỹ",
        poster: "img/ngang/giadinhsieunhan",
        theLoai: "Phim chiếu rạp",
        trailer: "https://www.youtube.com/watch?v=DFqjOM4egbo",
    },
    {
        id: 12,
        tenPhim: "chàng hậu",
        namPhatHanh: 2020,
        tuoi: 16,
        thoiLuong: 45,
        quocGia: "Hàn Quốc",
        poster: "img/ngang/changhau.jpg",
        theLoai: "Cổ trang, Hài, Tình cảm",
        trailer: "https://www.youtube.com/watch?v=xNUU57g4s40",
    },
    {
        id: 13,
        tenPhim: "Spy X Family",
        namPhatHanh: 2022,
        tuoi: 13,
        thoiLuong: 24,
        quocGia: "Nhật Bản",
        poster: "img/ngang/spyxfamily.jpg",
        theLoai: "Hoạt hình, Hành động, Gia đình",
        trailer: "https://www.youtube.com/watch?v=u6RgsYr2GB0",
    },
    {
        id: 14,
        tenPhim: "Mashle",
        namPhatHanh: 2023,
        tuoi: 13,
        thoiLuong: 23,
        quocGia: "Nhật Bản",
        poster: "img/ngang/mashle.jpg",
        theLoai: "Phim chiếu rạp",
        trailer: "https://www.youtube.com/watch?v=10RyLKbMzJo",
    },
    {
        id: 15,
        tenPhim: "Minion",
        namPhatHanh: 2022,
        tuoi: 6,
        thoiLuong: 87,
        quocGia: "Mỹ",
        poster: "img/ngang/minion2.jpg",
        theLoai: "Phim chiếu rạp",
        trailer: "https://www.youtube.com/watch?v=6DxjJzmYsXo",
    },
    {
        id: 16,
        tenPhim: "Chúng Tôi Đơn Giản Là Gấu",
        namPhatHanh: 2015,
        tuoi: 6,
        thoiLuong: 11,
        quocGia: "Mỹ",
        poster: "img/ngang/gau.jpg",
        theLoai: "Phim truyền hình",
        trailer: "https://www.youtube.com/watch?v=0ZNsLy2IwcY",
    },
    {
        id: 17,
        tenPhim: "Doraemon",
        namPhatHanh: 2024,
        tuoi: 6,
        thoiLuong: 112,
        quocGia: "Nhật Bản",
        poster: "img/ngang/doraemon.webp",
        theLoai: "Phim chiếu rạp",
        trailer: "https://www.youtube.com/watch?v=Yug8gbDd5EQ",
    },
    {
        id: 18,
        tenPhim: "Jadoo",
        namPhatHanh: 1998,
        tuoi: 6,
        thoiLuong: 22,
        quocGia: "Hàn Quốc",
        poster: "img/ngang/jadoo.jpg",
        theLoai: "Phim chiếu rạp",
        trailer: "https://www.youtube.com/watch?v=YtpGgAbOOTY",
    },
    {
        id: 19,
        tenPhim: "Oggy",
        namPhatHanh: 2025,
        tuoi: 6,
        thoiLuong: 11,
        quocGia: "Pháp",
        poster: "img/ngang/oggy.png",
        theLoai: "Phim chiếu rạp",
        trailer: "https://www.youtube.com/watch?v=z26G1Jx77kY",
    },
    {
        id: 20,
        tenPhim: "Vẻ Đẹp Đích Thực",
        namPhatHanh: 2020,
        tuoi: 13,
        thoiLuong: 75,
        quocGia: "Hàn Quốc",
        poster: "img/ngang/vedep.webp",
        theLoai: "Phim truyền hình",
        trailer: "https://www.youtube.com/watch?v=nJu_kMBG7dM",
    },
]
let phimHienTai = danhSachPhim[0];

let banner = document.getElementsByClassName('muado')[0];
let nam = document.getElementsByClassName('nam')[0];
let tuoi = document.getElementsByClassName('tuoi')[0];
let thoiLuong = document.getElementsByClassName('thoi-luong')[0];
let quocGia = document.getElementsByClassName('quoc-gia')[0];

let frameTrailer = document.getElementById('frameTrailer');
let trailer = document.getElementsByClassName('trailer')[0];
let trangThai = true;

function chonPhim(idPhim){
    for(let i=0; i < danhSachPhim.length; i++){
        if(danhSachPhim[i].id === idPhim) {
            debugger
            banner.style.backgroundImage = 'url(' + danhSachPhim[i].poster + ')';
            nam.innerHTML = danhSachPhim[i].namPhatHanh;
            tuoi.innerHTML = 'T'+danhSachPhim[i].tuoi;
            thoiLuong.innerHTML = danhSachPhim[i].thoiLuong + ' phút';
            quocGia.innerHTML = danhSachPhim[i].quocGia;
            phimHienTai = danhSachPhim[i];
        } 
    }
}

function xemTrailer() {
    if(trangThai) {
        banner.style.backgroundImage = "none";
        trailer.style.display = "block";
        frameTrailer.src = phimHienTai.trailer.replace("watch?v=", "embed/") + "?autoplay=1";
        trangThai = false;
    }
    else {
        frameTrailer.src = ""; // dừng video
        trailer.style.display = "none";
        banner.style.backgroundImage = 'url(' + phimHienTai.poster + ')';
        trangThai = true;
    }
}