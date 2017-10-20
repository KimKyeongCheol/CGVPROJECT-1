<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
    <meta charset="utf-8"/>
    <title>회원정보 수정 비밀번호입력│CJ ONE</title>
	<meta name="Description" content="CJ ONE 회원 가입 시, 입력하신 회원님의 정보를 최신정보로 수정하실 수 있습니다." />
    <meta http-equiv="X-UA-Compatible" content="IE=edge ,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes">
	<meta name="format-detection" content="telephone=no" />
	<meta http-equiv="Cache-Control" content="no-cache" />
	<meta http-equiv="Pragma" content="no-cache" />
	
	<link rel="shortcut icon" href="/cjmweb/images/ico/favicon.ico" type="images/x-ico" />
	<link rel="alternate" href="https://m.cjone.com:8443/cjmmobile/setup/mbrMdfPassChk.do" />
	<script type="text/javascript">
		var contextPath = '/cjmweb';
	</script>
	<script src="/cjmweb/js/jquery-1.11.3.min.js"></script>
	<script src="/cjmweb/js/common.js"></script>
	<script src="/cjmweb/js/form.validate.js"></script>
	
	 
	<link rel="stylesheet" href="/cjmweb/css/base.css" >
	<link rel='stylesheet' href='/cjmweb/css/mypage.css' > 

	
	
		
			<script>
			  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
			  ga('create', 'UA-17703059-2', 'auto');
			  ga('send', 'pageview');
			</script>
		
		
	
	
	
	  
	  <script type="text/javascript">
		
		var digitalData={
				page:{
					pageInfo:{
						pageName:"[P]회원^회원정보 수정^비밀번호 재입력",
						siteType:"P",
						LayerPageName:""
								}
						},
				user:{
					loginStatus:"logged in",
					custID:"9990014023280",
					level:"10"
					},
				shop:{
					location:"",
					brand:"",
					name:""
					},
				consult:{
					type:""
					},
				myshop:{
					name:"",
					brand:""
					},
				click:{
					track:""
				}
			};
		
	
	  </script>
	  <script src="//assets.adobedtm.com/81654681a53723e7e24e9d28bcbbae479c047b65/satelliteLib-e1b7fc64ff48523381d135a16bae0d60c92eebf0.js"></script>
	  
</head>




<body>
<!--skip navigation-->
<div class="skipNavi">
	<a href="#contentsWrap">본문으로 바로가기</a>
</div>
<!--//skip navigation-->

<div id="bodyWrap" class="wide">
	
	<!--header-->
	






<script type="text/javascript">

function search(){
	var search_keyword = $("#search_keyword").val();
   	if($(".tSearch").hasClass("on")) {
   		
   		if(search_keyword.trim().length == 0) {
   			alert("검색어를 입력해주세요.");
			$("#search_keyword").focus();
			return false;   			
   		}
   		
   		if(search_keyword.trim().length > 20) {
			alert("검색어는 최대 20자까지 검색 가능합니다.");
			$("#search_keyword").focus();
			return false;
		}

   		ga('send', 'event', 'Header 영역', '통합검색', '통합검색');
   		digitalData.click.track= "Header^통합검색";
   		_satellite.track('clicks');
		//$("#h_search_keyword").val(encodeURIComponent(search_keyword));
		//$("#headerFrm").attr("action", "http://www.cjone.com/cjmweb/search.do?h_search_keyword=" + encodeURIComponent(search_keyword));
		$("#h_search_keyword").val(search_keyword);
		$("#headerFrm").attr("action", "http://www.cjone.com/cjmweb/search.do?h_search_keyword=" + search_keyword);
		$("#headerFrm").submit();
    }	
};

function goStore() {
	cjone.openModal('/cjmweb/layer/store/search.do');
}


//DashBoard 관련 function 
var isFirstDashOpen = false;
$(function () {
   /**
    * 대시보드 열기/ 닫기:
    **/
    $('[data-control="personalInfo"]').on({
        'click': function (e) {
            e.preventDefault();
            personalInfoAction();
        }
    });
    
	// ie8에서 trim()함수 오류로 인한 정의
    if(typeof String.prototype.trim !== 'function') {
    	String.prototype.trim = function() {
    	    return this.replace(/^\s+|\s+$/g, ''); 
    	};
    }
    
});


//DashBoard html 불러오기
function personalInfoAction() {
	if(loginCheck() == true){
		if(isFirstDashOpen == false){
			var $appendArea = $('#personalInfo');
			var t = new Date().getTime();
			$.ajax({
				url: '/cjmweb/common/layer/dash-board-action.do?t='+t
	        }).done(function (html) {
	            var $html = $(html).find('div:eq(0)').parent();
	            $appendArea.html($html).show();
	            isFirstDashOpen = true;
	    		var $this = $('[data-control="personalInfo"]');
	    	    $this.triggerHandler('toggle');
	    	    // Google Analytics
	    		ga('send', 'event', 'Header 영역', 'NOW', 'NOW');
	    	    // Adobe Analytics
	       		digitalData.click.track= "Header^NOW";
	       		_satellite.track('clicks');
	    	    $("#noticeList_box").scroll( function() {
	   	    	  	var elem = $("#noticeList_box");
	   	    	  	if ( elem[0].scrollHeight - elem.scrollTop() == elem.outerHeight()){
	   	    		  notifyMessageAction();
	   	    	  	}
	    	    });
	    	    $('[data-control="randomNum"]').charMotion('runUp');
	    	    $('[data-control="tooltip"]').tooltip();
	    	    $('[data-control="scrollView"]').scrollview();	    	    
	    	    
	        });
		}else{
			var $this = $('[data-control="personalInfo"]');
		    $this.triggerHandler('toggle');
		 // Google Analytics
			ga('send', 'event', 'Header 영역', 'NOW', 'NOW');
			// Adobe Analytics
       		digitalData.click.track= "Header^NOW";
       		_satellite.track('clicks');
		}    
	}else{
		linkLogin();
	}
}


//알림정보 추가 조회
var noti_page_num = 1 ;
var readProcessResult = false;
function notifyMessageAction(page_num){
	if(noti_page_num == 99) return; //더이상 조회할건 없음.
	
	noti_page_num = noti_page_num + 1;
	
	$.ajax({
        url : '/cjmweb/layer/notify/notify-list.do',
        dataType : 'json',
        data : 'page_num='+noti_page_num,
        async : true,
        type : 'POST',
        error : function(err) { 
        },
        success : function(response, statusText) {
        	if (response.notifylist != undefined && response.notifylist != null && response.notifylist.length > 0) {
        		makeList(response.notifylist);
        		if(response.notifylist < 10){
        			noti_page_num = 99; //추가조회 없음
        		}
        	}else{
        		noti_page_num = 99; //추가조회 없음
        	}
        }
	});
}

//알림 리스트 생성
function makeList (jsonList) {
	if (jsonList != undefined && jsonList != null && jsonList.length > 0){ 
		$(jsonList).each(function(index,data) {				
			 html ="";
			 html += '<li>';
			 if(data.read_yn == "Y"){
				 html +='<a class="visited" href="javascript:goNotifyAction('+ data.notify_seq +','+ data.notify_link_url +')">';
			 }else{
				 html +='<a href="javascript:goNotifyAction('+ data.notify_seq +','+ data.notify_link_url +')">';
			 }
			 
			 if(data.notify_section_name != "" && data.notify_section_name != undefined ) {
				 html += '	<p>['+ data.notify_section_name +'] '+ data.notify_msg +'</p>';	 
			 } else {
				 html += '	<p>'+ data.notify_msg +'</p>';
			 }
			 
			 html += '	<span class="date">' + data.aprv_fr_dy +' ' + data.reg_time + '</span>';
			 html += '</a>';
			 html += '</li>';

			 $("#noticeList").append(html);
		});
	}
}

//알림 상세로 이동
function goNotifyAction(notify_seq,link_url){
	if(readNotifyAction(notify_seq) == true ){
		ga('send', 'event', 'MY Dash Board 영역', '알림메세지', '알림메세지');		
		$(location).attr("href",link_url);
	}
}

//알림 읽음처리
function readNotifyAction(notify_seq){
	$.ajax({
        url : '/cjmweb/layer/notify/notify-read.do',
        dataType : 'json',
        data : 'notify_seq='+notify_seq,
        async : false,
        type : 'POST',
        error : function(err) { 
        	readProcessResult = false;
        },
        success : function(response, statusText) {
        	if(statusText == 'success'){
        		readProcessResult = true;
        	}else{
        		readProcessResult = false;
        	}
        }
	});
	return readProcessResult;
}
	
function linkLogin() {
	var current = location.href;
	var rtn = '';
	if(current.indexOf('/cjmweb/main.do')> -1) {
		rtn = 'http://www.cjone.com/cjmweb/main.do?s=m';
		rtn = '?return_url='+encodeURI(rtn);
	}
	location.href = 'https://www.cjone.com/cjmweb/login.do'+rtn;
}

function linkCardMng() {
	if( !loginCheck() ) {
		if(confirm('카드 등록을 위해 로그인이 필요합니다.\n계속 진행하시겠습니까?')) {
			//location.href='https://www.cjone.com/cjmweb/my-one/card.do';
			$(location).attr('href', '/cjmweb/login.do?return_url='+escape('https://www.cjone.com/cjmweb/my-one/card.do'));
			return false;
		}
	} else {
		location.href='https://www.cjone.com/cjmweb/my-one/card.do';
		return false;
	}
	return false;
}

</script>
<form id="headerFrm" method="get">
	<input type="hidden" name="h_search_keyword" id="h_search_keyword">
</form>
	<!-- 참여사 관련 판단 로직 변경 2016-06-20 pjh0416 -->
    
	<div id="headerWrap">
	<!-- on시 height:313px 로 해주세요. css 에 넣어서 important 를 넣을 경우 animation 이 안일어납니다.-->
		<!--header inner-->
		<div class="header_wrap">
			<h1>
				
				
				
					
					
						
					
				
				
				<a href="http://www.cjone.com/cjmweb/main.do" onclick="ga('send', 'event', 'BI', 'SUB BI', 'SUB BI');">
					<img src="/cjmweb/images/common/logo_cjone.png" alt="CJ ONE" />
				</a>
			</h1>
			<!-- 20160315 -->
			<div class="bg_dim">
			<!-- //20160315 -->
				<div id="navi" class="hide">
					<!-- 20160315 -->
					<h2 class="mobile">메뉴 전체보기</h2>
					<!-- //20160315 -->
					<!-- 20160315 -->
					<div class="menu_scroll">
					<!-- //20160315 -->						
						<dl class="util">
							<dt class="haze">유틸메뉴</dt>
							
		            		<dd class="logOut"><a href="https://www.cjone.com/cjmweb/newsso/ssologout.jsp"  onclick="ga('send', 'event', 'Header 영역', '로그아웃', '로그아웃');" data-track="Header^로그아웃"><span>로그아웃</span></a></dd>
							<dd class="join"><a href="https://www.cjone.com/cjmweb/member/passwd.do"  onclick="ga('send', 'event', 'Header 영역', '회원정보수정', '회원정보수정');" data-track="Header^회원정보수정"><span>회원정보수정</span></a></dd>
							
							
							<dd class="mobile"><a href="http://www.cjone.com/cjmweb/vip.do"  onclick="ga('send', 'event', 'Header 영역', 'VIP라운지', 'VIP라운지');" data-track="Header^VIP라운지"><span>VIP라운지</span></a></dd>
							<dd class="store"><a href="http://www.cjone.com/cjmweb/find-store.do"  onclick="ga('send', 'event', 'Header 영역', '매장찾기', '매장찾기');" data-track="Header^매장찾기"><span>매장찾기</span></a></dd>
							<dd class="go_cscenter mobile"><a href="#go_cscenter" data-control="toggleGnb" title="고객센터 열기" class="link" data-open-text="고객센터 닫기" data-close-text="고객센터 열기"><span>고객센터</span></a>
								<ul id="go_cscenter" class="hide">
									<li><a href="http://www.cjone.com/cjmweb/customer/faq.do" onclick="ga('send', 'event', 'Header 영역', '고객센터', '자주 찾는 질문');" data-track="Header^고객센터|자주 찾는 질문"><span>자주 찾는 질문</span></a></li>
									<li><a href="https://www.cjone.com/cjmweb/customer/counseling/apply.do" onclick="ga('send', 'event', 'Header 영역', '고객센터', '1:1상담');" data-track="Header^고객센터|1:1상담"><span>1:1상담</span></a></li>
									<li><a href="http://www.cjone.com/cjmweb/customer/news-notice.do" onclick="ga('send', 'event', 'Header 영역', '고객센터', '뉴스&공지');" data-track="Header^고객센터|뉴스&공지"><span>뉴스&amp;공지</span></a></li>
								</ul>
							</dd>
							<dd class="card">
								<a href="javascript:;" onclick="ga('send', 'event', 'Header 영역', '카드등록', '카드등록');linkCardMng();"><span>카드등록</span></a>
							</dd>
						</dl>
		                
						
						<div id="gnb">
							<ul class="gnb_1depth" data-control="accordionGnb">
								<li class="depth1"><a href="http://www.cjone.com/cjmweb/about-cjone.do" onclick="ga('send', 'event', 'GNB 영역', 'CJ ONE소개', 'CJ ONE소개');" class="link_1depth" data-track="GNB^CJ ONE소개" >CJ ONE 소개</a></li>
								<li class="depth1"><a href="http://www.cjone.com/cjmweb/point-card/guide.do" onclick="ga('send', 'event', 'GNB 영역', '포인트/카드', '포인트/카드');" class="link_1depth" data-track="GNB^포인트/카드|포인트/카드">포인트/카드</a>
									<ul class="gnb_2depth" data-event="gnb">
										<li><a href="http://www.cjone.com/cjmweb/point-card/guide.do" onclick="ga('send', 'event', 'GNB 영역', '포인트/카드', '포인트 적립/사용');" class="link_2depth"><span>포인트 적립/사용</span></a></li>
										<li><a href="http://www.cjone.com/cjmweb/point-card/brand.do" onclick="ga('send', 'event', 'GNB 영역', '포인트/카드', '제휴 브랜드');" class="link_2depth"><span>제휴 브랜드</span></a></li>
										<li><a href="http://www.cjone.com/cjmweb/point-card/bonus-point.do" onclick="ga('send', 'event', 'GNB 영역', '포인트/카드', '보너스포인트');" class="link_2depth"><span>보너스포인트</span></a></li>
										<li><a href="http://www.cjone.com/cjmweb/point-card/point-donation.do" onclick="ga('send', 'event', 'GNB 영역', '포인트/카드', '포인트 기부');" class="link_2depth"><span>포인트 기부</span></a></li>
												
											<li><a href="https://www.cjone.com/cjmweb/point-card/point-gift/point-detail.do" onclick="ga('send', 'event', 'GNB 영역', '포인트/카드', '포인트 선물');" class="link_2depth" data-track="GNB^포인트/카드|포인트 선물"><span>포인트 선물</span></a></li>
										
										<li><a href="http://www.cjone.com/cjmweb/point-card/point-conversion.do" onclick="ga('send', 'event', 'GNB 영역', '포인트/카드', '포인트 전환');" class="link_2depth" data-track="GNB^포인트/카드|포인트 전환"><span>포인트 전환</span></a></li>
										<li><a href="http://www.cjone.com/cjmweb/point-card/gift-point.do" onclick="ga('send', 'event', 'GNB 영역', '포인트/카드', '기프트포인트 등록');" class="link_2depth" data-track="GNB^포인트/카드|기프트포인트 등록"><span>기프트포인트 등록</span></a></li>
										<li><a href="http://www.cjone.com/cjmweb/point-card/branded-card.do" onclick="ga('send', 'event', 'GNB 영역', '포인트/카드', '제휴 신용카드 안내');" class="link_2depth" data-track="GNB^포인트/카드|제휴 신용카드 안내"><span>제휴 신용카드 안내</span></a></li>
									</ul>
								</li>
								<li class="depth1"><a href="http://www.cjone.com/cjmweb/event-coupon/event.do" onclick="ga('send', 'event', 'GNB 영역', '이벤트/쿠폰', '이벤트/쿠폰');" class="link_1depth" data-track="GNB^이벤트/쿠폰|이벤트/쿠폰">이벤트/쿠폰</a>
									<ul class="gnb_2depth" data-event="gnb">
										<li><a href="http://www.cjone.com/cjmweb/event-coupon/event.do" onclick="ga('send', 'event', 'GNB 영역', '이벤트/쿠폰', '이벤트');" class="link_2depth" data-track="GNB^이벤트/쿠폰|이벤트"><span>이벤트</span></a></li>
										<li><a href="http://www.cjone.com/cjmweb/event-coupon/coupon.do" onclick="ga('send', 'event', 'GNB 영역', '이벤트/쿠폰', '쿠폰');" class="link_2depth" data-track="GNB^이벤트/쿠폰|쿠폰"><span>쿠폰</span></a></li>
										<li><a href="http://www.cjone.com/cjmweb/event-coupon/stamp/list.do" onclick="ga('send', 'event', 'GNB 영역', '이벤트/쿠폰', '득템프');" class="link_2depth" data-track="GNB^이벤트/쿠폰|득템프"><span>득템프</span></a></li>
									</ul>
								</li>
								<li class="depth1"><a href="http://www.cjone.com/cjmweb/shopping/list.do"  onclick="ga('send', 'event', 'GNB 영역', 'ONE콘', 'ONE콘');" class="link_1depth" data-track="GNB^ONE콘">ONE콘</a></li>
								<!--  기프트카드 메뉴  -->
								<li class="depth1"><a href="http://www.cjone.com/cjmweb/cash/cashmain.do" onclick="ga('send', 'event', 'GNB 영역', '기프트카드', '기프트카드');" class="link_1depth"  data-track="GNB^기프트카드|기프트카드">기프트카드</a>
									<ul class="gnb_2depth" data-event="gnb">
										<li><a href="http://www.cjone.com/cjmweb/cash/cashmain.do" onclick="ga('send', 'event', 'GNB 영역', '기프트카드', '나의 기프트카드');" class="link_2depth" data-track="GNB^기프트카드|나의 기프트카드"><span>나의 기프트카드</span></a></li>
										<li><a href="http://www.cjone.com/cjmweb/cash/cashinfo.do" onclick="ga('send', 'event', 'GNB 영역', '기프트카드', '기프트카드 안내');" class="link_2depth" data-track="GNB^기프트카드|기프트카드 안내"><span>기프트카드 안내</span></a></li>
										<li><a href="http://www.cjone.com/cjmweb/cash/cashreg.do"  onclick="ga('send', 'event', 'GNB 영역', '기프트카드', '등록');" class="link_2depth" data-track="GNB^기프트카드|등록"><span>등록</span></a></li>
										<li><a href="https://www.cjone.com/cjmweb/cash/cashPurcList.do"  onclick="ga('send', 'event', 'GNB 영역', '기프트카드', '구매/선물');" class="link_2depth" data-track="GNB^기프트카드|구매/선물"><span>구매 / 선물</span></a></li>							
										<li><a href="http://www.cjone.com/cjmweb/cash/cashSendPrsntList.do" onclick="ga('send', 'event', 'GNB 영역', '기프트카드', '선물함');" class="link_2depth" data-track="GNB^기프트카드|선물함"><span>선물함</span></a></li>										 
									</ul>
								</li>						
								<li class="depth1 last"><a href="https://www.cjone.com/cjmweb/my-one/recommend.do"  onclick="ga('send', 'event', 'GNB 영역', '나의 ONE', '나의 ONE');" class="link_1depth" data-track="GNB^나의 ONE|나의 ONE">나의 ONE</a>
									<ul class="gnb_2depth" data-event="gnb">
										<li><a href="https://www.cjone.com/cjmweb/my-one/recommend.do"  onclick="ga('send', 'event', 'GNB 영역', '나의 ONE', '나의 ONE');" class="link_2depth" data-track="GNB^나의 ONE|나의 ONE"><span>나의 ONE</span></a></li>
										<li><a href="https://www.cjone.com/cjmweb/my-one/point.do" onclick="ga('send', 'event', 'GNB 영역', '나의 ONE', '나의 포인트');" class="link_2depth" data-track="GNB^나의 ONE|나의 포인트"><span>나의 포인트</span></a></li>
										<li><a href="javascript:;" onclick="ga('send', 'event', 'GNB 영역', '나의 ONE', '카드 관리/변경');linkCardMng();return false;" class="link_2depth" data-track="GNB^나의 ONE|카드 관리/변경"><span>카드 관리/변경</span></a></li>
										<li><a href="https://www.cjone.com/cjmweb/my-one/coupon.do" onclick="ga('send', 'event', 'GNB 영역', '나의 ONE', '나의 쿠폰');" class="link_2depth" data-track="GNB^나의 ONE|나의 쿠폰"><span>나의 쿠폰</span></a></li>
										<li><a href="https://www.cjone.com/cjmweb/my-one/event.do" onclick="ga('send', 'event', 'GNB 영역', '나의 ONE', '응모한 이벤트');" class="link_2depth" data-track="GNB^나의 ONE|응모한 이벤트"><span>응모한 이벤트</span></a></li>
										<li><a href="https://www.cjone.com/cjmweb/my-one/shopping.do" onclick="ga('send', 'event', 'GNB 영역', '나의 ONE', 'ONE콘 구매내역');" class="link_2depth" data-track="GNB^나의 ONE|ONE콘 구매내역"><span>ONE콘 구매내역</span></a></li>
										<li><a href="https://www.cjone.com/cjmweb/my-one/counseling.do" onclick="ga('send', 'event', 'GNB 영역', '나의 ONE', '나의 상담내역');" class="link_2depth" data-track="GNB^나의 ONE|나의 상담내역"><span>나의 상담내역</span></a></li>
									</ul>
								</li>
							</ul>
							<!--<button type="button" class="close" data-event="gnb_close">전체메뉴닫기</button>-->
							<button type="button" class="close" data-control="gnbClose">전체메뉴닫기</button>
						</div>
						
					<!-- 20160315 -->
					</div>
					<!-- //20160315 -->				
				</div>
			<!-- 20160315 -->
			</div>
			<!-- //20160315 -->
			<dl class="myInfo">
				<dt class="haze">개인화 컨텐츠</dt>
				<dd class="viewNavi"><a href="#navi" data-control="smallGnbButton"><img src="/cjmweb/images/common/btn_gnb_open.png" alt="메뉴보기" data-handler="toggleText"></a></dd>
				<dd class="tSearch" data-handler="searchTag"><!-- 클릭 시, 클래스 on 추가 -->
					<span class="btn_open"><a href="#global_search" class="open" data-control="toggleSearch" data-submit-text="검색입력서식 보내기" data-close-text="검색입력서식 열기" data-open-text="검색입력서식 닫기" title="검색입력서식 열기">검색입력서식 열기</a></span>
				</dd>
				<dd class="onester">
					<span class="btn_open">
						<a href="#personalInfo" data-control="personalInfo" data-close-text="나의정보 열기" data-open-text="나의정보 닫기">
                            <!-- 최초 진입 시 -->
                            <span class="img_wrap nowload" data-file-url="/cjmweb/images/common/onester/appear_[number].png" data-start-num="00000" data-end-num="00056">
                                <img src="/cjmweb/images/common/onester/appear_00056.png" alt=""><!-- appear_00000 ~ appear_00056 -->
                            </span>
                            <!-- 평상 시 -->
                            <span class="img_wrap normal hide" data-file-url="/cjmweb/images/common/onester/loop_[number].png" data-start-num="00000" data-end-num="00081">
                                <img src="/cjmweb/images/common/onester/loop_00000.png" alt=""><!-- loop_00000 ~ loop_00081 -->
                            </span>
                            <!-- 대시보드 오픈 시 -->
                            <span class="img_wrap dash_open hide" data-file-url="/cjmweb/images/common/onester/myIn_[number].png" data-start-num="00000" data-end-num="00016">
                                <img src="/cjmweb/images/common/onester/myIn_00000.png" alt=""><!-- myIn_00000 ~ myIn_00016 -->
                            </span>
                            <!-- 대시보드 닫기 시 -->
                            <span class="img_wrap dash_close hide" data-file-url="/cjmweb/images/common/onester/myOut_[number].png" data-start-num="00000" data-end-num="00015">
                                <img src="/cjmweb/images/common/onester/myOut_00000.png" alt=""><!-- myOut_00000 ~ myOut_00015 -->
                            </span>
							<span class="haze">나의정보 열기</span>
						</a>
					</span>
				</dd>
			</dl>
		</div>
		<!--//header inner-->
		<!-- global search -->
		<div id="global_search" class="global_search"><!-- 활성화 시, 클래스 on 추가 -->
			<div class="search_sec">
				<div class="search_box">
					<span class="input_txt"><input type="text" id="search_keyword" maxlength="200" class="text" value="" name="search_keyword" title="검색어 입력란" placeholder="검색어를 입력해주세요." onkeypress="if(event.keyCode==13){ search(); return false; };"></span>
					<button type="button" class="btn btn_search" onclick="search();"><span>검색</span></button>
				</div>
			</div>
		</div>		
		<!-- //global search -->
		
		<!-- personal + alarm notice -->
		<div id="personalInfo" name="personalInfo" class="personalInfo" >
			<h2 class="haze">나의 정보</h2>
		</div>
		<!-- //personal + alarm notice -->
		
	</div>


	<!--//header-->
	
	<!--contents-->
	<div id="contentsWrap">
		<form id="form1" method="post"  action="" >
			<input type="hidden" name="coopco_cd" id="coopco_cd" value="7010">
			<input type="hidden" name="brnd_cd" id="brnd_cd"  value="1000">
			<input type="hidden" name="mcht_no" id="mcht_no" value="0000">
			<input type="hidden" name="coop_return_url" id="coop_return_url" value="">
			<input type="hidden" name="__chkpwd" id="__chkpwd" value="">
			<input type="hidden" name="pwd" id="security_pwd" value="">
		</form>		
		<input type="hidden" name="tmpField" >
		<div id="contents">
			<div class="location_wrap">
				<div class="location"><a href="http://www.cjone.com/cjmweb/main.do" class="home"><span class="haze">홈</span></a><a href="https://www.cjone.com/cjmweb/member/passwd.do" class="now"><span>회원정보 수정</span></a></div>
			</div>
			<div class="cont_header">
				<h1 class="h1_tit">회원정보 수정</h1>
				<p class="h_desc">회원님의 소중한 정보를 안전하게 관리하세요.</p>
			</div>
			<div class="cont_area">
				<div class="mypage_sec modify">

					<div class="regi_complete">
						<span class="bg bg face_type2"></span>
						<p class="h2_tit">회원정보를 수정하시려면 비밀번호를 입력하셔야 합니다.</p>
						<p class="h_desc">회원님의 개인정보 보호를 위한 본인 확인 절차이오니, CJ ONE 회원 로그인 시 사용하시는 비밀번호를 입력해주세요.</p>
						<div class="pwd_box">
							<span class="input_txt w330">
								<input type="password" id="pwd" class="text" placeholder="비밀번호를 입력해주세요." title="비밀번호" maxlength="20">
							</span>
						</div>
						<div class="btn_center">
							<button type="button" onclick="javascript:goCancel();" class="btn">취소</button>
							<button type="button" onclick="javascript:goCheck();" class="btn btn_em">확인</button>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!--//contents-->
	
	<!--footer-->	
    <div id="footer">
    	



<script type="text/javascript">if(typeof _satellite !== "undefined" && _satellite) {_satellite.pageBottom();}</script>
<script type="text/javascript">
// footer 이벤트 선택 함수(1=이용약관,2=이전이용약관, 3=ARS 본인인증,4=법적고지, 5=이메일무단수집거부, 6=사이트맵, 그이외 개인정보취급)
function goFooterMenu(type){
	var pageUrl="";
	if("1"==type){
		pageUrl="http://www.cjone.com/cjmweb/terms.do?type="+type;
		location.href=pageUrl;
	}
	else if("2"==type){
		pageUrl="http://www.cjone.com/cjmweb/previous-terms.do?type="+type;
		location.href=pageUrl;
	}
	else if("3"==type){
		pageUrl="/cjmweb/layer/verify-account.do?type="+type;	
		cjone.openModal(pageUrl);
	}
	else if("4"==type){
		pageUrl="/cjmweb/layer/legal-notices.do?type="+type;	
		cjone.openModal(pageUrl);
	}
	else if("5"==type){
		pageUrl="/cjmweb/layer/email-security.do?type="+type;	
		cjone.openModal(pageUrl);
	}
	else if("6"==type){
		pageUrl="http://www.cjone.com/cjmweb/sitemap.do?type="+type;
		location.href=pageUrl;
	}
	// 등록일 format(yyyymmdd)
	else{
		if(""==type){
			pageUrl="http://www.cjone.com/cjmweb/privacy.do?privacyDate="+type+"&recent_yn=Y";

			location.href=pageUrl;
		}
		else{
			pageUrl="http://www.cjone.com/cjmweb/privacy.do?privacyDate="+type+"&recent_yn=N";
			location.href=pageUrl;
		}
	}
}
</script>

<div class="footer_wrap">			
	
	<div class="site_info">
		<span class="ceo_info">대표이사 이경배</span>
		<address>주소 04320 서울시 용산구 한강대로 366 트윈시티 10~14층 (동자동 56)</address>
		<span class="customer_info">CJ ONE 고객센터 1577-8888</span>
		<span class="license_num">사업자 등록번호 104-81-36565</span>
		<span class="privacy_info">개인정보보호책임자 박재광</span>
	</div>
	<p class="copyright">
		<span class="img"><img src="/cjmweb/images/common/logo_cjolivenetworks_footer.png" alt="CJ 올리브넥트웍스"></span>
		Copyright (c)2016 CJ OLIVENETWORKS. All Rights Reserved
	</p>
	
	<div class="fixedTop" data-control="goTop" ><a href="#headerWrap" title="페이지 처음으로 이동"><span class="haze">TOP</span></a></div>
	
</div>

    </div>
	<!--//footer-->	
	
</div>	
<!--script 영역-->
    <script src="/cjmweb/js/modules/cjoneCore.js"></script>
    <script src="/cjmweb/js/modules/commonUi.js"></script>
    <script src="/cjmweb/js/frontUi.js"></script>
    <script src="/cjmweb/js/modules/jquery.bxslider.js"></script>
    
    <script>
	    $(document).ready(function(){
			
			enterKey("pwd","goCheck()");
		});
        
		// 취소
		function goCancel() {
			$("#form1").attr("action", "http://www.cjone.com/cjmweb/main.do");
			$("#form1").submit();
		} 
		
		// 비밀번호 확인 
		function goCheck() {
			if($("#pwd").val() == ""){
				alert('비밀번호를 입력해 주세요.');
				$("#pwd").focus();
			}else{
				//var params = encodeURI($('#form1').serialize());
				$('#security_pwd').val(BASE64.encode($('#pwd').val()));
				var params = $('#form1').serialize();
				$.ajax({
			 		url: "/cjmweb/member/passwd-check.do",	
			 		data: params,
			 		dataType: "json",		 		
			 		type:"post",
			 		async: false,
			 		success: function(data) {
			 			var str_msg ="" + data.reqBox.str_msg;
			 			if(data.reqBox.result_code == "2" ){
			 				// 비밀번호 틀릴경우
			 				if( str_msg != "undefined" && str_msg != null && str_msg != '' ){
			 					str_msg = str_msg.replace(/\\n/g, '\n');
			 					alert(str_msg);
			 				}
			 				$('#pwd').val('');
			 				//location.replace("/cjmweb"+ data.reqBox.action_url );
			 			}else if(data.reqBox.result_code == "3" ){
			 				// 페이지 변경
			 				if(  str_msg != "undefined" && str_msg != null && str_msg != '' ){
			 					str_msg = str_msg.replace(/\\n/g, '\n');
			 					alert(dstr_msg);
			 				}
			 				$("#form1").attr("action", "/cjmweb" + data.reqBox.action_url);
			 				$("#form1").submit();
			 			}else if(data.reqBox.result_code == "1"){
			 				// 비밀번호 확인완료 및 수정페이지 이동
			 				$("#__chkpwd").val(data.reqBox.__chkpwd);
			 				$("#form1").attr("action", "/cjmweb" + data.reqBox.action_url);
			 				$("#form1").submit();
			 			}
			 		}, 
			 		error: function(xhr) {
			 		      //에러
			 	    }
			 	});
			}
		}  
    </script>
<!--//script 영역-->
</body>
</html>

