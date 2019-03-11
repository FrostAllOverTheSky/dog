(function(){
	DOMContentLoaded=(setInterval(function(){
		var $in=$('#min_banner>img.in');
		if($in.next().length!=0)
			$in.removeClass('in').next().addClass('in');
		else 
			$in.removeClass('in').parent().children(':first-child').addClass('in');
	},3000));
	$(function(){
	var tid=parseInt(location.search.slice(5))-1;
	$.ajax({
		type:"get",
		url:"php/Dog_Slp.php",
		dataType:"json",
		success:function(data){
//狗狗的12个肢体介绍************************************************************************************
		var arr=[
			data[tid].tname+'并非是一个单独的犬种，是贵宾犬的一种美容形态， 其特点为身体结构方正，短嘴，短腿，无体味，不掉毛，是现在流行 的家庭伴侣犬的一种。',
			'毛发颜色是多变的，有白色、灰色、棕红色、香槟色、黑色等，小的时候毛色发浅，长大以后毛色跟狗狗耳朵的颜色一致，在胸前的颜色就较浅，在美国有不少繁殖者会用不同颜色的贵宾来繁衍不同色调的花贵宾狗狗。',
			'常见的泰迪有白色、黑色、棕红色、灰色、香槟色、咖啡色、茶色，还有是杂色的。',
			'小而圆，有轻微突出。鼻梁、颊骨和肌肉平滑，从枕骨到鼻梁的长度等于口鼻的长度。',
			'乌黑，通常形状为椭圆形，眼神机灵，成为聪慧表情的重点。眼睛主要缺陷：眼睛圆、突出，太大或颜色太浅。',
			'下垂的耳朵紧贴头部，耳根位置在眼睛水平线上或者低于眼睛的水平线，耳廓很长，很宽，表面上有浓密的毛覆盖。但是，耳朵不能过分的长。绝对不能长于面颊。',
			'长、直且纤细，唇部不下垂，眼部下方稍凹陷，下颚大小适中，轮廓明显，不尖细，不上翘。主要缺陷：下颚不明显。',
			'尾直，尾根位置高，向上翘起，通常断尾。主要缺点：尾根位置低，尾卷曲或翘起于背部上方。',
			'躯干胸部宽阔舒展，富有弹性的肋骨。',
			'颈部，背线和躯干：颈强壮，颈长可以使头部高高抬起。喉部皮肤紧。肩部强壮，肌肉丰满。主要缺点：颈部似母羊。背线起始于肩胛最高点终止于尾根部，水平，既不倾斜也不拱起，肩部后可轻微凹陷。',
			'强壮，肩部肌肉丰满。肩胛骨向后伸展，长度约等于上腕的长度。主要缺点：陡峭的肩部。',
			'后躯的角度与前躯协调。从后面看，两后肢直，相互平行。膝关节屈曲，肌肉丰厚。大腿和下腿的长度几乎相等。后脚跟短，与地面垂直。站立时，后脚尖在臀部后端的稍后方。主要缺点：牛样的跗关节。'
		];
		var $div=$('div.breed_bw_js1');
		$("#breed>ul.breed_bw").on("mouseenter","li",function(){	
			var $lis=$(this);
			var $i=$lis.index();
			
			function enter(jl,yc){
				$div.show().css("bottom",jl).children(":last-child()").html(arr[$i]);
				$div.children('img').attr('src',`img/intro/${$i+1}.jpg`);
			}
			if($i>5){
				enter(-123);
			}else{
				enter(-89);
			}
		})
		.on("mouseleave","li",function(){
			$div.hide();
		})
//动态获取狗狗的名称并添加到元素内*******************************************************************************
			var {tname,etname,price_min,price_max}=data[tid];
			var $ggbk_nav=$(".ggbk_nav");
			var html=`<div class="ggbk_dz clear">淘狗网&nbsp;&nbsp;&gt;&nbsp;&nbsp;狗狗百科&nbsp;&nbsp;&gt;&nbsp;&nbsp;${tname}介绍</div>`;
			$ggbk_nav.after.html;
			html+=`<a href="">${tname}介绍</a>
			<a href="">${tname}综述</a>
			<a href="">${tname}价格</a>
			<a href="">${tname}图片</a>
			<a href="">${tname}养护</a>
			<a href="">${tname}挑选</a>`;
			$ggbk_nav.append(html);
			var $breed=$("#breed");
			var html=`<h1 class="breed_dogname">${tname}（Teddy Dog）</h1>
				<span>${tname} 只是贵宾犬的一种美容方式，受到了大家的喜爱，久而久之，大家就把
					    修着这种造型的贵宾犬统称为泰迪。
				</span>
				<h5><span>${tname}</span>基本资料：</h5>`;
			$breed.prepend(html);
			var $breed_js=$(".breed_js");
			var html=`<td>智商：</td>
						<td>第2名</td>
						<td>体型：</td>
						<td>小型犬</td>
						<td>价格：</td>
						<td>${price_min}-${price_max}</td>`;
			$breed_js.children(["table.breed_js li:nth-child(2)"]).append(html);
			var $floors=$(".floor");
			var html=`<span>${tname}</span>`;	
			$floors.each(function(i,el){
				var $el=$(el);
				$el.prepend(html);
			});	
			var html=`<p>${tname}其实就是贵宾犬的一种，据说它是法国品种。不过它也是具有自己独特的特点的，这个犬种十分的可爱，饲养的人们也是比较多的。因此它也非常的受到大家的欢迎。泰迪犬不但特点非常的多，而且优点也不少。由于它的优秀特点，使它也成为了世界上饲养数量最多的小型犬，遍布世界各地。即使是我们国家，仍然有很多的家庭在饲养着它们。</p>`;
			$("#tel1").next().before(html);
			var html=`<span>【${tname}纯种鉴定步骤】</span><br><br>

1、纯种${tname}它们的眼睛、眼线、鼻子、嘴巴都是纯黑色的，不带有杂色。然后毛色要统一有光泽，买的时候买毛量多的，红棕色越浓越深就越好，另外鼻子要小点，眼睛杏仁眼但不要太大，鼻子越短的长大体型越小，买的时候能看狗狗父母的记得一定要看父母，另外建议买3个月以上的，越小的抵抗力越差越容易夭折。<br><br>

2、${tname}的体型不大，超过8斤的就可能不纯了，当然，有的买家喜欢大号的熊仔，但原则上也不应该超过38公分（迷你型${tname}的最高标准肩高），否则您的${tname}看上去就会像熊，而不是熊仔（更别说要留这么长的毛会造成多大困扰了）。<br><br>

3、纯种的${tname}，毛量足，卷曲度好，一般我们买狗时都会要求毛量好，“${tname}”尤其如此，而且毛毛以小卷、类似羊糕绒似的卷法为佳（选购小狗时可以观察小狗耳朵末的毛，越卷越好）；您总不希望将来您的熊仔摸上去不是毛茸茸的，而是像只迷你阿富汗吧。<br><br>

4、纯种的${tname}嘴比较短，参考${tname}来对照，但做为理想的“${tname}”，嘴短些、小巧些（不宜过宽）为佳；这样将来留毛后会看上去像一个小球，当然已经购买的狗狗、稍长的嘴也可以通过修毛来修饰，这个我们将在下面说到。<br><br>

5、颜色以深色为佳，红色、巧克力色固然很好，但因为目前价格偏高，黑色或杏色也是不错的选择，这其实更多牵涉的个人喜好；但需要提醒的是，白色的${tname}留长嘴上的毛会更像比雄，而不是熊仔（尤其是现在市面上的“矮脚${tname}”――即体型明显偏向长方型的${tname}，作为宠物级的${tname}，稍稍偏向长方形体型无太大关系）。`;
			$("li.intro7>div>p").prepend(html);
		}
	});
	})
//楼层滚动点亮效果************************************************************************************************
	let $lift=$("li.intro1>div.lift_list");
	let $tel1=$("#tel1");
	let $floors=$(".floor");
	$(window).scroll(function(){
		let scrollTop=$(window).scrollTop();
		if($tel1.offset().top<scrollTop+innerHeight/2.5)
			$lift.css("opacity",1);
		else
			$lift.css("opacity",0);
		$floors.each(function(i,f){
			let $f=$(f)
			if($f.offset().top<scrollTop+innerHeight/2.5){
				$lift.children(":eq("+i+")").addClass("breed_floors")
											.siblings()
											.removeClass("breed_floors")
			}
		})
	});
//楼层点击跳转**********************************************************
	$lift.on("click","a",function(e){
		e.preventDefault();
		let $a=$(this);
		let i=$a.index();
		let $fi=$($floors[i]);
		let offsetTop=$fi.offset().top;
		$("html,body").stop(true).animate({
			scrollTop:offsetTop-350
		},500)
	});
//点击换页效果*******************************************************
	$("ul.breed_title").on("click","li",function(){
		let $li=$(this);
		let i=$li.index();
		let $breed_intro=$("ul.breed_intro");
//		let $top=parseInt($li.children(":first-child").css("backgroundPositionY"));
//		let $left=parseInt($li.children(":first-child").css("backgroundPositionX"));
//		if($li.siblings().is("style")){
//			$li.siblings().remover("backgroundPositionY").parent().css("backgroundPositionX",$left).css("backgroundPositionY",$top+24);			
//		}
		$li.addClass("ocin").children(":first-child")//.css("backgroundPositionX",$left)
		   //.css("backgroundPositionY",$top+24)
		   .parent().siblings().removeClass("ocin");
			($breed_intro.children("li:eq("+i+")")).show().siblings().hide();
	})
})();
