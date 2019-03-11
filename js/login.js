$(function(){
	$("input:button").click(function(){
		$.ajax({
			type:"get",
			url:"php/signin.php",
			data:$("#login").serialize(),
			success:function(res){
				if(res=="false"){
					alert("用户名或密码错误!");
				}
				else{
					var $code=$("#data_code");
		            var value=$("#yzm").val().toUpperCase();
		            var code_content=$code.html().toUpperCase();
					if(value!==""&&value==code_content){
						alert("登录成功!");
						var back=location.search.slice(6);
						location.href=back;
					}else if(value==""){
					  alert("请输入验证码");
					}
				}
			}
		})
	})		
 $(function(){
  $("#footer").load("footer.html");
});
})
