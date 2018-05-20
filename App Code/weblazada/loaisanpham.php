<?php
	include_once("config.php");
	$ham = $_POST["ham"];

		switch ($ham) {

			case 'LayDanhSachMenu':
				$ham(); 
				break;
			case 'LayDanhSachCacThuongHieuLon':
				$ham();
				break;
			case 'LayDanhSachTopDienThoaiVaMayTinhBang':
				$ham(); 
				break;

		}

	function LayDanhSachMenu(){
		global $conn;
		if(isset($_POST["maloaicha"]))
			$maloaicha = $_POST["maloaicha"];

		$truyvancha = "SELECT *  FROM loaisanpham WHERE MALOAI_CHA = ".$maloaicha;
		$ketqua = mysqli_query($conn,$truyvancha);
		$chuoijson = array();
		echo "{";
		echo "\"LOAISANPHAM\":";
		if($ketqua){
			while ($dong=mysqli_fetch_array($ketqua)) {
				// cách 1 
					$chuoijson[] = $dong;

				// end cách 1
				// laydanhsachloaisp($dong["MALOAISP"]);
				
				//cách 2
				// array_push($chuoijson, array("TENLOAISP"=>$dong["TENLOAISP"],'MALOAISP' => $dong["MALOAISP"]));
				//end cách 2
			}

			echo json_encode($chuoijson,JSON_UNESCAPED_UNICODE);
		}
		echo "}";

		mysqli_close($conn);
	}

	function LayDanhSachCacThuongHieuLon(){
		global $conn;

		$truyvancha = "SELECT *  FROM thuonghieu th,chitietthuonghieu cth WHERE th.MATHUONGHIEU = cth.MATHUONGHIEU";
		$ketqua = mysqli_query($conn,$truyvancha);
		$chuoijson = array();

		echo "{";
		echo "\"DANHSACHTHUONGHIEU\":";
		if($ketqua){
			while ($dong=mysqli_fetch_array($ketqua)) {
			
				
				//cách 2
				array_push($chuoijson, array("MATHUONGHIEU"=>$dong["MATHUONGHIEU"],'TENTHUONGHIEU' => $dong["TENTHUONGHIEU"],'HINHTHUONGHIEU'=>"http://".$_SERVER['SERVER_NAME']."/weblazada".$dong["HINHLOAISPTH"]));
				//end cách 2
			}

			echo json_encode($chuoijson,JSON_UNESCAPED_UNICODE);
		}

		echo "}";
	}
	function LayDanhSachTopDienThoaiVaMayTinhBang(){
		global $conn;

		//truy vấn của điện thoại
		$truyvancha = "SELECT *  FROM loaisanpham lsp, sanpham sp WHERE lsp.TENLOAISP LIKE 'điện thoại%' AND lsp.MALOAISP = sp.MALOAISP ORDER BY sp.LUOTMUA DESC LIMIT 10";
		$ketqua = mysqli_query($conn,$truyvancha);
		$chuoijson = array();

		echo "{";
		echo "\"TOPDIENTHOAI&MAYTINHBANG\":";
		if($ketqua){
			while ($dong=mysqli_fetch_array($ketqua)) {
			
				
				//cách 2
				array_push($chuoijson, array("MASP"=>$dong["MASP"],'TENSP' => $dong["TENSP"],'GIATIEN'=>$dong["GIA"],'HINHSANPHAM'=>"http://".$_SERVER['SERVER_NAME']."/weblazada".$dong["ANHLON"]));
				//end cách 2
			}

			// echo json_encode($chuoijson,JSON_UNESCAPED_UNICODE);
		}

		//truy vấn các sản phẩm là máy tính bảng
		$truyvancha = "SELECT *  FROM loaisanpham lsp, sanpham sp WHERE lsp.TENLOAISP LIKE 'máy tính bảng%' AND lsp.MALOAISP = sp.MALOAISP ORDER BY sp.LUOTMUA DESC LIMIT 10";
		$ketquamtb = mysqli_query($conn,$truyvancha);
		
		if($ketquamtb){
			while ($dongmtb=mysqli_fetch_array($ketquamtb)) {
			
			
				//cách 2
				array_push($chuoijson, array("MASP"=>$dongmtb["MASP"],'TENSP' => $dongmtb["TENSP"],'GIATIEN'=>$dongmtb["GIA"],'HINHSANPHAM'=>"http://".$_SERVER['SERVER_NAME']."/weblazada".$dong["ANHLON"]));
				//end cách 2
			}

			
		}

		echo json_encode($chuoijson,JSON_UNESCAPED_UNICODE);
		echo "}";
	}

?>
