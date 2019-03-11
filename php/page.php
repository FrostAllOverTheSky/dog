<?php
require("init.php");
@$pno=$_REQUEST["pno"];
@$pageSize=$_REQUEST["pageSize"];
$reg="/^\d+$/";
$rs=preg_match($reg,$pno);
if($rs==0){
    die('{"code":-1,"msg":"页码格式不正确"}');
}
$rs=preg_match($reg,$pageSize);
if($rs==0){
    die('{"code":-1,"msg":"页码大小格式不正确"}');
}
$sql="select count(uid) from ygzs_details";
$res=mysqli_query($conn,$sql);
$row=mysqli_fetch_row($res);
$pageCount=ceil($row[0]/$pageSize);
$offset=($pno-1)*$pageSize;
$sql="select img,title,subtitle,uname,readCount,date from ygzs_details limit $offset,$pageSize";
$rs=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($rs,MYSQLI_ASSOC);
$output=["pno"=>$pno,"pageSize"=>$pageSize,"pageCount"=>$pageCount,"data"=>$rows];
echo json_encode($output);
//http://127.0.0.1/PROJECT/yanggouzhishi/php/page.php?pno=1&&pageSize=10