$(function(){
	$.get(
		"php/desktop.php",
		function(res){
			var html="";
			res.forEach((p,i)=>{
				var{img,headline,tilte,cdu,dates}=p;
				html+=`<div class="titles">
				<div>
					<img src="${img}" alt="404">
				</div>
				<div>
					<div>
						<a href="">${headline}</a>
					</div>
					<div>
						${tilte}
					</div>
					<div>
						<span>阅读${cdu}</span>
						<span>${dates}</span>	
					</div>
				</div>
			</div>`;
			});
			var $inner=$(html);
			$("#bodys>div:nth-child(1)").append($inner);
		},
		"json"
	)
});