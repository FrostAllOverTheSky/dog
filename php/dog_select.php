<?php
  require("init.php");
  $pno=$_REQUEST["pno"];
   $output=["count"=>0,"pageSize"=>10,"pageCount"=>0,"pno"=>0,"products"=>[]];
   $sql="select count(*) from dog_select";
   $result=mysqli_query($conn,$sql);
   $output["count"]=mysqli_fetch_row($result)[0];
   $output["pageCount"]=ceil($output["count"]/$output["pageSize"]);
   $output["pno"]=$pno;
   $limit=" limit ".$output["pageSize"]*$pno.",".$output["pageSize"];
   $sql="select * from dog_select $limit";
	$result=mysqli_query($conn,$sql);
	$rows=mysqli_fetch_all($result,1);
   $output["products"]=$rows;
   echo json_encode($output);