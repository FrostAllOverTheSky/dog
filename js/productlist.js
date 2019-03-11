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
//右侧狗狗列表
$(function(){
  function loadProduct(pno,pageSize){
      $.ajax({
	    type:"get",
       url:"php/productlist.php",
	   data:{pageSize,pno},
	   dataType:"json",
	   success:function(res){
		  var html="";
		  var {data,pageCount,pno}=res;
		  for(var d of data ){
		    html+=`<span class="small"><input type="checkbox" class="btns"></span>
		  <span class="sid small " >${d.sid}</span>
		  <span class="dog_kinds ">${d.dog_kinds}</span>
		  <span class="title big ">${d.title}</span>
		  <span class="location middle">${d.location}</span>
		  <span class="year small ">${d.year}</span>
		  <span class="price small ">${d.price}</span>
		 <span class="manipulate middle" >
			 <a href="${d.sid}" class="del_btn">删除</a>
		     <a href="${d.sid}" class="update_btn">更新</a>
		     <a href="${d.sid}" class="detail_btn">详情</a>
		 </span>	
				<hr>`;
		  }
		 $("div.bottom_show").html(html);
		 var pno=parseInt(res.pno);
		 var pageCount=parseInt(res.pageCount);
		 console.log(pageCount);
		 var html="";
		 if(pno-2>0){
		    html+=`<li><a>${pno-2}</a></li>`;
		 }
		 if(pno-1>0){
		   html+=`<li><a>${pno-1}</a></li>`;
		 }
		 html+=`<li class="active"><a>${pno}</a></li>`;
		 if(pno+1<=pageCount){
		    html+=`<li><a>${pno+1}</a></li>`;
		 }
		 if(pno+2<=pageCount){
		    html+=`<li><a>${pno+2}</a></li>`
		 }
		$("ul.pages").html(html);
		},
	   error:function(){
		alert("网络故障");
	    }
	  }); 
  }
  loadProduct(1,10);
  //分页显示功能
  $("ul.pages").on("click","a",function(e){
  e.preventDefault();
  var pno=$(this).html();
  loadProduct(pno,10);
});
//全选和取消全选
 $("#all_checked").click(function(){
	var bool=$(this).prop("checked");
	$("input.btns").prop("checked",bool);
 });
 $("div.bottom_show").on("click","input.btns",function(){
	 var count=0;
	 $(".btns").each(function(index,item){
		 var bool=$(item).prop("checked");
	   if(bool){
	    count++;
	   }
	 })
	if(count==10){
	   $("#all_checked").prop("checked",true);
	 }else{
	    $("#all_checked").prop("checked",false);
	 }
 })
//删除
 $("div.bottom_show").on("click",".del_btn",function(e){
	 e.preventDefault();
   var sid=$(this).attr("href");
   var reg=/^[0-9]{1,}$/;
        if(!reg.test(sid)){
               alert("商品编号格式有误");
               return;
    }
	 var rs=window.confirm("是否删除指定商品");
     if(!rs){
        return;
     }
   $.ajax({
     type:"GET",
	 url:"php/delete.php",
    data:{sid},
	success:function(res){
	  if(res.code>0){
	  alert(res.msg);
	   loadProduct(1,10); 
	  }else{
	    alert(res.msg);
	  } 
	 },
	error:function(){
	   alert("网络故障");
	 }
   });
 
 });
 //修改价格
 $("a.update_btn").click(function(e){
   e.preventDefault();
   var sid=$(this).attr("href");
   $("#update-jumbotron").show();
   $.ajax({
     type:"GET",
	 url:"php/productfind.php",
	 data:{sid},
	 success:function(data){
	 
	 },
	 error:function(){
	   alert("网络故障");
	 }
   })
 })
});


