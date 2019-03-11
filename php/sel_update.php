<?php
  @$uid=$_REQUEST["uid"];
  require("init.php");
  $sql="SELECT * FROM pet_dog WHERE uid='$uid'";
  $result=mysqli_query($conn,$sql);
  $row=mysqli_fetch_assoc($result);
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>修改页面</title>
	<link rel="stylesheet" href="../css/base.css">
	<link rel="stylesheet" href="../css/header.css">
	<link rel="stylesheet" href="../css/footer.css">
	<link rel="stylesheet" href="../css/sel_update.css">
</head>
<body>
	<form action="update.php" method="post">
	<p>用户名: <input type="text" value="<?php echo $row['uname']?>" name="uname"></p>
	<p>密码: <input type="password" value="<?php echo $row['upwd'] ?>" name="upwd"></p>
	<p>邮箱: <input type="email" value="<?php echo $row['email'] ?>" name="email"></p>
	<p>电话: <input type="text" value="<?php echo $row['phone'] ?>" name="phone"></p>
	<p>性别: <select name="gender" id="">
	  <option value="1" <?php if($row['gender']==1){echo "selected";}?> style="font-size:18px">男</option>
	  <option value="0"<?php if($row['gender']==0){echo "selected";}?> style="font-size:18px">女</option>
	</select></p>
	<p><input type="hidden" value="<?php echo $row['uid']; ?>" name="uid"></p>
	<p><input type="submit" value="修改" style="font-size:20px"></p>
	</form>
</body>
</html>