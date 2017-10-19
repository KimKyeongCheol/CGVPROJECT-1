var soohyung=soohyung || {};

soohyung.main=(()=>{
   var init=(ctx)=>{
      soohyung.session.init(ctx);
     soohyung.template.loginUI();
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
      
      $('#find_id').click(()=>{
         alert('아이디 찾기');
         soohyung.template.findUI();
         $('#myModal').modal();
         $('#findId').click(()=>{
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
                alert('아이디 찾기 결과 : '+d.msg);
                $('#myModal').modal('toggle');
                 $('#idModal').modal();
                 $('#findById').text(d.findId);
                 $('#ok').click(()=>{
                    $('#idModal').modal('toggle');
                 });
             },
             error : (x,s,m)=>{
                alert('오류발생 : '+m);
             }             
          });
         });
      });
      $('#find_pw').click(()=>{
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

soohyung.template=(()=>{
var loginUI=()=>{
   $('#content').append(
         '<body class=""><div class="skipnaiv"><a href="#contents"id="skipHeader">메인컨텐츠바로가기</a></div><div id="cgvwrap"><!--Contaniner--><div id="contaniner"class=""><!--벽돌배경이미지사용시class="bg-bricks"적용/배경이미지가없을경우class삭제--><!--LineMap--><div id="ctl00_navigation_line"class="linemap-wrap"><div class="sect-linemap"><div class="sect-bcrumb"><ul><li><a href="/"><img alt="home"src="http://img.cgv.co.kr/R2014/images/common/btn/btn_home.png"/></a></li><li><a href="/user/login/">회원서비스</a></li><li class="last">로그인</li></ul></div></div></div><!--<!--Contents Area--><div id="contents"class=""><!--Contents Start--><!--실컨텐츠시작--><div class="wrap-login"><div class="sect-login"><ul class="tab-menu-round"><li class="on"><a href="/user/login/">로그인</a></li></ul><div class="box-login login_1408"><h3 class="hidden">회원로그인</h3><!--*********************비밀번호5회오류시캡챠포함된form#form2_capcha시작*********************--><form id="form2_capcha"method="post"action="#"novalidate="novalidate"onsubmit="return false"style="display:block;"><fieldset><legend>회원로그인</legend><div id="login_txt_wrap"class="txt_wrap"><h3></h3><!--<p>정보보호를위해아이디,비밀번호와함께<br/>자동입력방지문자를입력하셔야합니다.</p>--><p id="soohyung_p">귀하의정보보호를위해실제사용자가<br/>요청을보내고있는지<br/>확인하는절차를거치고있습니다.</p></div><div id="login-form"class="login"><input type="text"title="아이디"id="txtUserId"name="txtUserId"data-title="아이디를 "data-message="입력하세요."required="required"value=""/><input type="password"title="패스워드"id="txtPwd1"name="txtPwd1"data-title="패스워드를 "data-message="입력하세요."required="required"/></div><!--캡차영역--><button type="submit"id="submit"title="로그인"><span id="login_btn">로그인</span></button><div class="login-option"><button id="join">회원가입하기</button><button id="find_id">아이디찾기</button><button id="find_pw">비밀번호찾기</button></div></fieldset></form><!--*********************비밀번호5회오류시캡챠포함된form#form2_capcha끝*********************--></div></div><div class="sect-loginad"style="background:#d2cbbe;"><div><iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Login_bigbanner"width="350"height="300"title=""frameborder="0"scrolling="no"marginwidth="0"marginheight="0"name="Login_bigbanner"id="Login_bigbanner"></iframe></div></div></div><!--실컨텐츠끝--><form name="loginform"id="loginform"method="post"action="https://www.cgv.co.kr/user/login/login.aspx"novalidate="novalidate"><input type="hidden"name="id"id="id"/><input type="hidden"name="password"id="password"/><input type="hidden"name="id_save"id="id_save"/><input type="hidden"name="returnURL"value="http://www.cgv.co.kr/default.aspx"/></form><script type="text/javascript"src="http://img.cgv.co.kr/R2014//js/system/crypto.js"></script><!--/Contents End--></div><!--/Contents Area--></div><!--/Contaniner--></body>'      
         );
   };
   var joinUI=()=>{
      
   };   
   var findUI=()=>{
      $('#content').append(
            '<!--Modal--><div class="modal fade"id="myModal"role="dialog"><div class="modal-dialog"><!--Modal content--><div class="modal-content"><div class="modal-header"style="padding:35px 50px;"><button type="button"class="close"data-dismiss="modal">&times;</button><h4><span class="glyphicon glyphicon-lock"></span>아이디찾기</h4></div><div class="modal-body"style="padding:40px 50px;"><form role="form"><div class="form-group"><label for="usrname"><span class="glyphicon glyphicon-user"></span>이름</label></br><input type="text"class="form-control"id="name"placeholder="이름을 입력하세요"style="width:265px"></div><div class="form-group"><label for="psw"><span class="glyphicon glyphicon-eye-open"></span>핸드폰번호</label><div id="phone"><select title="휴대전화 앞자리 선택"id="phone1"name="mob_no_1"style="width:70px"><option value="010">010</option><option value="011">011</option><option value="016">016</option><option value="017">017</option><option value="019">019</option></select>&nbsp&nbsp&nbsp<label>-</label>&nbsp&nbsp&nbsp<input type="text"class="form-control"id="phone2"style="width:70px">&nbsp&nbsp&nbsp<label>-</label>&nbsp&nbsp&nbsp<input type="text"class="form-control"id="phone3"style="width:70px"></div></div><button id="findId"type="button"class="btn btn-success btn-block" >확인</button></form></div>'   
      );
      $('#content').append(
            '<!--Modal--><div class="modal fade"id="idModal"role="dialog"><div class="modal-dialog"><!--Modal content--><div class="modal-content"><div class="modal-header"style="padding:35px 50px;"><button type="button"class="close"data-dismiss="modal">&times;</button><h4><span class="glyphicon glyphicon-lock"></span>결과</h4></div><div class="modal-body"style="padding:40px 50px;"><form role="form"><div class="form-group"><label for="usrname"><span class="glyphicon glyphicon-user"></span>아이디</label></br><span id="findById"></span></div><div class="form-group"><label for="psw"></div><button id="ok"type="button"class="btn btn-success btn-block" data-dismiss="modal">확인</button></form></div>'      
      );
      $('#content').append(
            '<!--Modal--><div class="modal fade"id="pwModal"role="dialog"><div class="modal-dialog"><!--Modal content--><div class="modal-content"><div class="modal-header"style="padding:35px 50px;"><button type="button"class="close"data-dismiss="modal">&times;</button><h4><span class="glyphicon glyphicon-lock"></span>비밀번호찾기</h4></div><div class="modal-body"style="padding:40px 50px;"><form role="form"><div class="form-group"><label for="usrname"><span class="glyphicon glyphicon-user"></span>아이디</label></br><input type="text"class="form-control"id="findPwId"placeholder="아이디를 입력하세요"style="width:265px"></div><div class="form-group"><label for="psw"><span class="glyphicon glyphicon-eye-open"></span>핸드폰번호</label><div id="phone"><select title="휴대전화 앞자리 선택"id="phone11"name="mob_no_1"style="width:70px"><option value="010">010</option><option value="011">011</option><option value="016">016</option><option value="017">017</option><option value="019">019</option></select>&nbsp&nbsp&nbsp<label>-</label>&nbsp&nbsp&nbsp<input type="text"class="form-control"id="phone22"style="width:70px">&nbsp&nbsp&nbsp<label>-</label>&nbsp&nbsp&nbsp<input type="text"class="form-control"id="phone33"style="width:70px"></div></div><button id="findPw"type="button"class="btn btn-success btn-block">확인</button></form></div>'
      );
      $('#content').append(
            '<!--Modal--><div class="modal fade"id="resultPwModal"role="dialog"><div class="modal-dialog"><!--Modal content--><div class="modal-content"><div class="modal-header"style="padding:35px 50px;"><button type="button"class="close"data-dismiss="modal">&times;</button><h4><span class="glyphicon glyphicon-lock"></span>결과</h4></div><div class="modal-body"style="padding:40px 50px;"><form role="form"><div class="form-group"><label for="usrname"><span class="glyphicon glyphicon-user"></span>비밀번호</label></br><span id="findByPass"></span></div><div class="form-group"><label for="psw"></div><button id="ok"type="button"class="btn btn-success btn-block" data-dismiss="modal">확인</button></form></div>'
      );
      $('#content').append(
            '<!--Modal--><div class="modal fade"id="updateModal"role="dialog"><div class="modal-dialog"><!--Modal content--><div class="modal-content"><div class="modal-header"style="padding:35px 50px;"><button type="button"class="close"data-dismiss="modal">&times;</button><h4><span class="glyphicon glyphicon-lock"></span>비밀번호찾기</h4></div><div class="modal-body"style="padding:40px 50px;"><form role="form"><div class="form-group"><label for="usrname"><span class="glyphicon glyphicon-user"></span>변경할 비밀번호</label></br><input type="text"class="form-control"id="updatePw"placeholder="비밀번호를 입력하세요"style="width:265px"></div><div class="form-group"><label for="psw"><span class="glyphicon glyphicon-eye-open"></span>비밀번호 확인</label></br><input type="text"class="form-control"id="confirmPw"placeholder="비밀번호확인"style="width:265px"></div><button id="findPassword"type="button"class="btn btn-success btn-block">확인</button></form></div>'
      );
   };
   return{loginUI : loginUI, joinUI : joinUI,findUI : findUI}
})();


       
                           
      
   
      