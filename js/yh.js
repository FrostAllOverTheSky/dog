 $(function(){
	 $("#header").load("header.html");
		   $("#footer").load("footer.html");
		 var start=document.getElementById("start");
		  var stop=document.getElementById("stop");
		  var video=document.getElementById("video");
		  var ad=document.getElementsByClassName("ad")[0]
		  var container=document.getElementsByClassName("container")[0];
		 var  ctrl=document.getElementsByClassName("ctrl")[0];
		 console.log(ctrl);
		  start.onclick=function(){
			video.play();
		  }
		   stop.onclick=function(){
			video.pause();
		  }
		  video.onplay=function(){
			ad.style.display="none";
			ctrl.style.display="none";
		  }
		  video.onpause=function(){
			ad.style.display="block";
			ctrl.style.display="block";
		  }
 })