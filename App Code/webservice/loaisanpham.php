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

			case 'LayDanhSachSanPhamTheoMaThuongHieu':
				$ham(); 
				break;

			case 'LayDanhSachSanPhamTheoMaLoaiDanhMuc':
				$ham(); 
				break;
                       case 'KiemTraDangNhap':
				$ham(); 
				break;
                       case 'DangKyThanhVien':
				$ham(); 
				break;
				case 'Lay':
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

 
 	function LayDanhSachSanPhamTheoMaThuongHieu(){
			global $conn;
			$chuoijson = array();
			if(isset($_POST["maloaisp"]) || isset($_GET["limit"])){
				$maloai = $_POST["maloaisp"];
				$limit = $_POST["limit"];
				 
			}
			
			echo "{";
			echo "\"DANHSACHSANPHAM\":";

			$chuoijson = LayDanhSachSanPhamTheoMaLoaiThuongHieu($conn,$maloai,$chuoijson,$limit);
			echo json_encode($chuoijson,JSON_UNESCAPED_UNICODE);
			echo "}";

		}


	function LayDanhSachSanPhamTheoMaLoaiDanhMuc(){
			global $conn;
			$chuoijson = array();

			if(isset($_POST["maloaisp"]) || isset($_POST["limit"])){
				$maloai = $_POST["maloaisp"];
				$limit = $_POST["limit"];
			}
			
			$ketqua = LayDanhSachSanPhamTheoMaLoai($conn,$maloai,$chuoijson,$limit);

			echo "{";
			echo "\"DANHSACHSANPHAM\":";
				if($ketqua){
					while ($dongtienich = mysqli_fetch_array($ketqua)) {
					array_push($chuoijson, array("MASP"=>$dongtienich["MASP"],'TENSP' => $dongtienich["TENLOAISP"],'GIATIEN'=>$dongtienich["GIA"],'HINHSANPHAM'=>"http://".$_SERVER['SERVER_NAME']."/weblazada".$dongtienich["ANHLON"],'HINHSANPHAMNHO'=>"http://".$_SERVER['SERVER_NAME']."/weblazada".$dongtienich["ANHNHO"]));
					
				}
			}				
			echo json_encode($chuoijson,JSON_UNESCAPED_UNICODE);

			echo "}";
		
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

	function LayDanhLoaiSanPhamTheoMaLoai($conn,$maloaisp){
			$truyvancha = "SELECT *  FROM loaisanpham lsp WHERE lsp.MALOAI_CHA = ".$maloaisp;
			$ketqua = mysqli_query($conn,$truyvancha);
			
			
			return $ketqua;
			
		}
			//lay danh sach san pham theo thuong hieu
	function LayDanhSachSanPhamTheoMaLoaiThuongHieu($conn,$maloaith,$chuoijson,$limit){
		
		$truyvantienich = "SELECT *  FROM thuonghieu th, sanpham sp WHERE th.MATHUONGHIEU = ".$maloaith." AND th.MATHUONGHIEU = sp.MATHUONGHIEU ORDER BY sp.LUOTMUA DESC LIMIT ".$limit.",20";
		
		$ketquacon = mysqli_query($conn,$truyvantienich);	
				
		if($ketquacon){
			while ($dongtienich = mysqli_fetch_array($ketquacon)) {
				array_push($chuoijson, array("MASP"=>$dongtienich["MASP"],'TENSP' => $dongtienich["TENSP"],'GIATIEN'=>$dongtienich["GIA"],'HINHSANPHAM'=>"http://".$_SERVER['SERVER_NAME']."/weblazada".$dongtienich["ANHLON"],'HINHSANPHAMNHO'=>"http://".$_SERVER['SERVER_NAME']."/weblazada".$dongtienich["ANHNHO"]));
				
			}
		}

		return $chuoijson;
	}

		

	function LayDanhSachSanPhamTheoMaLoai($conn,$maloaisp,$chuoijson,$limit){
		
		$truyvantienich = "SELECT *  FROM loaisanpham lsp, sanpham sp WHERE lsp.MALOAISP = ".$maloaisp." AND lsp.MALOAISP = sp.MALOAISP ORDER BY sp.LUOTMUA DESC LIMIT ".$limit;
		
		$ketquacon = mysqli_query($conn,$truyvantienich);	
				
		if($ketquacon){
			while ($dongtienich = mysqli_fetch_array($ketquacon)) {
				array_push($chuoijson, array("MASP"=>$dongtienich["MASP"],'TENSP' => $dongtienich["TENLOAISP"],'GIATIEN'=>$dongtienich["GIA"],'HINHSANPHAM'=>"http://".$_SERVER['SERVER_NAME']."/weblazada".$dongtienich["ANHLON"],'HINHSANPHAMNHO'=>"http://".$_SERVER['SERVER_NAME']."/weblazada".$dongtienich["ANHNHO"]));
				
			}
		}

		return $chuoijson;

	}
function KiemTraDangNhap(){
			global $conn;
			if(isset($_POST["tendangnhap"]) || isset($_POST["matkhau"])){
				$tendangnhap = $_POST["tendangnhap"];
				$matkhau = $_POST["matkhau"];
			}

			$truyvan = "SELECT * FROM nhanvien WHERE TENDANGNHAP='".$tendangnhap."' AND MATKHAU='".$matkhau."'";
			$ketqua = mysqli_query($conn,$truyvan);
			$demdong = mysqli_num_rows($ketqua);
			if($demdong >=1){
				$tennv = "";
				while ($dong = mysqli_fetch_array($ketqua)) {
					$tennv = $dong["TENNV"];
				}
				echo "{ ketqua : true, tennv : \"".$tennv."\" }";
			}else{
				echo "{ ketqua : false }";
			}

		}

		function DangKyThanhVien(){
			global $conn;
			if(isset($_POST["tennv"]) || isset($_POST["tendangnhap"]) || isset($_POST["matkhau"]) || isset($_POST["maloainv"]) || isset($_POST["emaildocquyen"])){
				$tennv = $_POST["tennv"];
				$tendangnhap = $_POST["tendangnhap"];
				$matkhau = $_POST["matkhau"];
				$maloainv = $_POST["maloainv"];
				$emaildocquyen = $_POST["emaildocquyen"];
			}
			

			$truyvan = "INSERT INTO nhanvien (TENNV,TENDANGNHAP,MATKHAU,MALOAINV,EMAILDOCQUYEN) VALUES ('".$tennv."','".$tendangnhap."','".$matkhau."','".$maloainv."','".$emaildocquyen."') ";

			if(mysqli_query($conn,$truyvan)){
				echo "{ ketqua : true }";
			}else{
				echo "{ ketqua : false }".mysqli_error($conn);
			}

			mysqli_close($conn);


		}
		

?>
