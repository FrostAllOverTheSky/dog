$(function(){
  $("#header>div.sigout>a").click(function(e){
       e.preventDefault();
    $.ajax({
	  type:"GET",
	  url:"php/signout.php",
	  success:function(e){ 
	    location.href="adminlogin.html";
	  }
	})
  })
 //超级管理员
  $("#header>div.super_father").mouseover(function(){
    $("#header>div.super_father>ul").addClass("open");
  });
  $("#header>div.super_father").mouseout(function(){
    $("#header>div.super_father>ul").removeClass("open");
  });
  $("#footer").load("footer.html");
})
//主体左侧列表
$("div.main_body>div.list>div+ul>li").on("click","span",function(){
    var span=this;
	 if(span.className=="open"){
	   span.className="";
	 }else{
	   var spanother=document.querySelector("div.main_body>div.list>div+ul>li>span.open");
	   if(spanother!==null){
	     spanother.className="";
	   }
	   span.className="open";
	 }
});

$(function(){
 $("#btn_submit").click(function(e){
	 e.preventDefault();
   var val=$("#form1").serialize();
  $.ajax({
     type:"POST",
	 url:"php/productadd.php",
	 data:val,
	 success:function(res){
	   if(res.code>0){
	     alert(res.msg);
	   }else{
     alert(res.msg);
	   }
	 },
	error:function(){
	   alert("网络故障");
	 }

  })
 })
})