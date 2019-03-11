<?php
$output=[];
require_once("init.php");
$sql="SELECT * FROM dog_type"; 
$result=mysqli_query($conn,$sql);
$output=mysqli_fetch_all($result,1);
echo json_encode($output);