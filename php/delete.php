<?php
header("Content-Type:application/json;charset=utf-8");
  require("init.php");
  @$sid=$_REQUEST["sid"];
  $reg='/^[0-9]{1,}$/';
  $rs=preg_match($reg,$sid);
  if($rs==0){
    die('{"code":-1,"msg":"商品编号格式不正确"}');
  }
  $sql="delete from dog_select where sid=$sid";
  $result=mysqli_query($conn,$sql);
  $count=mysqli_affected_rows($conn);
  if($count>0){
    echo '{"code":1,"msg":"商品删除成功"}';
  }else{
    echo '{"code":-1,"msg":"商品删除失败"}';
  }