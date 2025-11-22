<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buổi 1 php</title>
</head>
<body>
    <?php
        //1. In ra màn hình
        echo "Hello world! <br>";

        echo "Hi <br>";
    
        //2. Biến
        // Cú pháp: $ + tên biến = giá trị của biến
        $ten = "Hương Giang";
        $tuoi = 20;

        // Dùng dấu "." để nối chuỗi kí tự trong php
        echo $ten . " " . $tuoi . " tuổi <br>";    

        //3. Hang
        define("soPi", "3.14");
        echo soPi . "<br>";

        //4. Phân biệt ' ' và " "
        echo '$ten' . "<br>";   // lệnh trong cặp dấu nháy đơn được hiểu là chuỗi kí tự
        echo "$ten" . "<br>";   // lệnh trong cặp dấu nháy kép được hiểu là lệnh

        // 5. Chuỗi
        #5.1 Kiểm tra độ dài của chuỗi
        echo strlen($ten) . "<br>";
        #5.2 Đếm số từ
        echo str_word_count($ten) . "<br>";
        #5.3 Tìm kiếm ký tự trong chuỗi
        echo strpos($ten, "a") . "<br>";
        #5.4 Thay thế kí tự trong chuỗi 
        echo str_replace("Giang", "Gia", $ten) . "<br>";

        //6. Toán tử
        $soThuNhat = 10;
        $soThuHai = 5;
        # Phép + - * /
        echo $soThuNhat + $soThuHai . ", ";
        echo $soThuNhat - $soThuHai . ", ";
        echo $soThuNhat * $soThuHai . ", ";
        echo $soThuNhat / $soThuHai . "<br>";
        # += -= *= /= %=
        # so sánh == != > < >= <= ===
        echo $soThuNhat < $soThuHai;

        //7. Câu điều kiện
        // if("điều kiện"){
            // logic
        // }
        // else{
        //     logic
        // }

        // Kiểm tra tổng của số thứ nhất và số thứ 2
        // nếu < 15 thì in ra nhỏ hơn 15
        // nếu = 15 thì in ra tổng = 15
        // còn lại in ra lớn hơn 15
        $tong = $soThuNhat + $soThuHai;
        if($tong < 15){
            echo "Tổng nhỏ hơn 15";
        }
        else if($tong == 15){
            echo "Tổng bằng 15";
        }
        else{
            echo "Tổng lớn hơn 15";
        }
        echo "<br>";

        //8. switch case
        $color = "red";
        switch ($color){
            case "red":
                echo "is red";
                break;
            case "blue":
                echo "is blue";
                break;
            default:
                echo "no color";
                break;        
        }
        echo "<br>";

        //9. for
        for($i=0; $i<100; $i++){
            echo $i . "<br>";
        }

        //10. Mảng
        $mang = ["Giang", "Quyên", "Linh", "Vy"];
        // Đếm phần tử
        echo count($mang);
        echo $mang[1];
        print_r($mang);
        $mang[] = "Giang";
        print_r($mang);
        #xóa
        unset($mang[4]);
        print_r($mang);
    ?>
</body>
</html>

