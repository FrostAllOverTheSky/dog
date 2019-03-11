<?php
  @$uname=$_REQUEST["uname"];
  if($uname==""||$uname==null){
    die("用户名不能为空");
  }
  @$upwd=$_REQUEST["upwd"];
  if($upwd==""||$upwd==null){
    die("密码不能为空");
  }
  require("init.php");
  $sql="SELECT * FROM  pet_dog WHERE uname='$uname' AND binary upwd='$upwd'";
  $result=mysqli_query($conn,$sql);
  if($result==false){
    echo "查询失败<br>";
	echo "请检查SQL语句: $sql";
  }else{
    $row=mysqli_fetch_assoc($result);
	if($row==null){
	  echo 
	"<script>alert('用户名或密码错误');location.href='../login.html'</script></script>";
	}else{
	 echo "<script>alert('登录成功'),location.href='../index.html'</script>";
	}
  }