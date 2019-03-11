$(function(){
	 $("p.check>input").click(function(){ 
	var pid=document.getElementById("pid").value;
    var oid=document.getElementById("oid").value;
    $.ajax({
	  type:"get",
	  url:"php/XT.php",
	  data:{pid,oid},
	  success:function(res){
	     alert(res);
	  }
	})
  })
    $("#header").load("header.html");
    $("#footer").load("footer.html");
});