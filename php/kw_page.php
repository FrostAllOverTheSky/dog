<?php
  require("init.php");
  $kw=$_REQUEST["kw"];
  $pno=$_REQUEST["pno"];
  $output=["count"=>0,"pageSize"=>10,"pageCount"=>0,"pno"=>0,"products"=>[]];
  if($kw!==null){
    $kws=explode(" ",$kw);
	for($i=0;$i<count($kws);$i++){
	  $kws[$i]="dog_kinds like '%".$kws[$i]."%'";
	}
	$where=" where ".implode(" and ",$kws);
	 $sql="select count(*) from dog_select $where";
	 $result=mysqli_query($conn,$sql);
     $output["count"]=mysqli_fetch_row($result)[0]; 
	 $output["pageCount"]=ceil($output["count"]/$output["pageSize"]);
     $output["pno"]=$pno;
	 $limit=" limit ".$output["pageSize"]*$pno.",".$output["pageSize"];
	 $sql="select * from dog_select $where $limit";
	 $result=mysqli_query($conn,$sql);
     $output["products"]=mysqli_fetch_all($result,1);
  }
  echo json_encode($output);