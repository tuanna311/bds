<?php
/**
 * Created by PhpStorm.
 * User: anhtuan
 * Date: 4/25/2019
 * Time: 10:38 PM
 */
//debug
function printValue($param){
    echo '<pre>';
    print_r($param);
    echo '</pre>';
    die;
}

//error_reporting(E_ALL);
ini_set('display_errors', 1);
include 'lib/Classes/PHPExcel/IOFactory.php';

$inputFileName = 'data/product.xlsx';
//try {
    $inputFileType = PHPExcel_IOFactory::identify($inputFileName);
    $objReader = PHPExcel_IOFactory::createReader($inputFileType);
    $objPHPExcel = $objReader->load($inputFileName);
//} catch(Exception $e) {
//    die('Lỗi không thể đọc file "'.pathinfo($inputFileName,PATHINFO_BASENAME).'": '.$e->getMessage());
//}
$sheet = $objPHPExcel->getSheet(0);
$highestRow = $sheet->getHighestRow();
$highestColumn = $sheet->getHighestColumn();
$rows = [];
for ($row = 1; $row <= $highestRow; $row++){
    $rows[] = $sheet->rangeToArray('A' . $row . ':' . $highestColumn . $row, NULL, TRUE,FALSE);
}
//printValue($rows);
if(is_array($rows) && count($rows)){
    array_shift($rows);

    //connect DB
    $db_host = 'localhost';
    $db_user_vn = 'root';
    $db_pass = '';
    $db_name_vn = 'bds';
    $conn_vn =  mysqli_connect($db_host, $db_user_vn, $db_pass);
    mysqli_set_charset($conn_vn,"utf8");
    if ($conn_vn){
        $select_db = mysqli_select_db($conn_vn,$db_name_vn);
        if(!$select_db){
            echo 'Not found database';
        }
    }
    else{
        echo 'Can not connect to database!';
    }

    $count = 0;
    foreach ($rows as $item){
        $product_name = isset($item[0][0]) ? $item[0][0] : '';
        $product_address = isset($item[0][0]) ? $item[0][0] : '';
        $ten_duong = isset($item[0][1]) ? $item[0][1] : '';
        $thong_so = isset($item[0][2]) ? $item[0][2] : '';
        $product_price = isset($item[0][3]) ? $item[0][3] : '';
        $lien_he = isset($item[0][4]) ? $item[0][4] : '';
        $sql = "insert into product (`product_name`, `product_address`, `ten_duong`, `thong_so`, `product_price`, `lien_he`)
                            values(
                              '".$product_name."',
                              '".$product_address."',
                              '".$ten_duong."',
                              '".$thong_so."',
                              '".$product_price."',
                              '".$lien_he."'
                            )";
        if (mysqli_query($conn_vn, $sql)) {
            $count++;
            echo "<br>New record $product_name is created successfully";
        } else {
            echo "<br>Error: " . $sql . "<br>" . mysqli_error($conn_vn);
            echo "<br>".$product_name."<br>";
            die;
        }
    }
    echo "<br>Total: ".$count;
    mysqli_close($conn_vn);
    die;
}


