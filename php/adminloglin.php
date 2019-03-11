<?php
 header("Content-Type:application/json;charset=utf-8");
   require("init.php");
   @$uname=$_REQUEST["uname"];
   $reg='/^[0-9A-Za-z_]{3,12}$/';
   $rs=preg_match($reg,$uname);
   if($rs==0){
     die('{"code":-1,"msg":"用户名格式不正确,请重输"}');
   }
   @$upwd=$_REQUEST["upwd"];
   $reg='/^[0-9A-Za-z._]{6,}$/';
   $rsUpwd=preg_match($reg,$upwd);
   if($rsUpwd==0){
     die('{"code":-1,"msg":"密码格式不正确,请重试"}');
   }
   $sql="select count(uid) from adminlogin where uname='$uname' and upwd=md5('$upwd') ";
   $result=mysqli_query($conn,$sql);
   $num=mysqli_fetch_row($result);
   if($num[0]==1){
	  echo '{"code":1,"msg":"登录成功"}';
   }else{
	 echo '{"code":-1,"msg":"用户名或密码错误"}';
   }
  
