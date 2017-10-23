var soohyung=soohyung || {};

var compUI={
	      label : ()=>{return $('<label/>')},
	      btn : (x,y)=>{
	         return $('<button/>',{id : x, type : y}
	         )},      
	      span : ()=>{return $('<span/>')},
	      br : ()=> {return '<br/>'},
	      p : ()=>{return $('<p/>')},
	      h3 : ()=>{
	         return $('<h3/>');
	      },
	      
	      image : (x,y)=>{
	            return $('<img/>',
	            {   
	               id : x,
	               src : y
	            }); 
	         },
	      input : (x,y)=>{
	         return $('<input/>',
	         {
	            id : x,
	            type : y
	         });
	      },
	      h1 : x => {
	         return $('<h1/>', 
	               {
	            id : x
	         });
	      },
	      span : x => {
	         return $('<span/>', 
	               {
	            id : x
	         });
	      },
	      div : x => {
	         return $('<div/>', 
	               {
	            id : x
	         });
	      },
	      iTxt : x => {
	         return $('<input/>', 
	               {
	            id : x, type : 'text'
	         });
	      },
	      aBtn : x => {
	         return $('<a>',
	               {
	            href : '#', role : 'button', id : x
	         });
	      },
	      iBtn : x => {
	         return $('<input/>', 
	               {
	            id : x, type : 'button'
	         });
	      },
	      tag : (x,y) => {
	         return $('<'+x+'/>',{
	            id:y
	         });
	      },
	      noIdTag : (x) => {
	         return $('<'+x+'/>')
	      },
	      classTag : (x,y)=> {
	         return $('<'+x+'/>',{
	            class:y
	         });
	      }
	   }

soohyung.main=(()=>{
   var init=(ctx)=>{
      soohyung.session.init(ctx);
     soohyung.logic.login();  
   };
   return {
      init : init,
   };
})();

soohyung.logic=(()=>{
   var ctx,id,pass,jahun;
   var join=(ctx)=>{     
      $('#submit_btn').click(()=>{
         alert('이름 : '+$('#input_member_name').val());
      });
   };
   var login=()=>{
     
      
      /*로그인*/
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
              if(d.msg=='success'){
                 alert('로그인 성공 !!');
                 $('#content').empty();
                 sessionStorage.setItem('member_id',d.member.member_id);
                 location.href=sessionStorage.getItem('ctx')+"/home";
                 
              }else{
                 alert('로그인 실패 !!');
                 $('#txtUserId').val("");
                 $('#txtPwd1').val("");
              }            
          },
          error : (x,s,m)=>{
             alert('에러가발생');
          }
       });        
      });
      
      /*아이디찾기*/
      $('#findId_btn').click(()=>{
         alert('아이디 찾기');
         soohyung.template.findIdUI();
         
         $('#name').before(compUI.label().text('고객님의 이름을 입력하세요'));
         $('#phone').before(compUI.label().text('고객님의 휴대폰 번호를 입력하세요'));
         compUI.input('phone_no2').css({'width':'70px','margin-left':'10px','margin-right':'-10px'}).appendTo(compUI.span('phone_no1_span').appendTo($('#first_lab')));
         compUI.input('phone_no3').css({'width':'70px','margin-left':'10px'}).appendTo(compUI.span('phone_no2_span').appendTo($('#second_lab')));
         compUI.span().text('확인').css({
         'display': 'block',
         'width': '258px',
         'height': '36px',
         'border': '1px solid #f07469',
         'color': '#f2f0e5',
         'font-size': '15px',
         'font-family':'NanumBarunGothicBold'
         }).
         appendTo(
         compUI.btn('ok','button').
         css({
            'width': '264px',
             'height': '42px',
               'line-height': '37px',
               'left': '0',
               'position': 'static',
               'margin-top': '5px',
               'padding': '2px',
               'background': '#e71a0f',
               'text-align': 'center'
         }).appendTo($('#findId_btn_div')));
         
         
         
         $('#ok').click(()=>{         
          var name=$('#name').val();
          var phone1=$('#phone_no1').val();
           var phone2=$('#phone_no2').val();
           var phone3=$('#phone_no3').val();
           var phone=phone1+phone2+phone3;
          alert('이름 : '+name+' 핸드폰 번호 :'+phone);
          $.ajax({
             url : sessionStorage.getItem('ctx')+'/get/findId',
             method : 'POST',
             data : JSON.stringify({
                member_name : name,
                member_phone : phone
             }),
             contentType : 'application/json',
             success : d =>{
                   if(d.msg=='success'){
                           alert('아이디 찾기 성공 !!');
                           alert('아이디 찾기 결과 : '+d.msg);
                           $('#login_content').empty();
                           $('#login_content').append(
      '<div class="sect-login"><ul class="tab-menu-round"><li class="on"><a href="/user/login/">로그인</a></li></ul><div class="box-login login_1408"><h3 class="hidden">회원로그인</h3><form id="form2_capcha"method="post"action="#"novalidate="novalidate"onsubmit="return false"style="display:block;"><fieldset><legend>회원로그인</legend><div id="login_txt_wrap"class="txt_wrap"><h3></h3><!--<p>정보보호를위해아이디,비밀번호와함께<br/>자동입력방지문자를입력하셔야합니다.</p>--><p>귀하의정보보호를위해실제사용자가<br>요청을보내고있는지<br>확인하는절차를거치고있습니다.</p></div><div id="login-form"class="login"><input type="text"title="아이디"id="txtUserId"name="txtUserId"data-title="아이디를 "data-message="입력하세요."required="required"value=""><input type="password"title="패스워드"id="txtPwd1"name="txtPwd1"data-title="패스워드를 "data-message="입력하세요."required="required"></div><button type="submit"id="submit"title="로그인"><span id="login_btn">로그인</span></button><div class="login-option"><button id="join">회원가입하기</button><button id="findId_btn">아이디찾기</button><button id="findPw_btn">비밀번호찾기</button></div></fieldset></form></div></div><div class="sect-loginad"style="background:#d2cbbe;"><div><iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Login_bigbanner"width="350"height="300"title=""frameborder="0"scrolling="no"marginwidth="0"marginheight="0"name="Login_bigbanner"id="Login_bigbanner"></iframe></div></div>'	   
                           );
                           $('#txtUserId').val(d.member_id);
                        }else{
                           alert('로그인 실패 !!');
                           $('#txtUserId').val("");
                           $('#txtPwd1').val("");
                        }                                                                                                               
             },
             error : (x,s,m)=>{
                alert('오류발생 : '+m);
             }             
          });
         });
         
         /*버튼 클릭시 로그인 페이지로 이동*/
        /* soohyung.template.loginUI();*/   
          
      });
      
      /*비밀번호 찾기*/
      $('#findPw_btn').click(()=>{
         soohyung.template.findPwUI();
         alert('비밀번호 찾기');
         
         $('#id').before(compUI.label().text('고객님의 아이디를 입력하세요'));
         $('#phone').before(compUI.label().text('고객님의 휴대폰 번호를 입력하세요'));
         compUI.input('phone_no2').css({'width':'70px','margin-left':'10px','margin-right':'-10px'}).appendTo(compUI.span('phone_no1_span').appendTo($('#first_lab')));
         compUI.input('phone_no3').css({'width':'70px','margin-left':'10px'}).appendTo(compUI.span('phone_no2_span').appendTo($('#second_lab')));
         compUI.span().text('확인').css({
         'display': 'block',
         'width': '258px',
         'height': '36px',
         'border': '1px solid #f07469',
         'color': '#f2f0e5',
         'font-size': '15px',
         'font-family':'NanumBarunGothicBold'
         }).
         appendTo(
         compUI.btn('findPw','button').
         css({
            'width': '264px',
             'height': '42px',
               'line-height': '37px',
               'left': '0',
               'position': 'static',
               'margin-top': '5px',
               'padding': '2px',
               'background': '#e71a0f',
               'text-align': 'center'
         }).appendTo($('#findId_btn_div')));
         
         $('#findPw').click(()=>{
         var id=$('#id').val();
           var phone1=$('#phone_no1').val();
           var phone2=$('#phone_no2').val();
           var phone3=$('#phone_no3').val();
           var phone=phone1+phone2+phone3;
         alert('아이디 : '+id+' 핸드폰 번호 :'+phone);
             $.ajax({
               url : sessionStorage.getItem('ctx')+'/get/findPw',
               method : 'POST',
               data : JSON.stringify({
                  member_id : id,
                  member_phone : phone
               }),
               contentType : 'application/json',
               success : d =>{
            	   	
            		   alert(d.findId);
            		   sessionStorage.setItem('member_id',d.findId);
            		   location.href=sessionStorage.getItem('ctx')+"/update";
               },
               error : (x,s,m)=>{
                  alert('오류발생 : '+m);
                  location.href=sessionStorage.getItem('ctx')+"/loginpage";
               }             
            });
             
         });                
      });
      
      /*회원가입*/
      $('#join').click(()=>{
         location.href=sessionStorage.getItem('ctx')+'/join';
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

soohyung.template=(()=>{
var loginUI=()=>{
   $('#content').append(
         '<body class="">'
         +'<div class="skipnaiv">'
         +'<a href="#contents" id="skipHeader">메인컨텐츠바로가기</a>'
         +'</div>'
         +'<div id="cgvwrap">'
         +'<!--Contaniner-->'
         +'<div id="contaniner" class="">'
         +'<!--벽돌배경이미지사용시class="bg-bricks"적용/배경이미지가없을경우class삭제-->'
         +'<!--LineMap-->'
         +'<div id="ctl00_navigation_line" class="linemap-wrap">'
         +'<div class="sect-linemap">'
         +'<div class="sect-bcrumb">'
         +'<ul>'
         +'<li id="main_move"></li>'
         +'<li style="font-size: 12px; margin-top: 3px">회원서비스</li>'
         +'<li class="last">로그인</li>'
         +'</ul>'
         +'</div>'
         +'</div>'
         +'</div>'
         +'<!--<!--Contents Area-->'
         +'<div id="contents" class="">'
         +'<!--Contents Start-->'
         +'<!--실컨텐츠시작-->'
         +'<div class="wrap-login" id="login_content">'
         +'<div class="sect-login">'
         +'<ul class="tab-menu-round">'
         +'<li class="on">로그인</li>'
         +'</ul>'
         +'<div class="box-login login_1408">'
            +'<h3 class="hidden">회원 로그인</h3>'                                        
            +'<!-- ********************* 비밀번호 5회 오류시 캡챠 포함된 form#form2_capcha 시작 ********************* -->'         
            +'<form id="form2_capcha" method="post" action="#" novalidate="novalidate" onsubmit="return false" style="display:block;">'
            +'<fieldset>'
            +'<legend>회원 로그인</legend>'
            +'<div class="txt_wrap">'
            +'<h3></h3>'
         +'<!-- <p>정보보호를 위해 아이디, 비밀번호와 함께 <br />자동 입력 방지 문자를 입력하셔야 합니다.</p>-->'
         +'</div>'
         +'<div class="login">'
         +'<input type="text" title="아이디" id="txtUserId" name="txtUserId" data-title="아이디를 " data-message="입력하세요." required="required" value="">'
         +'<input type="password" title="패스워드" id="txtPwd1" name="txtPwd1" data-title="패스워드를 " data-message="입력하세요." required="required">'
         +'</div>'
         +'<div id="login_btn">'      
         +'</div>'         
         +'<div class="login-option">'      
         +'</div>'
         +'</fieldset>'
         +'</form>'
         +'<!-- ********************* 비밀번호 5회 오류시 캡챠 포함된 form#form2_capcha 끝 ********************* -->'
         +'</div>'
         +'</div>'
         +'<div class="sect-loginad" style="background:#d2cbbe;">'
         +'<div>'
         +'<iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Login_bigbanner" width="350" height="300" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Login_bigbanner" id="Login_bigbanner"></iframe>'
         +'</div>'
         +'</div>'
         +'</div>'
         +'<!--실컨텐츠끝-->'
         +'</div>'
         +'</div>'
         +'</body>'
         +'</html>'            
         );
   };
   var joinUI=()=>{
      
   };   
   var findIdUI=()=>{
      //아이디 찾기 
      $('#login_content').empty();
      $('#login_content').append(
      '<div class="skipnaiv">'
      +'<a href="#contents" id="skipHeader">메인컨텐츠바로가기</a>'
      +'</div>'
      +'<div id="cgvwrap">'
      +'<!--Contaniner-->'
      +'<div id="contaniner" class="">'
      +'<!--벽돌배경이미지사용시class="bg-bricks"적용/배경이미지가없을경우class삭제-->'
      +'<!--LineMap-->'
      +'<div id="ctl00_navigation_line" class="linemap-wrap">'
      +'<div class="sect-linemap">'
      +'<div class="sect-bcrumb">'
      +'<ul>'
      +'<li id="main_move"></li>'
      +'<li style="font-size: 12px; margin-top: 3px">회원서비스</li>'
      +'<li class="last">아이디 찾기</li>'
      +'</ul>'
      +'</div>'
      +'</div>'
      +'</div>'
      +'<!--<!--Contents Area-->'
      +'<div id="contents" class="">'
      +'<!--Contents Start-->'
      +'<!--실컨텐츠시작-->'
      +'<div class="wrap-login">'
      +'<div class="sect-login">'
      +'<ul class="tab-menu-round">'
      +'<li class="on">아이디 찾기</li>'
      +'</ul>'
      +'<div class="box-login login_1408" style="margin: 0 auto;">'
      +'<div id="find_id_form" class="login" style="margin: 0 auto;">'
      +'<input type="text" title="이름" id="name" name="name" data-title="아이디를 " data-message="입력하세요." required="required" value="" "/>'
      +'<div id="phone">'
      +'<select title="휴대전화 앞자리 선택"id="phone_no1"name="mob_no_1"style="width:70px">'
      +'<option value="010">010</option>'
      +'<option value="011">011</option>'
      +'<option value="016">016</option>'
      +'<option value="017">017</option>'
      +'<option value="019">019</option>'
      +'</select>'
      +'&nbsp&nbsp&nbsp<label id="first_lab">-</label>&nbsp&nbsp&nbsp'
      +'&nbsp&nbsp&nbsp<label id="second_lab">-</label>&nbsp&nbsp&nbsp'
      +'</div>'
      +'</div>'
      +'<!--캡차영역-->'
      +'<div id ="findId_btn_div" >'
      +'</div>'
      +'</div>'
      +'</div>'
      +'</div>'
      +'<!--실컨텐츠끝-->'
      +'</div>'
      +'</div>'
      );
   };
   var resultIdUI=()=>{
      //아이디 결과 
      $('#login_content').append(
               '<!--Modal--><div class="modal fade"id="idModal"role="dialog"><div class="modal-dialog"><!--Modal content--><div class="modal-content"><div class="modal-header"style="padding:35px 50px;"><button type="button"class="close"data-dismiss="modal">&times;</button><h4><span class="glyphicon glyphicon-lock"></span>결과</h4></div><div class="modal-body"style="padding:40px 50px;"><form role="form"><div class="form-group"><label for="usrname"><span class="glyphicon glyphicon-user"></span>아이디</label></br><span id="resultId"></span></div><div class="form-group"><label for="psw"></div><button id="move_login"type="button"class="btn btn-success btn-block" data-dismiss="modal">확인</button></form></div>'      
         );
   };
   var findPwUI=()=>{
      //패스워드 찾기
      $('#login_content').empty();
      $('#login_content').append(
      '<div class="skipnaiv">'
      +'<a href="#contents" id="skipHeader">메인컨텐츠바로가기</a>'
      +'</div>'
      +'<div id="cgvwrap">'
      +'<!--Contaniner-->'
      +'<div id="contaniner" class="">'
      +'<!--벽돌배경이미지사용시class="bg-bricks"적용/배경이미지가없을경우class삭제-->'
      +'<!--LineMap-->'
      +'<div id="ctl00_navigation_line" class="linemap-wrap">'
      +'<div class="sect-linemap">'
      +'<div class="sect-bcrumb">'
      +'<ul>'
      +'<li id="main_move"></li>'
      +'<li style="font-size: 12px; margin-top: 3px">회원서비스</li>'
      +'<li class="last">비밀번호 찾기</li>'
      +'</ul>'
      +'</div>'
      +'</div>'
      +'</div>'
      +'<!--<!--Contents Area-->'
      +'<div id="contents" class="">'
      +'<!--Contents Start-->'
      +'<!--실컨텐츠시작-->'
      +'<div class="wrap-login">'
      +'<div class="sect-login">'
      +'<ul class="tab-menu-round">'
      +'<li class="on">비밀번호 찾기</li>'
      +'</ul>'
      +'<div class="box-login login_1408" style="margin: 0 auto;">'
      +'<div id="find_id_form" class="login" style="margin: 0 auto;">'
      +'<input type="text" title="아이디" id="id" name="id" data-title="아이디를 " data-message="입력하세요." required="required" value="" "/>'
      +'<div id="phone">'
      +'<select title="휴대전화 앞자리 선택"id="phone_no1"name="mob_no_1"style="width:70px">'
      +'<option value="010">010</option>'
      +'<option value="011">011</option>'
      +'<option value="016">016</option>'
      +'<option value="017">017</option>'
      +'<option value="019">019</option>'
      +'</select>'
      +'&nbsp&nbsp&nbsp<label id="first_lab">-</label>&nbsp&nbsp&nbsp'
      +'&nbsp&nbsp&nbsp<label id="second_lab">-</label>&nbsp&nbsp&nbsp'
      +'</div>'
      +'</div>'
      +'<!--캡차영역-->'
      +'<div id ="findId_btn_div" >'
      +'</div>'
      +'</div>'
      +'</div>'
      +'</div>'
      +'<!--실컨텐츠끝-->'
      +'</div>'
      +'</div>'
      );
      
   };
   
   var updatePwUI=()=>{
      //패스워드 변경 모달
      $('#content').append(
               '<!--Modal--><div class="modal fade"id="updateModal"role="dialog"><div class="modal-dialog"><!--Modal content--><div class="modal-content"><div class="modal-header"style="padding:35px 50px;"><button type="button"class="close"data-dismiss="modal">&times;</button><h4><span class="glyphicon glyphicon-lock"></span>비밀번호찾기</h4></div><div class="modal-body"style="padding:40px 50px;"><form role="form"><div class="form-group"><label for="usrname"><span class="glyphicon glyphicon-user"></span>변경할 비밀번호</label></br><input type="password"class="form-control" id="updatePw" placeholder="비밀번호를 입력하세요"style="width:265px"></div><div class="form-group"><label for="psw"><span class="glyphicon glyphicon-eye-open"></span>비밀번호 확인</label></br><input type="password"class="form-control"id="confirmPw"placeholder="비밀번호확인"style="width:265px"></div><button id="move_login" type="button"class="btn btn-success btn-block" data-dismiss="modal">확인</button></form></div>'
         );
   };
   return{
      loginUI : loginUI,
      joinUI : joinUI,
      findIdUI : findIdUI,
      resultIdUI : resultIdUI,
      findPwUI : findPwUI,
      updatePwUI : updatePwUI
      }
})();