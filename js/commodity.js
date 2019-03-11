$(function(){
	$.get(
		"php/commodity.php",
		function(res){
			var html="";
			res.forEach((p,i)=>{
				var{img,price,tilte,origin,sales,evaluate}=p;
				html+=`<li>
					<p>
					<a href="#" title="商城担保纯种小体大眼睛无泪痕法国卷毛比熊犬">
					<img src="${img}" width="266" height="167" alt="商城担保纯种小体大眼睛无泪痕法国卷毛比熊犬"></a>
					</p>
					<p class="title">
					<a href="#" title="商城担保纯种小体大眼睛无泪痕法国卷毛比熊犬">${tilte}</a>
					</p>
					<p class="price">¥${price}</p>
					<p class="d">
					<img src="img/commodity/ind_03.jpg" title="担保交易">
					<img src="img/commodity/ind_05.jpg" title="实名认证">
					<img src="img/commodity/ind_07.jpg" title="纯种保证">
					<img src="img/commodity/ind_09.jpg" title="健康保障">
					</p>
					<p class="storename">
					<a href="img/2570.html" title="${origin}">
					北京宠优名犬繁殖基地</a>
					（销量<font class="red">${sales}</font>|评价<font class="orange">${evaluate}</font>）
					</p>
				</li>`;
			});
			var $inner=$(html);
			$("#table").append($inner);
		},
		"json"
	)
});