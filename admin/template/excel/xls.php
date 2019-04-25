<?php
/**
 * PHPExcel
 *
 * Copyright (c) 2006 - 2015 PHPExcel
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 *
 * @category   PHPExcel
 * @package    PHPExcel
 * @copyright  Copyright (c) 2006 - 2015 PHPExcel (http://www.codeplex.com/PHPExcel)
 * @license    http://www.gnu.org/licenses/old-licenses/lgpl-2.1.txt	LGPL
 * @version    ##VERSION##, ##DATE##
 */

/** Error reporting */
error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);
date_default_timezone_set('Europe/London');

if (PHP_SAPI == 'cli')
	die('This example should only be run from a Web Browser');

/** Include PHPExcel */
require_once dirname(__FILE__) . '/Classes/PHPExcel.php';

require_once dirname(__FILE__) . '/../../../functions/database.php';

function detail ($table, $col, $id) {
	global $conn_vn;
	if ($id == 0) {
		return '';
	} else {
		$sql = "SELECT * FROM $table WHERE $col = $id";
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		return $row['name'];
	}
}

$trang_thai_arr = array('khong', 'Đã bán', 'Đang bán', 'Dừng bán');

function register () {
		global $conn_vn;
		$where = '';
		if (isset($_GET['trang_thai']) && $_GET['trang_thai'] != 0) {
            $where .= " AND trang_thai = ".$_GET['trang_thai'];
        }
        if (isset($_GET['quan']) && $_GET['quan'] != 0) {
            $where .= " AND quan = ".$_GET['quan'];
        }
        if (isset($_GET['tai_chinh']) && $_GET['tai_chinh'] != 0) {
            $where .= " AND tai_chinh = ".$_GET['tai_chinh'];
        }
        if (isset($_GET['hien_trang']) && $_GET['hien_trang'] != 0) {
            $where .= " AND hien_trang = ".$_GET['hien_trang'];
        }
        if (isset($_GET['dien_tich']) && $_GET['dien_tich'] != 0) {
            $where .= " AND dien_tich_loc = ".$_GET['dien_tich'];
        }
        // if (isset($_GET['huong_nha']) && $_GET['huong_nha'] != 0) {
        //     $where .= " AND huong_nha = ".$_GET['huong_nha'];
        // }

        $sql = "SELECT * FROM product WHERE 1=1 $where";
		
		$result = mysqli_query($conn_vn, $sql) or die(mysqli_error($conn_vn));
		
		$rows = array();
		while ($row = mysqli_fetch_assoc($result)) {
			$rows[] = $row;
		}
		// echo "string";
		return $rows;
		
	}
	$list = register();// var_dump($list);
// Create new PHPExcel object
$objPHPExcel = new PHPExcel();

// Set document properties
$objPHPExcel->getProperties()->setCreator("Maarten Balliauw")
							 ->setLastModifiedBy("Maarten Balliauw")
							 ->setTitle("Office 2007 XLSX Test Document")
							 ->setSubject("Office 2007 XLSX Test Document")
							 ->setDescription("Test document for Office 2007 XLSX, generated using PHP classes.")
							 ->setKeywords("office 2007 openxml php")
							 ->setCategory("Test result file");


// Add some data
$objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A1', 'ID')
            ->setCellValue('B1', 'Trạng thái')
            ->setCellValue('C1', 'Tên')
            ->setCellValue('D1', 'Địa chỉ')
            ->setCellValue('E1', 'Quận')
            ->setCellValue('F1', 'Tên đường')
            ->setCellValue('G1', 'Diện tích thật')
            ->setCellValue('H1', 'Diện tích lọc')
            ->setCellValue('I1', 'Hiện trạng')
            ->setCellValue('J1', 'Mặt tiền')
            ->setCellValue('K1', 'Giá chào')
            ->setCellValue('L1', 'Giá bán')
            ->setCellValue('M1', 'Liên hệ')
            ->setCellValue('N1', 'Follow')
            ->setCellValue('O1', 'Ngày chào')
            ->setCellValue('P1', 'Ngày bán')
            ->setCellValue('Q1', 'Vị trí')
            ->setCellValue('R1', 'Pháp lý')
            ->setCellValue('S1', 'Hướng nhà')
            ->setCellValue('T1', 'Tài chính');
            // ->setCellValue('U1', 'Mô tả ngắn');

// Miscellaneous glyphs, UTF-8
// $objPHPExcel->setActiveSheetIndex(0)
//             ->setCellValue('A4', 'Miscellaneous glyphs')
//             ->setCellValue('A5', 'éàèùâêîôûëïüÿäöüç');
$i = 1;
foreach ($list as $item) {
	$i++;
	$objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A'.$i, $item['product_id'])
            ->setCellValue('B'.$i, $trang_thai_arr[$item['trang_thai']])
            ->setCellValue('C'.$i, $item['product_name'])
            ->setCellValue('D'.$i, $item['product_address'])
            ->setCellValue('E'.$i, detail('quan', 'id', $item['quan']))
            ->setCellValue('F'.$i, $item['ten_duong'])
            ->setCellValue('G'.$i, $item['dien_tich'])
            ->setCellValue('H'.$i, detail('dien_tich', 'id', $item['dien_tich_loc']))
            ->setCellValue('I'.$i, detail('hien_trang', 'id', $item['hien_trang']))
            ->setCellValue('J'.$i, $item['mat_tien'])
            ->setCellValue('K'.$i, $item['product_price'])
            ->setCellValue('L'.$i, $item['product_price_sale'])
            ->setCellValue('M'.$i, $item['lien_he'])
            ->setCellValue('N'.$i, $item['follow'])
            ->setCellValue('O'.$i, $item['product_code'])
            ->setCellValue('P'.$i, $item['product_ngayban'])
            ->setCellValue('Q'.$i, detail('vi_tri', 'id', $item['vi_tri']))
            ->setCellValue('R'.$i, detail('phap_ly', 'id', $item['phap_ly']))
            ->setCellValue('S'.$i, detail('huong_nha', 'id', $item['huong_nha']))
            ->setCellValue('T'.$i, detail('tai_chinh', 'id', $item['tai_chinh']));
            // ->setCellValue('U'.$i, $item['product_des']);
}
// Rename worksheet
$objPHPExcel->getActiveSheet()->setTitle('Simple');


// Set active sheet index to the first sheet, so Excel opens this as the first sheet
$objPHPExcel->setActiveSheetIndex(0);


// Redirect output to a client’s web browser (Excel5)
// header('Content-Type: application/vnd.ms-excel');
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="thongtin.xlsx"');

header('Cache-Control: max-age=0');
// If you're serving to IE 9, then the following may be needed
header('Cache-Control: max-age=1');

// If you're serving to IE over SSL, then the following may be needed
header ('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
header ('Last-Modified: '.gmdate('D, d M Y H:i:s').' GMT'); // always modified
header ('Cache-Control: cache, must-revalidate'); // HTTP/1.1
header ('Pragma: public'); // HTTP/1.0

// $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
$objWriter->save('php://output');
exit;
