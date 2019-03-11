<?php
require("init.php");

@$pageSize=$_REQUEST['pageSize'];//声明行数
//总行数
$sql1="select count(*) from dog_select";
$result1= mysqli_query($conn,$sql1);
$row=mysqli_fetch_row($result1);
$total=$row[0];
//echo "总行数为：$total";
//检查$pageSize
if($pageSize==null || $pageSize<1){
	$pageSize=10;	
}else if($pageSize>$total){
	$pageSize=$total;
}
$pageSize=(Int)$pageSize;
//计算尾页（总页数）
$totalPage=ceil($total/$pageSize);
//echo "总页数：$totalPage";

//当前页默认为1（检查currentPage）
@$currentPage=$_REQUEST['currentPage'];
if($currentPage == null || $currentPage<1){//为空时默认第一页
	$currentPage =1;
}else if($currentPage > $totalPage){//当输入页数大于总页数时默认等于尾页
	$currentPage = $totalPage;
}

//计算开始页码
@$start=($currentPage-1)*$pageSize;

//上一页
$prePage=1;
if($currentPage>1){
	$prePage=$currentPage-1;
}
$prePage=(int)$prePage;
//下一页
$nextPage=$totalPage;
if($currentPage<$totalPage){
	$nextPage=$currentPage+1;
}
$nextPage=(int)$nextPage;
//分页
$sql="select * from dog_select limit $start,$pageSize";
$result= mysqli_query($conn,$sql);
$array=mysqli_fetch_all($result,MYSQLI_ASSOC);

$pageInfo="{\"firstPage\":1,\"prePage\":$prePage,\"nextPage\":$nextPage,\"totalPage\":$totalPage,\"pageSize\":$pageSize}";
Array_push($array,$pageInfo);

//echo "上一页：$prePage";
//echo "下一页：$nextPage";
//echo "尾页：$totalPage";
//最终输出数据
echo json_encode($array);


?>