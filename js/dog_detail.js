//引入头部
$(function(){
  $("#header").load("header.html");
});
$(function(){
	sid=location.search.slice(5);  
  $.ajax({
     type:"get",
	 url:"php/show_detail.php",
	 data:{sid},
	 dataType:"json",
	 success:function(output){
	    var html="";
		console.log(output);
		var {product,detail}=output;
		console.log(detail);
		var {zhen,age,simg_1,simg_2,simg_3,bImg1,bImg2,bImg3,count,dog_kinds,limg_1,limg_2,limg_3,title,location,price,prodect_price,province}=product;
		html+=`<div class="preview">
		    <div id="mediumDiv">
			  <img id="mImg" src="${bImg1}">
			  <div id="mask"></div>
			  <div id="superMask"></div>
            </div>
		    <div id="largeDiv" data-lg1="${limg_1}" data-lg2="${limg_2}" data-lg3="${limg_2}" ></div>
		    <h1>
              <ul id="icon_list">
                <li ><img src="${simg_1}" data-md="${bImg1}" data-lg="${limg_1}" class="i1"></li>
                <li ><img src="${simg_2}" data-md="${bImg2}" data-lg="${limg_2}" class="i1"></li>
                <li ><img src="${simg_3}" data-md="${bImg3}" data-lg="${limg_3}" class="i1"></li>
              </ul>
            </h1>
		  </div>
		  <div class="show-detail">
		     <div class="title">${title}</div>
		     <div class="location">${location}</div>
			 <div class="price">淘狗价: <span>￥${price}</span>	</div>
			 <div class="prodect">保障值: 
			   <span>
			      <span class="star"></span>(商家已缴纳保障金 <span style="color:red">${prodect_price}</span> 元)
			   </span>		
			 </div>
             <ul class="details">
			   <li>在售只数<p> <span style="color:red">${count}</span>只</p></li>
			   <li>年龄<p style="color:red">${age}</p></li>
			   <li>品种<p style="color:red">${dog_kinds}</p></li>
			   <li>防疫<p style="color:red">${zhen}</p></li>
			 </ul>
			 <div class="contact">联系人:${location}
			   <span>已交保证金</span> 
			   <span>实名认证</span>
			 </div>
			 <div>地    址：北京</div>
			 <div class="qq">QQ: <a href=""><span></span></a>	</div>
			 <div> 
			   <a>电话咨询</a> 
			   <a>微信咨询</a>
			 </div>
			<div class="detail_img"><img src="img/dog_select/detail1.png"></img></div>
		  </div>`;
			   $detail=$("div.dog_detail");
			   $detail.html(html);
			  var span=document.querySelector("div.current_page>span:last-child");
			 span.innerHTML=title;

			 
			 //放大镜
			 var ulList=
				document.getElementById("icon_list");
			 var mImg=document.getElementById("mImg");
			 var lgDiv=
					document.getElementById("largeDiv");
			  ulList.onmouseover=function(e){
			    if(e.target.className=="i1"){
				  var img=e.target;
				  var lg=img.getAttribute("data-lg");
				  var md=img.getAttribute("data-md");
				  mImg.src=md;
				  lgDiv.style.backgroundImage="url("+lg+")";
				}
	         var mask=document.getElementById("mask");
			var smask=
				document.getElementById("superMask");
			smask.onmouseover=function(){
				mask.style.display="block";
				lgDiv.style.display="block";
			}
			smask.onmouseout=function(){
				mask.style.display="none";
				lgDiv.style.display="none";
			}
			var MSIZE1=300,SMSIZE1=600,
                MSIZE2=225,SMSIZE2=450;
			  smask.onmousemove=function(e){
				var top=e.offsetY-MSIZE2/2;
				var left=e.offsetX-MSIZE1/2;
				if(top<0) top=0; 
				else if(top>SMSIZE2-MSIZE2)
					top=SMSIZE2-MSIZE2;
				if(left<0) left=0; 
				else if(left>SMSIZE1-MSIZE1)
					left=SMSIZE1-MSIZE1;
				mask.style.top=top+"px";
				mask.style.left=left+"px";
				lgDiv.style.backgroundPosition=
					-1.75*left+"px -"+1.75*top+"px";
			}
			  }
			  var html="";
			var{lid, kind, otherName,height,weight,life,sort,address}=detail;
			  html+=`<div class="desc">
			  <ul>
			    <li>基本信息</li>
			    <li><span>品种: </span> ${kind}</li>
			    <li><span>别名: </span> ${otherName}</li>
			    <li><span>身高: </span> ${height}</li>
			    <li><span>体重: </span> ${weight}</li>
			    <li><span>寿命: </span> ${life}</li>
			    <li><span>功能: </span> ${sort}</li>
			    <li><span>产地: </span> ${address}</li>
			  </ul>
			</div>
		     <div class="paw">
			  <ul>
			    <li>详细特征</li>
			    <li>
				  <span>粘人程度:</span>
				  <span><img src="img/dog_select/stars.png" alt=""></span>
				  <span><img src="img/dog_select/stars-o.png" alt=""></span>
				</li>
			    <li>
				  <span>掉毛程度:</span>
				  <span><img src="img/dog_select/stars.png" alt=""></span>
				  <span><img src="img/dog_select/stars-o.png" alt=""></span>
				</li>
                <li>
				  <span>美容频度:</span>
				  <span><img src="img/dog_select/stars.png" alt=""></span>
				  <span><img src="img/dog_select/stars-o.png" alt=""></span>
				</li>
			    <li>
				  <span>运动量度:</span>
				  <span><img src="img/dog_select/stars.png" alt=""></span>
				  <span><img src="img/dog_select/stars-o.png" alt=""></span>
				</li>
				<li>
				  <span>口水程度:</span>
				  <span><img src="img/dog_select/stars.png" alt=""></span>
				  <span><img src="img/dog_select/stars-o.png" alt=""></span>
				</li>
			    <li>
				  <span>耐热程度:</span>
				  <span><img src="img/dog_select/stars.png" alt=""></span>
				  <span><img src="img/dog_select/stars-o.png" alt=""></span>
				</li>
			  </ul>
			 <ul>
			    <li>
				  <span>喜叫程度:</span>
				  <span><img src="img/dog_select/stars.png" alt=""></span>
				  <span><img src="img/dog_select/stars-o.png" alt=""></span>
				</li>
			    <li>
				  <span>体味程度:</span>
				  <span><img src="img/dog_select/stars.png" alt=""></span>
				  <span><img src="img/dog_select/stars-o.png" alt=""></span>
				</li>
                <li>
				  <span>友善程度:</span>
				  <span><img src="img/dog_select/stars.png" alt=""></span>
				  <span><img src="img/dog_select/stars-o.png" alt=""></span>
				</li>
			    <li>
				  <span>可训程度:</span>
				  <span><img src="img/dog_select/stars.png" alt=""></span>
				  <span><img src="img/dog_select/stars-o.png" alt=""></span>
				</li>
				<li>
				  <span>耐寒程度:</span>
				  <span><img src="img/dog_select/stars.png" alt=""></span>
				  <span><img src="img/dog_select/stars-o.png" alt=""></span>
				</li>
			    <li>
				  <span>城市适应:</span>
				  <span><img src="img/dog_select/stars.png" alt=""></span>
				  <span><img src="img/dog_select/stars-o.png" alt=""></span>
				</li>
			 </ul>
			</div>`;
			  $("div.comment>div.bottom").html(html);
	 }
  });
})