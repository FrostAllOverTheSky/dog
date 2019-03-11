//banner里的搜索框
(function(){
  var firstDiv=document.querySelector("#container>div:first-child");
  firstDiv.style.zIndex=10;
//  var as=document.querySelectorAll("#search>#tab>li>[data-toggle=tabs]");
//  for(var a of as){
    tab.onclick=function(e){
		 e.preventDefault();
	    if(e.target.nodeName=="A"){
		  var a=e.target;
		  var divs=document.querySelectorAll("#search>#tab>li>div");
		  for(var div of divs){
			div.style.visibility="hidden";
		  }
		  var div=a.nextElementSibling;
		  div.style.visibility="visible";
		  var divs=document.querySelectorAll("#container>div");
		  for(var div of divs){
		  div.style.zIndex="";
		  }
		  var i=a.href.lastIndexOf("#"); 
		  var id=a.href.slice(i);
		  var div=document.querySelector(id);
		  div.style.zIndex=10;
//	}
	    }
  }
}
)();
//搜索框跳转
window.onload=function(){
  var btnSearch=document.querySelector("#container>div>a>img");
  var txtSearch=document.querySelector("#container>div>input");
  btnSearch.onclick=function(){
	  if(txtSearch.value.trim()!==""){
		location.href="goods.html?kw="+txtSearch.value.trim();
	  }
  }
//  回车键跳转
  txtSearch.onkeydown=function(e){
    if(e.keyCode===13){
     btnSearch.onclick();
  }
}
//多个关键字
//if(location.search.indexOf("kw=")!==""){
// var kw=decodeURI(location.search.slice(4));
// txtSearch.value=kw;
//}
}
//banner
function task(){
     var a=document.querySelector("div.slider>a.show");
	  a.className="";
//	console.log(a.parentNode.firstElementChild)
	var next_img=a.nextElementSibling;
	if(next_img!==null){
		next_img.className="show";
	}else{
	   a.parentNode.firstElementChild.className="show";
	}
  }
 var timer=setInterval(task,3000);
//首页数据库
(function(){
    var ul=document.querySelector("div.section3_greatDog>ul.list_dog");
	ajax({
		 tyle:"get",
		 url:"php/yougou.php",
		 dataType:"json",
		 success:function(dgs){
			var html="";
			for( dg of dgs){
				var {img1,img2,title,price,location,img_brand,img_san,store_lc}=dg;
				html+=` <li>
						   <div class="big_img">
							<a href="">
							 <img src="${img1}" alt="">
							 <img src="${img2}" alt="">
							</a>
							</div>
						   <div class="dog_title">名称:${title}</div>
						   <div class="information">
							 <span class="price"><b>价格:</b><b>${price}元/只</b></span>
							 <span class="location">地址:${location}</span>
						  </div>
						  <div class="imgs">
							<img src="${img_brand}" alt="">
						  </div>
						  <div class="store"><a href=""><img src="${img_san}" alt="">${store_lc}</a></div>
						 </li>`
		    }
			  ul.innerHTML=html;
		 }
	})
}
)();
(function(){
        var firstDiv=document.querySelector("div.section4_msgs>#focus>div:first-child");
        firstDiv.style.zIndex=10;
//        var as=document.querySelectorAll("ul.tabs>li>[data-toggle=tab]");
//        for(var a of as){
	    var tab=document.getElementsByClassName("tabs")[0];
            tab.onclick=function(e){
                e.preventDefault();
				if(e.target.nodeName=="A"){
					var a=e.target;
					// alert("疼")
					var divs=document.querySelectorAll("div.section4_msgs>#focus>div");
					for(var div of divs){
						div.style.zIndex="";
					}
					var i=a.href.lastIndexOf("#");
					var id=a.href.slice(i);
					var div=document.querySelector(id);
					div.style.zIndex=10;
            }
//        }
			}
    }
)();
(function(){
  var div_left=document.querySelector("div.section4_msgs>#focus>#d1>div.left");
  ajax({
	  type:"get",
	  url:"php/dog_information.php",
	  dataType:"json",
	  success:function(informs){
		    var html="";
			for(var inform of informs){
				var {title,time,detail}=inform;
			    html+=`<div>
					  <a href="">
							  <h3>${title}<span>${time}</span></h3>
							  <p>${detail}</p>
					  </a>
					  </div>`
			}
		    div_left.innerHTML=html;
      }
  })
}	
)();
(function information(){
  var div_left=document.querySelector("div.section4_msgs>#focus>#d2>div.left");
  ajax({
	   type:"get",
	   url: "php/dog_trends.php",
	   dataType:"json",
	   success:function(informs){
		    var html="";
			for(var inform of informs){
				var {title,time,detail}=inform;
			  html+=`<div>
						  <a href="">
							  <h3>${title}<span>${time}</span></h3>
							  <p>${detail}</p>
						  </a>
					  </div>`
			}
		 div_left.innerHTML=html;
	}
  })
}	
)();
(function information(){
  var div_left=document.querySelector("div.section4_msgs>#focus>#d3>div.left");
  ajax({
	    type:"get",
		url:"php/dog_new.php",
		dataType:"json",
		success:function(informs){
		    var html="";
			for(var inform of informs){
			  html+=`<div>
						  <a href="">
							  <h3>${inform.title}<span>${inform.time}</span> </h3>
							  <p> ${inform.detail}</p>
						  </a>
					  </div>`
			}
		 div_left.innerHTML=html;
		 }
	})
}	
)();
(function information(){
  var div_left=document.querySelector("div.section4_msgs>#focus>#d5>div.left");
  ajax({
	   type:"get",
	   url:"php/dog_skill.php",
	   dataType:"json",
	   success:function(informs){
		    var html="";
			for(var inform of informs){
			  html+=`<div>
						  <a href="">
							  <h3>${inform.title} <span> ${inform.time} </span> </h3>
							  <p> ${inform.detail}</p>
						  </a>
					  </div>`
			}
		 div_left.innerHTML=html;
		 }
  })
}	
)();
(function information(){
  var div_left=document.querySelector("div.section4_msgs>#focus>#d4>div.left");
  ajax({
	  type:"get",
	  url:"php/dog_parti.php",
	  dataType:"json",
	  success:function(informs){
		    var html="";
			for(var inform of informs){
			  html+=`<div>
						  <a href="">
							  <h3>${inform.title} <span> ${inform.time} </span> </h3>
							  <p> ${inform.detail}</p>
						  </a>
					  </div>`
			}
		 div_left.innerHTML=html;
	  }
	   })
   }
)();
//banner取消轮播
var slider=document.getElementsByClassName("slider")[0];
// console.log(slider);
 slider.onmouseover=function(){
   clearInterval(timer);
 }
 slider.onmouseout=function(){
   timer=setInterval(task,3000);
 }
 var floors=document.querySelectorAll("[data-toggle=floor]")
 //楼层滚动
   $lift=$("div.floor_list");
   $f1=$("ul.section1_test");
   $floors=$(floors);
   $(window).scroll(function(){
		var scrollTop=$(window).scrollTop();
		if($f1.offset().top<scrollTop+innerHeight/2){
		  $lift.show();
		}else{
			$lift.hide();
		}
		$floors.each(function(i,f){
		  var $f=$(this);
		  if($f.offset().top<scrollTop+innerHeight/2){
			$lift.children().children(":eq("+i+")").addClass("active")
				 .siblings().removeClass("active");
		  }
		})
   })
   $lift.on("click","li",function(e){
			 e.preventDefault();
			  var $li=$(this);
			  var i=$li.index();
			  var $fi=$($floors[i]);
			  var offsetTop=$fi.offset().top;
			  $("html,body").stop(true).animate({
			    scrollTop:offsetTop
			  },500)
			})

