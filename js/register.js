function $(id){
	return document.getElementById(id);
}

(function(){
  var txt_name=document.getElementsByName("uname")[0];
  var txt_upwd=document.getElementsByName("upwd")[0];
  var txt_cpwd=document.getElementsByName("cpwd")[0];
  
  txt_name.onfocus=txt_upwd.onfocus=function(){
    var txt=this;
	txt.className="txt_focus";
    var span=txt.parentNode.lastElementChild;
	span.className="";
  }
txt_name.onblur=function(){
  vali(this,/^\w{1,10}$/);
}
 function vali(txt,reg){
  txt.className="";
   var span=txt.parentNode.lastElementChild;
  if(reg.test(txt.value)){
    span.className="vali_success";
	return true;
  }else{
    span.className="vali_fail";
	return false;
  }
}
 txt_upwd.onblur=function(){
    vali(this,/^\d{6}$/);
  }
  var form=document.forms[0];
 var btnSubmit=form.elements[form.length-1];
  btnSubmit.onclick=function(){
	  var btnSubmit=this;
     if(!vali(txt_name,/^\w{1,10}$/)){
	   txt_name.focus();
	 }else if(!vali(txt_upwd,/^\d{6}$/)){
	   txt_upwd.focus();
	 }else{
	   form.submit();
	 }
  }
txt_cpwd.onblur=function(){
	 var txt=this;
	 var span=txt.parentNode.lastElementChild;
	 span.style.display="block";
     if(vali(txt_upwd,/^\d{6}$/)){
		  if(txt_upwd.value!==txt.value){
			 span.innerHTML="两次密码不一致";
			 span.className="vali_fail";
		  }else{
			  span.innerHTML="两次密码一致";
			  span.className="vali_success";
		  }
	 }else{
	   span.innerHTML="密码格式错误";
	   span.className="vali_fail";
	 }
}
})();