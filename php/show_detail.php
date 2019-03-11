<?php
 header("Content-Type:application/json;charset=utf-8");
@$sid=$_REQUEST["sid"];
//  $output=["product"=>null,"details"=>null];
  require("init.php");
  $sql="select *,(select count from show_details where lid=sid) as dogs from dog_select inner join show_details on sid=lid  where sid='$sid' ";
  $result=mysqli_query($conn,$sql);
  $product=mysqli_fetch_assoc($result);
  $sql="select lid,kind,otherName,height,weight,life,sort,address from display_details where lid='$sid' ";
  $result=mysqli_query($conn,$sql);
  $detail=mysqli_fetch_assoc($result);
  $output=["product"=>$product,"detail"=>$detail];
  echo json_encode( $output);