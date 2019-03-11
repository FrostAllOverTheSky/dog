<?php
  header("Content-Type:application/json;charset=utf-8");
  require("init.php");
  @$bImg1=$_REQUEST["bImg1"];
  @$bImg2=$_REQUEST["bImg2"];
  @$bImg3=$_REQUEST["bImg3"];
  @$title=$_REQUEST["title"];
  @$year=$_REQUEST["year"];
  @$dog_kinds=$_REQUEST["dog_kinds"];
  @$location=$_REQUEST["location"];
  @$price=$_REQUEST["price"];
  @$simg_1=$_REQUEST["simg_1"];
  @$simg_2=$_REQUEST["simg_2"];
  @$simg_3=$_REQUEST["simg_3"];
  $sql="INSERT INTO `dog_select`(`sid`, `bImg1`, `bImg2`, `bImg3`, `Vimg`, `title`, `year`, `dog_kinds`, `location`, `price`, `simg_1`, `simg_2`, `simg_3`) VALUES (null,'$bImg1','$bImg2','$bImg3','img/dog_select/v1.jpg','$title','$year','$dog_kinds','$location','$price','$simg_1','$simg_2','$simg_3')";
  $result=mysqli_query($conn,$sql);
  $row=mysqli_affected_rows($conn);
  if($row>0){
    echo '{"code":1,"msg":"添加商品成功"}';
  }else{
    echo '{"code":-1,"msg":"添加商品失败"}';
  }