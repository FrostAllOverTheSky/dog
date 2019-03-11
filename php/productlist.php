<?php
  require("init.php");
  @$pageSize=$_REQUEST["pageSize"];
  @$pno=$_REQUEST["pno"];
   $reg='/^[0-9]{1,}$/';
   $rs=preg_match($reg,$pno);
   if($rs==0){
     die('{"code":-1,"msg":"页码格式不正确"}');
   }
   $rs=preg_match($reg,$pageSize);
   if($rs==0){
     die('{"code":-1,"msg":"页码大小不正确"}');
   }
  $sql="select count(sid) from dog_select";
  $result=mysqli_query($conn,$sql);
  $count=mysqli_fetch_row($result)[0];
  $pageCount=ceil($count/$pageSize);
   $offset=$pageSize*($pno-1);
  $sql="select sid,dog_kinds,title,location,year,price from dog_select limit $offset,$pageSize";
  $result=mysqli_query($conn,$sql);
  $data=mysqli_fetch_all($result,1);
  $output=["pno"=>$pno,"data"=>$data,"pageCount"=>$pageCount,"pageSize"=>$pageSize];
  echo json_encode($output);