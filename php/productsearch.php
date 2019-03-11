<?php
  header("Content-Type:application/json;charset=utf-8");
  require("init.php");
  @$low=$_REQUEST["low"];
  $reg='/^[0-9]{1,}(\.[0-9]{1,2})?$/';
  $rs=preg_match($reg,$low);
  if($rs==0){
    die('{"code":-1,"msg":"最低价格式不正确"}');
  }
  @$high=$_REQUEST["high"];
  $rs=preg_match($reg,$high);
  if($rs==0){
    die('{"code":-1,"msg":"最高价格式不正确"}');
  }
  @$key=$_REQUEST["key"];
  @$pno=$_REQUEST["pno"];
  $reg='/^[0-9]{1,}$/';
  $rs=preg_match($reg,$pno);
  if($rs==0){
    die('{"code":-1,"msg":"当前页码格式不正确"}');
  }
  @$pageSize=$_REQUEST["pageSize"];
  $reg='/^[0-9]{1,}$/';
  $rs=preg_match($reg,$pageSize);
  if($rs==0){
    die('{"code":-1,"msg":"页码格式不正确"}');
  }
   $offset=$pageSize*($pno-1);
  $sql="select count(sid) from dog_select limit $offset,$pageSize";
  $result=mysqli_query($conn,$sql);
  $row=mysqli_fetch_row($result)[0];
  $pageCount=ceil($row/$pageSize);
  $sql="select sid,title,location,dog_kinds,year,price from dog_select where price>='$low' and price<='$high' and dog_kinds like '%$key%' limit $offset,$pageSize";
  $result=mysqli_query($conn,$sql);
  $rows=mysqli_fetch_all($result,1);
  if($rows!==null){
    $output=["pageCount"=>$pageCount,"data"=>$rows,"pno"=>$pno,"pageSize"=>$pageSize];
	echo json_encode($output);
  }else{
    echo '{"code":-1,"msg":"查找失败"}';
  }