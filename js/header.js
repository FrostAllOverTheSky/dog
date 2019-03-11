
 (function(){
  var spans=document.querySelectorAll("ul.cities-wrap>li>div.cities>span.select_city");
  for(var span of spans){
    span.onclick=function(){
	  var span=this;
//	 alert("疼");
	var a=document.querySelector("div.city_selector>p.city>[data-location=lc]");
	a.innerHTML=span.innerHTML;
	
	}
  }
}
)();

(function(){
  var as=document.querySelectorAll("div.searchCity_wrap>ul.searchCity_hot>li>a");
//  console.log(as);
  for(var a of as){
   a.onclick=function(e){
     e.preventDefault();
	  var a=this;
//     alert("疼");
	var a1=document.querySelector("div.city_selector>p.city>[data-location=lc]");
	a1.innerHTML=a.innerHTML;
	}
  }
}
)();
(function(){
	var firstUl=document.querySelector("div.location1>ul:first-child")
//	console.log(firstUl);
		firstUl.style.display="block";
  var as=document.querySelectorAll("div.searchCity_wrap>div.capital-wrap>span>a");
	for(var a of as){
	  a.onmouseover=function(e){
		  e.preventDefault();
	    var a=this;
      var uls=document.querySelectorAll("div.searchCity_wrap>div.location1>ul.cities-wrap");
	  for(var ul of uls){
	    ul.style.display="none";
	  }
      var i=a.href.lastIndexOf("#");
      var id=a.href.slice(i);
      ul=document.querySelector(id);
	  ul.style.display="block";
	  }
	}
}
)();
