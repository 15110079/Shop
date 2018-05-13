<?php
    include_once("config.php");

    $maloaicha=$_POST["maloaicha"];
	$truyvan="SELECT * FROM loaisanpham WHERE MALOAI_CHA=".$maloaicha ;
	$ketqua=mysqli_query($conn,$truyvan);
	$chuoijson=array();
	echo "{";
	echo"\"LOAISANPHAM\":";
	if($ketqua){
		while($dong=mysqli_fetch_array($ketqua)){
			// cach 1
				$chuoijson[] = $dong;
			//end 

			//cach 2
			//array_push($chuoijson,array("TENLOAISP"=>$dong["TENLOAISP"],"MALOAISP"=>$dong["MALOAISP"]));
			//end cach 2
		}

		echo json_encode($chuoijson);
	}
	echo"}";


?>