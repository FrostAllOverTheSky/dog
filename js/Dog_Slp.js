(function(){
	ajax({
		type:"get",
		url:"php/Dog_Slp.php",
		dataType:"json",
		success:function(output){
//			console.log(output);
			var html="";
			var bgcolor=["#ffe7e5","#e5f0ff","#fff9ec"];
			var color=["#df879c","#7695ce","#e19b59"]
//			css=dogType%3==0?color[0]:(dogType%3==1?color[1]:color[2]);
			for(var dogType in output ){
//				console.log(output[dogType]);
				var {tid,tname,etname,img,price_min,price_max}=output[dogType];
				html+=`<li class="breed_cla" style="background:${dogType%3==0?bgcolor[0]:(dogType%3==1?bgcolor[1]:bgcolor[2])};color:${dogType%3==0?color[0]:(dogType%3==1?color[1]:color[2])}">
				<div class="dog_img lf">
					<img src="${img}">
				</div>
				<div class="dog_par lf">
					<div class="dog_name">${tname}（${etname}）</div>
					<p class="dog_price">指导价：${price_min}元-${price_max}元</p>
					<div class="dog_ency">
						<a href="intro.html?tid=${tid}">综述</a>
						<a href="intro.html?tid=${tid}">出售</a>
						<a href="intro.html?tid=${tid}">介绍</a>
						<a href="intro.html?tid=${tid}">挑选</a>
						<a href="intro.html?tid=${tid}">养护</a>
						<a href="intro.html?tid=${tid}">图片</a>
					</div>
				</div>
			</li>`;
			}	

			var ul=document.querySelector("#ggbk>ul.breed_content");
				  ul.innerHTML=html;
				  
			var li=document.createElement("li");
			li.className="breed_cla";
			ul.appendChild(li);
		}
	})
})();