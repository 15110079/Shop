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


?>
