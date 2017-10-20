var soohyung=soohyung || {};

soohyung.main=(()=>{
   var init=(ctx)=>{
      soohyung.session.init(ctx);
    /*location.href=ctx+'/login';*/
      soohyung.template.loginUI();
     soohyung.logic.login();  
     /* location.href=ctx+'/join'*/
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
   /*compUI.span().text('로그인').appendTo*/
   /*compUI.btn('login','button').attr({'title':'로그인'}).appendTo($('#login_btn'));*/
   var login=()=>{
      compUI.p().html('귀하의 정보보호를 위해 실제 사용자가'+compUI.br()+'요청을 보내고 있는지'+compUI.br()+'확인하는 절차를 거치고 있습니다.').css({'font-size':'12px'}).appendTo($('.txt_wrap'));
      compUI.span().text('로그인').css({
            'display': 'block',
            'width': '258px',
            'height': '36px',
            'border': '1px solid #f07469',
            'color': '#f2f0e5',
            'font-size': '15px',
            'font-family':'NanumBarunGothicBold'
      }).
      appendTo(
            compUI.btn('login','button').
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
            }).appendTo($('#login_btn')));
      
      compUI.btn('join_btn','button').text('회원가입').appendTo($('.login-option'));
      compUI.btn('findId_btn','button').text('아이디 찾기').appendTo($('.login-option'));
      compUI.btn('findPw_btn','button').text('비밀번호 찾기').appendTo($('.login-option'));
      
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
         $('#find_id_form').before(compUI.label().text('고객님의 이름을 입력하세요'));
         $('#txtPwd1').before(compUI.label().text('고객님의 휴대폰 번호를 입력하세요'));
         $('#ok').click(()=>{         
          var name=$('#name').val();
          var phone1=$('#phone1').val();
           var phone2=$('#phone2').val();
           var phone3=$('#phone3').val();
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
                           soohyung.template.resultIdUI
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
         soohyung.template.findUI();
         alert('비밀번호 찾기');
         $('#pwModal').modal();
         $('#findPw').click(()=>{
         var id=$('#findPwId').val();
           var phone1=$('#phone11').val();
           var phone2=$('#phone22').val();
           var phone3=$('#phone33').val();
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
                  alert('비밀번호 찾기 결과 : '+d.msg);
                  $('#pwModal').modal('toggle');
                 /*$('#resultPwModal').modal();
                 $('#findByPass').text(d.findPw);*/
                  $('#updateModal').modal()
                 $('#findPassword').click(()=>{
                    var pass=$('#updatePw').val();
                    var confirmPass=$('#confirmPw').val();
                    var confirmId =id;
                    alert('id : '+confirmId);
                    if(pass==confirmPass){                       
                       $.ajax({
                          url : sessionStorage.getItem('ctx')+'/get/updatePw',
                          method : 'POST',
                          data : JSON.stringify({
                             pass : pass,
                             id : confirmId
                          }),
                          contentType : 'application/json',
                          success : d => {
                             alert('비밀번호 변경 : '+d.msg);
                             $('#updateModal').modal('toggle');
                          },
                          error : (x,s,m)=>{
                             alert('오류발생 : '+m);
                          }
                       });
                    };                    
                    
                 });
               },
               error : (x,s,m)=>{
                  alert('오류발생 : '+m);
               }             
            });
             
         });                
      });
      
      /*회원가입*/
      $('#join_btn').click(()=>{
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
         +'<div class="wrap-login">'
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
      $('#content').empty();
      $('#content').append(
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
      +'<input type="text" title="아이디" id="txtUserId" name="txtUserId" data-title="아이디를 " data-message="입력하세요." required="required" value=""/><input type="password" title="패스워드" id="txtPwd1" name="txtPwd1" data-title="패스워드를 " data-message="입력하세요." required="required"/>'
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
      
   };
   var findPwUI=()=>{
      //패스워드 찾기 
      
   };
   var resultPwUI=()=>{
      //패스워드 결과 
      
   };
   var updatePwUI=()=>{
      //패스워드 변경 모달
      
   };
   return{
      loginUI : loginUI,
      joinUI : joinUI,
      findIdUI : findIdUI,
      resultIdUI : resultIdUI,
      findPwUI : findPwUI,
      resultPwUI : resultPwUI,
      updatePwUI : updatePwUI
      }
})();

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


       
                           
      
   
      