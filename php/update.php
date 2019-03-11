<?php
   $uid=$_REQUEST["uid"];
   @$uname=$_REQUEST["uname"];
  if($uname==""||$uname==null){
    die("用户名不能为空");
  }
  @$upwd=$_REQUEST["upwd"];
  if($upwd==""||$upwd==null){
    die("密码不能为空");
  }
  @$email=$_REQUEST["email"];
   if($email==""||$email==null){
    die("邮箱不能为空");
  }
  @$phone=$_REQUEST["phone"];
   if($phone==""||$phone==null){
    die("电话不能为空");
  }
   @$gender=$_REQUEST["gender"];
   if($gender==""||$gender==null){
    die("电话不能为空");
  }
  require("init.php");
  $sql="UPDATE pet_dog SET uname='$uname',upwd='$upwd',email='$email',phone='$phone',gender='$gender' WHERE uid='$uid'";
  $result=mysqli_query($conn,$sql);
  if($result==false){
    echo "修改失败<br>";
	echo "请检查sql语句: $sql";
  }else{
    echo "修改成功";
  }