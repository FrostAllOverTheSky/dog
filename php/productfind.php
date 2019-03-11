<?php
header("Content-Type:application/json;charset=utf-8");
  require("init.php");
  $sid=$_REQUEST["sid"];
  $reg='/^[0-9]{1,}$/';
  $rs=preg_match($reg,$sid);
  if($rs==0){
    die("编码格式不正确");
  }
  $sql="select sid,dog_kinds,price from dog_select where sid=$sid ";
  $result=mysqli_query($conn,$sql);
  $row=mysqli_fetch_assoc($result)[0];
 if($row==null){
   echo '{"code":-1,"msg":"查找失败"}';
 }else{
	  $output=["code"=>1,"data"=>$row];
   echo json_encode($output);
 }