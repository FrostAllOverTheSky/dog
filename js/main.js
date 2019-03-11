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
//下方图

      var c3=document.getElementById("c3");
      var ctx=c3.getContext("2d");
      $(function(){
          $.ajax({
              type:"GET",
              url:"php/sales.php",
              success:function(data){
                  for(var i=0;i<data.length;i++){
                      var w=50;
                      var h=data[i].value;
                      var y=450-h;
                      var x=i*100+90;
                      ctx.fillStyle=rc();
                      ctx.fillRect(x,y,w,h);
                      ctx.fillStyle="#000";
					  ctx.font="24px SiMei";
                     ctx.fillText(data[i].label,x,y-20);
                  }
              },
              error:function(){
                  alert("网络故障，请检查")
              }
              });
          function rc(){
              var r=Math.random()*256;
              var g=Math.random()*256;
              var b=Math.random()*256;
              return `rgb(${r},${g},${b})`;

          }
      })

  

