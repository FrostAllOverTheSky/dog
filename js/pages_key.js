(function(){
	var kw=location.search.slice(4);
	var divPages=document.getElementById("pages");
	var details=document.querySelector("ul.list");
function load(pno=0){
	  ajax({
		type: "get",
		url :"php/kw_page.php",
		data: {kw,pno},
		dataType:"json",
		success: function(output){
			var html="";
		 var {products,pageCount,pageSize}=output;
		 console.log(pageCount);
			 for(var product of products){
				 var {sid,bImg1,Vimg,title,year,dog_kinds,location,price}=product; 
			   html+=` <li>
		<div class="lf_img"><img src="${bImg1}" alt=""></div>
		<div class="rg_detail">
			<div class="detail">
				<span class="Vip"><img src="${Vimg}" alt=""></span>
				<span class="title" ><a href="dog_detail.html?sid=${sid}" style="color:red">${title}</a></span>
				<span class="year">${year}</span>
			</div>	
			<div class="dog_kinds">${dog_kinds}</div>
			<div class="location">${location}<span>现购: <b style="color:red;">￥${price}</b></span></div>
			<div class="show_detail"><a href="">了解详情</a></div>
		</div>
	  </li>`;
			   details.innerHTML=html;  
			 }
		   html=`<li class="previous">上一页</li>`;
		   for(var i=1;i<=pageCount;i++){
			  if(i-1!=pno){
				html+=`<li>${i}</li>`;
			  }else{
				html+=` <li class="current">${i}</li>`;
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
	  
	  })
	}
    load();
	divPages.onclick=function(e){
	  if(e.target.nodeName==="LI"&&e.target.className!=="current"&&e.target.className.indexOf("disabled")==-1){
		 if(e.target.className.indexOf("previous")!==-1){
		   var pno=divPages.querySelector(".current").innerHTML-1;
			   load(pno-1);
		 }else if(e.target.className.indexOf("next")!==-1){
			 var pno=divPages.querySelector(".current").innerHTML-1;
			 load(pno+1);
		 }else{
		   load(e.target.innerHTML-1);
		 }
	  }
	}

})();
