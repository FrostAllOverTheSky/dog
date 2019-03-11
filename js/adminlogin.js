$(function(){
  $("#footer").load("footer.html");
  $("#btn").click(function(e){
	  e.preventDefault();
     var uname=$("#uname").val();
	 var reg=/^[0-9a-zA-Z_]{3,12}$/;
	 if(!(reg.test(uname))){
	   alert("用户名格式不正确");
	   	   return;
	 }
     var upwd=$("#upwd").val();
	 var reg=/^[0-9a-zA-Z._]{6,}$/;
	 if(!(reg.test(upwd))){
	   alert("密码格式不正确");
	   return;
	 }
	 console.log(4);
     var yzm=$("#yzm").val();
	 var code_content=$("#data_code").html();
	$.ajax({
    type:"GET",
	url:"php/adminlogin.php",
	data:{uname,upwd},
	dataType:"json",
	success:function(res){
	  if(res.code==1){
	      if(yzm!==""&&yzm.toUpperCase()==code_content.toUpperCase()){
	          alert(res.msg); 
              location.href="main.html?";
			  }else{
	          alert("请输入验证码");
	   }
	  }else{
	    alert(res.msg);
	  } 
	
	},
   error:function(){
	  alert("网络故障，请重试");
	}
  });
  });
  

});