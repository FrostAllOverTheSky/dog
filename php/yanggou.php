<?php
require("init.php");
$sql="select * from ygzs_details";
$result=mysqli_query($conn,$sql);
$lis=mysqli_fetch_all($result,1);
echo json_encode($lis);