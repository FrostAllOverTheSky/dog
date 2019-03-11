<?php
 @$uname=$_REQUEST["uname"];
  if($uname==""||$uname==null){
    die("用户名不能为空");
  }
  @$upwd=$_REQUEST["upwd"];
  if($upwd==""||$upwd==null){
    die("密码不能为空");
  }
  @$user_name=$_REQUEST["user_name"];
  if($user_name==""||$user_name==null){
    die("真实姓名不能为空");
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
    die("性别不能为空");
  }
  require("init.php");
  $sql="INSERT INTO pet_dog VALUES(NULL,'$uname','$upwd','$email','$phone',NULL,'$user_name','$gender')";
  $result=mysqli_query($conn,$sql);
  if($result==false){
    echo "注册失败<br>";
	echo "请检查SQL语句: $sql";
  }else{
	echo "<script>alert('注册成功');location.href='../login.html'</script>";
}