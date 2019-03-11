(function(){
    var divPages=document.getElementById("pages");
	function load(pno=0){
	  var kw=location.search.slice(4);
	  ajax({
		type: "get",
		url: "php/dog_select.php",
		data: {pno,kw},
		dataType: "json",
		success: function(output){
			var html="";
			var {pageCount,products}=output;
		//console.log(products);
			for(product of products){
			var {sid,bImg1,bImg2,bImg3,Vimg,title,year,dog_kinds,location,price,simg_1,simg_2,simg_3}=product;
			var details=document.querySelector("ul.list");
			if(sid<=6){
					html+=`<li>
						<div class="lf_img" ><img src="${bImg1}" alt=""  id="lg_img"></div>
						<div class="rg_detail">
							<div class="detail">
							<span class="Vip"><img src="${Vimg}" alt=""></span>
							<span class="title" ><a href="dog_detail.html?sid=${sid}" style="color:red">${title}</a></span>
							<span class="year">${year}</span>
							<span class="ding">顶</span>
						</div>	
							<div class="dog_kinds">${dog_kinds}</div>
							<div class="location">${location}<span>现购: <b style="color:red;">￥${price}</b>	</span></div>
						<ul>
							<li>
								<img src="${simg_1}" alt="" data-lg="${bImg1}" class="sm">
							</li>
							<li>
								<img src="${simg_2}" alt="" data-lg="${bImg2}" class="sm">
							</li>
							<li>
								 <img src="${simg_3}" alt="" data-lg="${bImg3}" class="sm"> 
							</li>
						</ul>
						</div>
					 </li>`;
			  details.innerHTML=html;  
			}else{
				 html+=`<li>
							<div class="lf_img"><img src="${bImg1}" alt=""  id="lg_img"></div>
							<div class="rg_detail">
								<div class="detail">
									<span class="Vip"><img src="${Vimg}" alt=""></span>
									<span class="title" ><a href="dog_detail.html?sid=${sid}" style="color:red">${title}</a></span>
									<span class="year">${year}</span>
								</div>	
								<div class="dog_kinds">${dog_kinds}</div>
								<div class="location">${location}<span>现购: <b style="color:red;">￥${price}</b>	</span></div>
								<ul>
									<li>
										<img src="${simg_1}" alt="" data-lg="${bImg1}" class="sm" >  
									</li>
									<li>
										<img src="${simg_2}" alt="" data-lg="${bImg2}" class="sm">
									</li>
									<li>
										 <img src="${simg_3}" alt="" data-lg="${bImg3}" class="sm">
									</li>
								</ul>
							</div>
						 </li>`;
				  details.innerHTML=html;
			}
			details.onmouseover=function(e){
			if(e.target.className=="sm"){
				var img=e.target;
			  var lg=img.getAttribute("data-lg");
			  var lf_img=e.target.parentNode.parentNode.parentNode.previousElementSibling.children[0];
			  lf_img.src=lg;
			}
		  
		   html=`<li class="previous">上一页</li>`;
			   for(var i=1;i<=pageCount;i++){
				  if(i-1!=pno){
					html+=`<li>${i}</li>`;
				  }else{
					html+=`<li class="current">${i}</li>`;
				  }
			   }
			  html+=`<li class="next">下一页</li>`;
			  divPages.innerHTML=html;
			   if(pno==0){
						   divPages.children[0].className="previous disabled";
						 }
			   if(pno==pageCount-1){
				 divPages.lastElementChild.className="next disabled";
			   }
			}
			} 
		}
	 })
	}
	load();
//页面跳转
	  window.onload=function(){
		var btnSearch=document.querySelector("div.search_dog>div.img>a>img");
			var txtSearch=document.getElementById("keyWord");
			console.log (txtSearch);
		   btnSearch.onclick=function(e){
			   e.preventDefault();
			   if(txtSearch.value.trim()!==""){
				location.href="goods.html?kw="+txtSearch.value.trim();
			   }
		   }
		//回车键跳转
		  txtSearch.onkeydown=function(e){
		    if(e.keyCode==13){
		  btnSearch.onclick();
		  }
		 }
	}
    //分页切换
	divPages.onclick=function(e){
	  	e.preventDefault();
	  if(e.target.nodeName=="LI"&&e.target.className!=="current"&&e.target.className.indexOf("disabled")==-1){
		 if(e.target.className.indexOf("previous")!==-1){
		   var pno=divPages.querySelector(".current").innerHTML-1;
			   load(pno-1);
		 }else if(e.target.className.indexOf("next")!==-1){
			 var pno=divPages.querySelector(".current").innerHTML-1;
			 load(pno+1);
		 }else{
		   load(e.target.innerHTML-1);
		 }
		  $f=$("div.main_body");
//		  console.log($f);
	      var offsetTop=$f.offset().top;
			  $("html,body").stop(true).animate({
			    scrollTop:offsetTop
			  },1000)
	  }
	}
})();
 