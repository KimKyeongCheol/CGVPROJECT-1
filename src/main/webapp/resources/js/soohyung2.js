var soohyung2=soohyung2 || {};

soohyung2.main=(()=>{
   var init=(ctx)=>{
      soohyung2.session.init(ctx);
      soohyung2.UI.init();
      soohyung2.logic.init();
   };
   return {
      init : init,
   };
})();

soohyung2.logic=(()=>{
  
	var init=()=>{
	  $('#idCheck').click(()=>{
		  var member_id=$('#member_id').val();
		  $.ajax({
	          url : sessionStorage.getItem('ctx')+'/get/idCheck',
	          method : 'POST',
	          data : JSON.stringify({
	            'member_id' : member_id
	         }),
	          contentType : 'application/json',
	          success : d=>{              
	              if(d.msg=='possible'){
	                 $('#idCheckMsg').text('사용가능한 아이디입니다');
	              }else{
	            	  $('#idCheckMsg').text('중복된 아이디입니다.');
	              }            
	          },
	          error : (x,s,m)=>{
	             alert('에러가발생');
	          }
	       }); 
	  });
	  
	  $('#pass1').keyup(()=>{
		  var regex=/^(?=.*[a-zA-Z])(?=.*[!@#$%^&*+=-])(?=.*[0-9]).{8,12}/;
		  var pass1=$('#pass1').val();
		  
		  if(regex.test(pass1)){
			  $('#passCheckMsg').text('사용가능한 비밀번호입니다');
		  }else{
			  $('#passCheckMsg').text('형식에 맞지 않는 비밀번호입니다'); 
		  };
	  });
	  
	  $('#pass2').keyup(()=>{
		  var pass1=$('#pass1').val();
		  var pass2=$('#pass2').val();
		  if(pass2==pass1){
			  $('#passCheckMsg2').text('비밀번호가 일치합니다');
		  }else{
			  $('#passCheckMsg2').text('비밀번호가 일치하지 않습니다');
		  }
	  });
	  
	  $('#email_last').click(()=>{
		  var email_last=$('#email_last').val();
		  if(email_last=='inputEmail'){
			  $('#email_input').val('');
		  }else{
			  $('#email_input').val(email_last);
		  }
	  });
	  
	  $('#submit').click(()=>{
		  var name=$('#name').val();
		  var member_id=$('#member_id').val();
		  var pass=$('#pass1').val();
		  var ssn=$('#birth_year').val().substring(2,4)+$('#birth_month').val()+$('#birth_day').val()+'-1******';
		  var phone=$('#phone_first').val()+$('#phone_mid').val()+$('#phone_last').val();
		  var email=$('#email_first').val()+'@'+$('#email_input').val();
		  var zipcode=$('#sample4_postcode').val();
		  var address=$('#sample4_roadAddress').val();
		  var profile='default.jpg';
		  
		  $.ajax({
	             url : sessionStorage.getItem('ctx')+'/post/member',
	             method : 'POST',
	             data : JSON.stringify({
	            	 name : name,
	            	 member_id : member_id,
	            	 pass : pass,
	            	 ssn : ssn,
	            	 phone : phone,
	            	 email : email,
	            	 zipcode : zipcode,
	            	 address : address,
	            	 profile : profile
	             }),
	             contentType : 'application/json',
	             success : d =>{
	                 if(d.msg=='success'){
	                	 alert('회원등록 성공 !');
	                 }else{
	                	 alert('회원등록 실패.. ');
	                 }
	                 location.href=sessionStorage.getItem('ctx')+"/home";
	                 
	             },
	             error : (x,s,m)=>{
	                alert('오류발생 : '+m);
	             }             
	          });

		  
	  });
  };
  
  var sample4_execDaumPostcode=()=>{
	  new daum.Postcode({
          oncomplete: function(data) {
              // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

              // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
              // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
              var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
              var extraRoadAddr = ''; // 도로명 조합형 주소 변수

              // 법정동명이 있을 경우 추가한다. (법정리는 제외)
              // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
              if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                  extraRoadAddr += data.bname;
              }
              // 건물명이 있고, 공동주택일 경우 추가한다.
              if(data.buildingName !== '' && data.apartment === 'Y'){
                 extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
              }
              // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
              if(extraRoadAddr !== ''){
                  extraRoadAddr = ' (' + extraRoadAddr + ')';
              }
              // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
              if(fullRoadAddr !== ''){
                  fullRoadAddr += extraRoadAddr;
              }
              
              // 우편번호와 주소 정보를 해당 필드에 넣는다.
              document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
              document.getElementById('sample4_roadAddress').value = fullRoadAddr;
              document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

              // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
              if(data.autoRoadAddress) {
                  //예상되는 도로명 주소에 조합형 주소를 추가한다.
                  var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                  document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

              } else if(data.autoJibunAddress) {
                  var expJibunAddr = data.autoJibunAddress;
                  document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

              } else {
                  document.getElementById('guide').innerHTML = '';
              }
          }
      }).open();
  };
  
  
  

     
   return {
	   init : init,
	   sample4_execDaumPostcode : sample4_execDaumPostcode
	   }
})();

soohyung2.UI=(()=>{
	var init=()=>{
		
		$('#birth_year').append(
				'<option value="default">선택</option>'		
		);
		
		$('#birth_month').append(
				'<option value="default">선택</option>'		
		);
		
		$('#birth_day').append(
				'<option value="default">선택</option>'		
		);
		
		
		for(var i=1950;i<2017;i++){
			$('#birth_year').append(
					'<option value="'+i+'">'+i+'</option>'		
			);
		}
		for(var i=1;i<13;i++){
			$('#birth_month').append(
					'<option value="'+i+'">'+i+'</option>'		
			);
		}
		for(var i=1;i<31;i++){
			$('#birth_day').append(
					'<option value="'+i+'">'+i+'</option>'		
			);
		}
		
		$('#phone_first').append(
'<option value="010">010</option><option value="011">011</option><option value="017">017</option><option value="019">019</option>'
		);
		
	};
	
	return {
		init : init
	};
})();


soohyung2.session=
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




       
                           
      
   
      