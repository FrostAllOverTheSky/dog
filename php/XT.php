<?php
  @$pid=$_REQUEST["pid"];
  @$oid=$_REQUEST["oid"];
  require("init.php");
  $sql="select pid,oid from xt where pid='$pid'and oid='$oid' ";
  $result=mysqli_query($conn,$sql);
  $row=mysqli_fetch_row($result);
  if($row==null){
    echo "暂无查询信息";
  }else{
    echo "血统真实";
  }
