var soohyung=soohyung || {};

soohyung.main=(()=>{
   var init=(ctx)=>{
	   alert('수형');
      soohyung.session.init(ctx);
     soohyung.logic.login();
   };
   var mainLogic=()=>{
      
   };
   return {
      init : init,
      mainLogic : mainLogic
   };
})();

soohyung.logic=(()=>{
   var ctx,id,pass;
   var join=()=>{
      $('#submit_btn').click(()=>{
         alert('이름 : '+$('#input_member_name').val());
      });
   };
   var login=()=>{
      ctx=sessionStorage.getItem('ctx');
      soohyung.session.init(ctx);
      $('#login_btn').click(()=>{
    	  alert('로그인버튼 클릭');
         id=$('#txtUserId').val();
         pass=$('#txtPwd1').val();
         alert('아이디 : '+id+' 비밀번호 : '+pass);
         
         $.ajax({
 			url : sessionStorage.getItem('ctx')+'/get/loginPage',
 			method : 'POST',
 			data : JSON.stringify({
				'member_id' : id,
				'pass' : pass
			}),
 			contentType : 'application/json',
 			success : d=>{
 				 alert('로그인결과 : '+d.msg);
 				 
 				 
 				 
 				 
 			},
 			error : (x,s,m)=>{
 				alert('에러가발생');
 			}
 		});
         
         
         
      });
      $('#join').click(()=>{
         location.href=ctx+'/join';
      });
   };
   return {join : join, login: login}
})();


soohyung.session=
{
   init : function(ctx){
      sessionStorage.setItem('ctx',ctx);
      sessionStorage.setItem('js',ctx+"/resources/js");
      sessionStorage.setItem('css',ctx+"/resources/css");
      sessionStorage.setItem('img',ctx+"/resources/img");
   },
   getPath : function(x){
      return sessionStorage.getItem(x);
   }
}



       
                           
      
   
      