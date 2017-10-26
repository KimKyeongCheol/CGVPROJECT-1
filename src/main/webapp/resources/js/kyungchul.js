var kyungchul=kyungchul || {};

kyungchul.main=(()=>{
   var init=(ctx)=>{
	   kyungchul.session.init(ctx);
	   kyungchul.UI.init();
	   kyungchul.logic.init();
   };
   return {
      init : init,
   };
})();

kyungchul.logic=(()=>{
  
	var init=()=>{
		
		$('#member_update').click(()=>{
			alert('업데이트 클릭 !');
			location.href=sessionStorage.getItem('ctx')+"/update";
		});
		
		$('#goHome').click(()=>{
			location.href=sessionStorage.getItem('ctx')+"/home";
		});
		
		$('#qnaWrite').click(()=>{
			$('#qnaTable').empty();
			$('#qnaTable').append(
	'<tr><td ro	wspan="5"><input id="qnaContent" type="text" style="text-align:center; width:800px; height:50px;" placeholder="글을 입력해주세요"/><center><button type="button"id="qnaSubmit"class="round black"><span>글 등록</span></button></center></td></tr>'
	);
			init();
		});
		
		$('#qnaSubmit').click(()=>{
			
			alert('qnaSubmit !!');
			var content=$('#qnaContent').val();
			
			$.ajax({
	            url : sessionStorage.getItem('ctx')+'/post/qna',
	            method : 'POST',
	            data : JSON.stringify({
	               content : content,
	               member_id : sessionStorage.getItem('member_id')
	            }),
	            contentType : 'application/json',
	            success : d =>{
	            	$('#content').empty();
	            	kyungchul.main.init(sessionStorage.getItem('ctx'));
	            },
	            error : (x,s,m)=>{
	               alert('오류발생 : '+m);
	            }             
	         });
		});	
		
		$('#member_delete').click(()=>{
			alert('회원탈퇴 !');
			var pass=prompt("비밀번호를 입력해주세요", "password");
			
			$.ajax({
	            url : sessionStorage.getItem('ctx')+'/delete/member',
	            method : 'POST',
	            data : JSON.stringify({
	               member_id : sessionStorage.getItem('member_id'),
	               pass : pass
	            }),
	            contentType : 'application/json',
	            success : d =>{
	            	if(d.msg=='success'){
	            		alert('회원탈퇴 성공 !');
	            		sessionStorage.removeItem('member_id');
	            		location.href=sessionStorage.getItem('ctx')+"/home";
	            	}else{
	            		alert('회원탈퇴 실패 !');
	            		return false;
	            	}
	            },
	            error : (x,s,m)=>{
	               alert('오류발생 : '+m);
	            }             
	         });
			
		});
		
	};
	
	var update=()=>{
		
		
		if(sessionStorage.getItem('member_id')==null){
			alert('로그인을 먼저 해주세요');
			location.href=sessionStorage.getItem('ctx')+"/loginpage";
		}
		$.ajax({
            url : sessionStorage.getItem('ctx')+'/get/idCheck',
            method : 'POST',
            data : JSON.stringify({
               member_id : sessionStorage.getItem('member_id')
            }),
            contentType : 'application/json',
            success : d =>{
            	$('#profile_img').attr("src",d.member.profile);
         	   $('#member_id').val(d.member.member_id);
         	  $('#name').val(d.member.name);
         	  var phone=d.member.phone;
         	  $('#phone_mid').val(phone.substr(3,4));
         	 $('#phone_last').val(phone.substr(7,4));
         	 var emails=d.member.email.split('@');
         	 $('#email_first').val(emails[0]);
         	 $('#email_input').val(emails[1]);
         	 $('#sample4_postcode').val(d.member.zipcode);
         	 $('#sample4_roadAddress').val(d.member.address);
         	 $('#sample4_jibunAddress').val(d.member.address);
         	
            },
            error : (x,s,m)=>{
               alert('오류발생 : '+m);
            }             
         });
		
		$('#submit').click(()=>{
			var name=$('#name').val();
			  var member_id=$('#member_id').val();
			  var pass=$('#pass1').val();
			  var phone=$('#phone_first').val()+$('#phone_mid').val()+$('#phone_last').val();
			  var email=$('#email_first').val()+'@'+$('#email_input').val();
			  var zipcode=$('#sample4_postcode').val();
			  var address=$('#sample4_roadAddress').val();
			  var profile='default.jpg';
			  
			  $.ajax({
		             url : sessionStorage.getItem('ctx')+'/put/update',
		             method : 'POST',
		             data : JSON.stringify({
		            	 name : name,
		            	 member_id : member_id,
		            	 pass : pass,
		            	 phone : phone,
		            	 email : email,
		            	 zipcode : zipcode,
		            	 address : address,
		            	 profile : profile
		             }),
		             contentType : 'application/json',
		             success : d =>{
		                 if(d.msg=='success'){
		                	 alert('회원정보 수정 성공 !');
		                	 location.href=sessionStorage.getItem('ctx')+"/home";
		                 }else{
		                	 alert('회원정보 수정 실패.. ');
		                	 return false;
		                 }
		                 
		             },
		             error : (x,s,m)=>{
		                alert('오류발생 : '+m);
		             }             
		          });

			  
		});
		
		$('#uploadbutton').click(()=>{
			
			alert('업로드');
			var form = $('FILE_FORM')[0];
			var formData = new FormData(form);
			formData.append("fileObj", $("#img_file")[0].files[0]);
			$.ajax({
				url : sessionStorage.getItem('ctx')+'/file/upload',
				processData : false,
				contentType : false,
				data : formData,
				type : 'POST',
				success : function(d) {
					alert(d);
					alert('사진등록 완료 !');
					$('#profile_img').attr('src',d);
				}
			});

		});
		
		
		
	};

	var movieDetail=(x)=>{
		sessionStorage.setItem('movie_seq',x);
		location.href=sessionStorage.getItem('ctx')+"/movieDetail";
	};
	
	var qnaDelete=(qna_seq)=>{
		
		$.ajax({
            url : sessionStorage.getItem('ctx')+'/put/qnaDelete',
            method : 'POST',
            data : JSON.stringify({
           	 qna_seq : qna_seq
            }),
            contentType : 'application/json',
            success : d =>{
                              
               if(d.msg=='success'){
            	   alert('삭제성공');
            	   
               }else{
            	   alert('삭제실패');
               }
               $('#table_body').empty();
       		
       		$.ajax({
                   url : sessionStorage.getItem('ctx')+'/get/myreservation',
                   method : 'POST',
                   data : JSON.stringify({
                  	 member_id : sessionStorage.getItem('member_id')
                   }),
                   contentType : 'application/json',
                   success : d =>{
                      for(var i=0;i<d.qna.length;i++){
                   	   var regdate=new Date(d.qna[i].regdate);
                   	   var date=regdate.getFullYear()+'-'+(regdate.getMonth()*1+1)+'-'+regdate.getDate();
                   	   $('#table_body').append(
       '<tr><td>'+d.qna[i].qna_seq+'</td><td>'+d.qna[i].content+'</td><td>'+date+'</td><td>'+d.qna[i].riple+'</td><td><a id="qnaDelete" onclick="kyungchul.logic.qnaDelete('+d.qna[i].qna_seq+')">삭제</a></td></tr>'		
                   	   );
                   	   
                      }
                       
                   },
                   error : (x,s,m)=>{
                      alert('오류발생 : '+m);
                   }             
                });
                
            },
            error : (x,s,m)=>{
               alert('오류발생 : '+m);
            }             
         });
		
		
	};
   return {
	   init : init,
	   update : update,
	   movieDetail : movieDetail,
	   qnaDelete : qnaDelete
	   }
})();

kyungchul.UI=(()=>{
	var init=()=>{
		$('#content').append(
'<div class="skipnaiv"></div><div id="cgvwrap"><div id="contents"class=""><div class="col-favorite-theater"><h3 class="hidden">자주가는CGV</h3><div class="sect-favorite"><ul id="favoriteTheaters"><li><a href="#"data-regioncode=""data-theatercode=""></a></li><div class="cols-point-wrap"></div></div></div></div><div class="cols-content"id="menu"><div class="col-aside"><div class="skipnaiv"><a href="#mycgv_contents"id="skipMycgvMenu">MYCGV서브메뉴건너띄기</a></div><h2>MY CGV서브메뉴</h2><div class="snb"><ul><li class="on"><a id="goHome">MY CGV HOME<i></i></a></li><li><a id="member_update">회원정보수정<i></i></a></li><li><a id="member_delete">회원탈퇴 <i></i></a></li></ul><div class="ad-partner01"><iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@M_Rectangle"width="160"height="300"title=""frameborder="0"scrolling="no"marginwidth="0"marginheight="0"id="M_Rectangle"></iframe></div><div class="ad-partner02"><iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Image_text"width="160"height="35"title=""frameborder="0"scrolling="no"marginwidth="0"marginheight="0"id="Image_text"></iframe></div></div></div><div class="col-detail"id="mycgv_contents"><div class="sect-mycgv-reserve movielog col4"><div class="box-polaroid"><div class="box-inner wishlist"><a href="http://www.cgv.co.kr/user/movielog/"title="위시리스트"><h3>위시리스트</h3><span>보고싶은영화들을미리<br>담아두고싶다면?</span></a></div><div class="box-inner watched"><a href=""title="내가 본 영화"><h3>내가본영화</h3><span>관람한영화들을한번에<br>모아보고싶다면?</span></a></div><div class="box-inner mvdiary"><a href=""title="무비다이어리"><h3>무비다이어리</h3><span>관람후내감상평을적어<br>추억하고싶다면?</span></a></div><div class="box-inner photi"><a href=""target="_blank"><h3>포토티켓</h3><span>단하나뿐인나만의<br>티켓을간직하고싶다면?</span></a></div></div></div><div class="tit-mycgv"><h3>MY예매내역</h3><p><em>0건</em><a href="">예매내역더보기</a></p><span>예매번호로만티켓을찾을수있으니반드시확인부탁드립니다.</span></div><form name="aspnetForm"method="post"action="./"id="aspnetForm"><div><input type="hidden"name="__EVENTTARGET"id="__EVENTTARGET"value=""><input type="hidden"name="__EVENTARGUMENT"id="__EVENTARGUMENT"value=""><input type="hidden"name="__VIEWSTATE"id="__VIEWSTATE"value="/wEPDwUKMjAzNjI1MTIzN2Rkb61/wKC2wl92h7iknOS3c2nC6AQ="></div><div><input type="hidden"name="__VIEWSTATEGENERATOR"id="__VIEWSTATEGENERATOR"value="F268F2D4"><input type="hidden"name="__EVENTVALIDATION"id="__EVENTVALIDATION"value="/wEdAANEBwag/p6Cyp7NqgHffiIrAAaiyC+ogOIlg3pscMtiP2lKUwCIH8TI/sjrTPJzW34iVv8t0sMzGIw9AmgL9DZ3cbnRDQ=="></div><!--팝업시작--><!--팝업노출시.layer-wrap에클래스.off는없애고.on추가해주세요.--><div class="layer-wrap pop_corp_session logpopup off"><div class="pop_wrap"><h1>자동로그아웃안내</h1><button type="button"class="btn-close">자동로그아웃안내팝업닫기</button><div class="pop-contents"><div class="sect-corp-session"><div class="cf ss_con_wrap"><h5>자동로그아웃남은시간:<span class="col_red"><em><span id="expTime"></span></em>초</span></h5><p>로그인시간을연장하시려면<br>로그인연장버튼을클릭해주세요.</p></div><div class="cf ss_btn_wrap"><a id="ctl00_ctl00_PlaceHolderContent_ChildPlaceHolderContents_LinkButton1"class="round inblack"href="javascript:__doPostBack(ctl00$ctl00$PlaceHolderContent$ChildPlaceHolderContents$LinkButton1)"><span>로그인연장</span></a><a id="ctl00_ctl00_PlaceHolderContent_ChildPlaceHolderContents_LinkButton2"class="round gray"href="javascript:__doPostBack(ctl00$ctl00$PlaceHolderContent$ChildPlaceHolderContents$LinkButton2)"><span>로그아웃</span></a></div></div></div></div></div><input type="hidden"id="hidCancelReserveNo"name="hidCancelReserveNo"><div class="sect-base-booking"><div class="box-polaroid"><div class="box-inner" id="reservationImg"></div></div></div></form><div class="sect-mycgv-part"><form name="aspnetForm"method="post"action="./list.aspx"id="aspnetForm"novalidate="novalidate"><div><input type="hidden"name="__VIEWSTATE"id="__VIEWSTATE"value="/wEPDwUKMjAyMTIyMTg0MmRku2RkFAvCkD19J2zWnHfTY+qaCQ0="></div><div><input type="hidden"name="__VIEWSTATEGENERATOR"id="__VIEWSTATEGENERATOR"value="D1AE53DC"></div><div class="tit-mycgv"><h3>나의문의내역</h3></div><div class="tit-mycgv"><h4>1:1문의</h4></div><div class="set-btn"><p class="del">총<strong class="txt-red" id="qnaTotal">0</strong>건<button type="button"id="qnaWrite"class="round black"><span>글쓰기</span></button></p></div><div class="tbl-data"><table summary="문의내역 및 답변내역에 대한 정보 제공" id="qnaTable"><caption>나의1:1문의내역</caption><colgroup><col width="9%"><col width="*"><col width="11%"><col width="30%"><col width="10%"></colgroup><thead><tr><th scope="col"><input type="checkbox"id="chkAllItem"name="chkAllItem"><label for="chkAllItem">번호</label></th><th scope="col">문의내용</th><th scope="col">등록일</th><th scope="col">답변</th><th scope="col">삭제여부</th></tr></thead><tbody id="table_body"></tbody></table></div><!--?xml version="1.0"encoding="utf-8"?--><div class="paging"></div></form></div><form name="targetform"id="targetform"method="post"novalidate="novalidate"><input type="hidden"name="reverse_no"id="reverse_no"></form></div></div></div></div></div><div id="ctl00_ctl00_sect_person_right"class="sect-aside-banner"style="padding: 0; margin: 0; position: fixed; z-index: 1;"><div class="aside-content-top"><div class="aside-content-btm"><a href="/theaters/"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_theater.gif"alt="CGV THEATER"></a><a href="/arthouse/"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_arthouse.gif"alt="CGV arthouse"></a><a href="/theaters/special/"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_special.gif"alt="CGV SPECIAL"></a><a href="http://phototicket.cgv.co.kr/"target="_blank"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_phototicket.gif"alt="CGV 포토티켓"></a><a href="/user/mycgv/reserve/"class="required-login"data-url="/user/mycgv/reserve/"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_ticket.gif"alt="CGV TICKET INFO"></a><a href="http://section.cgv.co.kr/discount/Special/discount/Default.aspx"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_discount.gif"alt="CGV DISCOUNT INFO"></a></div></div><div class="btn-top"><a href="#"onclick="scrollTo(0,0);return false;"><span>최상단으로이동</span></a></div></div>'		
		);
		$('#mycgv_contents').offset({left:200});
		
		$.ajax({
            url : sessionStorage.getItem('ctx')+'/get/myreservation',
            method : 'POST',
            data : JSON.stringify({
           	 member_id : sessionStorage.getItem('member_id')
            }),
            contentType : 'application/json',
            success : d =>{
               for(var i=0;i<d.myreservation.length;i++){
            	   $('#reservationImg').append(
 '<img src="'+d.myreservation[i].poster+'" onclick="kyungchul.logic.movieDetail('+d.myreservation[i].movie_seq+')"></img>'	   
            	   );
               }
               
               $('#qnaTotal').text(d.qna.length);
               for(var i=0;i<d.qna.length;i++){
            	   var regdate=new Date(d.qna[i].regdate);
            	   var date=regdate.getFullYear()+'-'+(regdate.getMonth()*1+1)+'-'+regdate.getDate();
            	   $('#table_body').append(
'<tr><td>'+d.qna[i].qna_seq+'</td><td>'+d.qna[i].content+'</td><td>'+date+'</td><td>'+d.qna[i].riple+'</td><td><a id="qnaDelete" onclick="kyungchul.logic.qnaDelete('+d.qna[i].qna_seq+')">삭제</a></td></tr>'		
            	   );
            	   
               }
                
            },
            error : (x,s,m)=>{
               alert('오류발생 : '+m);
            }             
         });
		
		
	};
	
	
	return {
		init : init
	};
})();


kyungchul.session=
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




       
                           
      
   
      