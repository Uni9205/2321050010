let danhSachPhim = [
    {
        id: 1,
        tenPhim: "Mưa đỏ",
        namPhatHanh: 2025,
        tuoi: 16,
        thoiLuong: 2,
        quocGia: "Việt Nam",
        poster: "img/mua-do2-1122.jpeg",
        theLoai: "Phim chiếu rạp"
    },
    {
        id: 2,
        tenPhim: "Công chúa Sói",
        namPhatHanh: 2025,
        tuoi: 15,
        thoiLuong: 120,
        quocGia: "Nhật Bản",
        poster: "img\phim\mononoke.jpg",
        theLoai: "Phim Anime"
    },
    {
        id: 3,
        tenPhim: "Người đẹp và quái vật",
        namPhatHanh: 2025,
        tuoi: 15,
        thoiLuong: 120,
        quocGia: "Mỹ",
        poster: "img/phim/beautyandthebeaets.jpg",
        theLoai: "Phim chiếu rạp"
    },
]
let phimHienTai = danhSachPhim[0];

let banner = document.getElementsByClassName('muado')[0];

function chonPhim(idPhim){
    for(let i=0; i < danhSachPhim.length; i++){
        if(danhSachPhim[i].id == idPhim)
            banner.computedStyleMap.backgroundImage = danhSachPhim[i].poster;
    }
}