<?php
	$conn=mysqli_connect("127.0.0.1","root","","pet",3306);
	mysqli_query($conn,"set names utf8");
	$sql="select * from desktop limit 20";
	$result=mysqli_query($conn,$sql);
	$array=mysqli_fetch_all($result,MYSQLI_ASSOC);
	$res=json_encode($array);
	echo $res;
?>