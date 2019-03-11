(function(){
	ajax({
		type:"get",
		url:"php/sd.php",
		dataType:"json",
		success:function(content){
//			console.log(content);
			var html="";
			content.forEach(function(d,i){
				var {did,title,subtitle,d_name,read_num,show_date,img_dog}=d;
				if(i<10){
					html+=`<li>
						 <img src="${img_dog}">
						 <div id="three">
							<p class="t1">${title}</p>
							<p class="t2">${subtitle}</p>
							<p class="t3">
								<span>${d_name}</span>
								<span>${read_num}</span>
								<span>${show_date}</span>
							</p>
						 </div>
						</li>`;
				}
			})
				document.querySelector("#show-list").innerHTML=html;
		}
	})



})()

