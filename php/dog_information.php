<?php
   require("init.php");
  $sql="SELECT * FROM dog_information";
  $result=mysqli_query($conn,$sql);
  $dogs=mysqli_fetch_all($result,1);
  echo json_encode($dogs);