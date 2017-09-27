<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=1024">
    <meta name="title" content="CJ CGV">
    <meta http-equiv="content-type" content="text/html; charset=utf-8"> 
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Content-Script-Type" content="text/javascript">
	<meta http-equiv="Content-Style-Type" content="text/css">
	<meta http-equiv="Expires" content="-1">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Cache-Control" content="No-Cache">
	<meta http-equiv="imagetoolbar" content="no">
	<meta name="keywords" content="CGV, 시지브이, 영화관, 극장, 영화, 티켓, 박스오피스, 극장, Movie, Theater, Cinema, Cgv, cgv, 예매, 상영작">
	<meta name="description" content="영화 그 이상의 감동. CGV">
    <title>빠른예매 | 영화 그 이상의 감동. CGV</title>
    <meta name="description" content="CGV는 선진화된 관람문화와 최고의 서비스로 고객에게 잊을 수 없는 감동을 선사합니다. CGV홈페이지를 통해 영화 예매뿐만 아니라 그 이상의 서비스와 감동을 전달하고, 다양한 즐거움과 특별한 경험을 제공하고자 합니다.">
    <link rel="shortcut icon" type="image/x-icon" href="http://img.cgv.co.kr/R2014/images/favicon.ico">
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/reset.css">
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/layout.css">
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/module.css">
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/common.css">
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/content.css">
    <link rel="stylesheet" media="print" type="text/css" href="http://img.cgv.co.kr/R2014/css/print.css">
    <link rel="stylesheet" type="text/css" href="http://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css">
    <link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2017/09/FOAM_TYPE2/common.css">
	<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2017/09/FOAM_TYPE2/reservation.css">
	<link rel="stylesheet" href="resources/css/cnb.css">
	<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2017/09/FOAM_TYPE2/reservation_popup.css">
	<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2017/09/FOAM_TYPE2/reservation_step3.css">
	<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2017/09/FOAM_TYPE2/reservation_step3_special.css">
	<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2017/09/FOAM_TYPE2/reservation_step3_step1.css">
	<link rel="stylesheet" href="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/css/2017/09/FOAM_TYPE2/reservation_step3_step2.css">
    <script type="text/javascript" src="/common/js/extraTheaters.js"></script>
    <!-- 각페이지 Header Start--> 
    <!--/각페이지 Header End--> 
    
</head>

<body class="">

<div class="skipnaiv">
	<a href="#contents">메인 컨텐츠 바로가기</a>
</div>
<div id="cgvwrap">

    	<!-- Contaniner -->
	<div id="contaniner">

		<!-- Contents Area -->
		<div id="contents" style="height:1px;padding:0;"></div>
        <div id="wrap">
	<!-- 컨텐츠 -->
	<div id="container" style="margin-top: 50px;">
		<!-- 빠른예매 -->
		<div id="ticket" class="ticket ko">
			
			<!-- 메인컨텐츠 -->
			<div class="steps">
				<!-- step1 -->
				<div class="step step1">
					<!-- MOVIE 섹션 -->
					<div class="section section-movie">
						<!-- col-head -->
						<div class="col-head" id="skip_movie_list">
							<h3 class="sreader">영화</h3>
							<a href="#" class="skip_to_something">영화선택 건너뛰기</a>
						</div>
						<!-- col-body -->
						<div class="col-body">
							<!-- 영화선택 -->
							<div class="movie-select">
								<div class="tabmenu">
									<span class="side on"></span>
									<a href="#" class="button menu1 selected">전체</a>
									<span class="side on"></span>
									<a href="#" class="button menu2">아트하우스<span class="arrow"></span></a>
									<div class="tabmenu-selectbox MOVIECOLLAGE" style="display:none;">
										<ul>
											<li><a href="#">전체</a></li>
											<li><a href="#">최신작</a></li>
										</ul>
									</div>
									<span class="side"></span>
									<a href="#" class="button menu3">특별관<span class="arrow"></span></a>
									<div class="tabmenu-selectbox SPECIALTHEATER" style="display:none;">
										<ul>
											<li><a href="#">전체</a></li>
											<li><a href="#">4DX</a></li>
											<li><a href="#">IMAX</a></li>
											<li><a href="#">STARIUM</a></li>
											<li><a href="#">CINE DE CHEF</a></li>
											<li><a href="#">GOLD CLASS</a></li>
											<li><a href="#">Brand관</a></li>
											<li><a href="#">Premium관</a></li>
											<li><a href="#">CINE KIDS</a></li>
										</ul>
									</div>
									<span class="side"></span>
								</div>
								<div class="sortmenu" style="margin-top: 20px; padding-right: 15px;">
									<a href="#" id="movieSortRankBtn" class="button btn-rank selected">예매율순</a>
									<a href="#" id="movieSortNameBtn" class="button btn-abc">가나다순</a>
									
								</div>
								<div class="movie-list nano" id="movie_list">
									<ul class="content scroll-y"></ul>
								</div>
								<div class="selectbox-movie-type" style="display:none;">
									<a href="#" class="btn-close">영화속성 레이어 닫기</a>
									<ul>
										<li id="sbmt_all" class="GROUP1 ALL"><a href="#">전체</a></li>
										<li id="sbmt_digital" class="GROUP1 DIGITAL proplist"><a href="#">2D</a></li>
										<li id="sbmt_imax" class="GROUP1 IMAX proplist"><a href="#">IMAX</a></li>
										<li id="sbmt_4dx" class="GROUP1 4DX proplist"><a href="#">4DX</a></li>
										<li id="sbmt_soundx" class="GROUP1 SOUNDX proplist"><a href="#">SOUNDX</a></li>
										<li id="sbmt_screenx" class="GROUP1 SCREENX proplist"><a href="#">SCREENX</a></li>
										<li id="sbmt_3d" class="GROUP1 3D proplist"><a href="#">3D</a></li>
										<li id="sbmt_dubbing" class="GROUP2 DUBBING proplist"><a href="#">더빙</a></li>
										<li id="sbmt_subtitle" class="GROUP2 SUBTITLES proplist"><a href="#">자막</a></li>
										<li id="sbmt_lovemom" class="GROUP3 LOVEMOM proplist"><a href="#">러브맘</a></li>
										<li id="sbmt_liveTalk" class="GROUP3 LIVETALK proplist"><a href="#">스타라이브톡</a></li>
										<li id="sbmt_wheelchairAccess" class="GROUP3 WHEELCHAIRACCESS proplist"><a href="#">배리어프리</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- THEATER 섹션 -->
					<div class="section section-theater">
						<!-- col-head -->
						<div class="col-head" id="skip_theater_list">
							<h3 class="sreader">극장</h3>
							<a href="#" class="skip_to_something">극장선택 건너뛰기</a>
						</div>
						<!-- col-body -->
						<div class="col-body">
							<!-- 극장선택 -->
							<div class="theater-select">
								<div class="tabmenu">
									<span class="side on"></span>
									<a href="#" class="button menu1 selected">전체</a>
									<span class="side on"></span>
									<a href="#" class="button menu2">아트하우스</a>
									<span class="side"></span>
									<a href="#" class="button menu3">특별관</a>
									<span class="side"></span>
								</div>
								<div class="theater-list">
									<div class="theater-area-list" id="theater_area_list">
										<ul>
											<li><a href="#" onclick=""><span class="name"></span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>
											<li><a href="#" onclick=""><span class="name"></span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>
											<li><a href="#" onclick=""><span class="name"></span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>
											<li><a href="#" onclick=""><span class="name"></span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>
											<li><a href="#" onclick=""><span class="name"></span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>
											<li><a href="#" onclick=""><span class="name"></span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>
											<li><a href="#" onclick=""><span class="name"></span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>
											<li><a href="#" onclick=""><span class="name"></span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>
											<li><a href="#" onclick=""><span class="name"></span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>
										</ul>
									</div>
									<div class="theater-cgv-list nano" id="theater_cgv_list">
										<ul class="content scroll-y"></ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- DATE 섹션 -->
					<div class="section section-date">
						<div class="col-head" id="skip_date_list">
							<h3 class="sreader">날짜</h3>
							<a href="#" class="skip_to_something">날짜 건너뛰기</a>
						</div>
						<div class="col-body">
							<!-- 날짜선택 -->
							<div class="date-list nano" id="date_list">
								<ul class="content scroll-y"></ul>
							</div>
						</div>
					</div>
					<!-- TIME 섹션 -->
					<div class="section section-time">
						<div class="col-head" id="skip_time_list">
							<h3 class="sreader">시간</h3>
							<a href="#" class="skip_to_something">시간선택 건너뛰기</a>
						</div>
						<div class="col-body">
							<!-- 시간선택 -->
							<div class="time-option">
								<span class="morning">조조</span><span class="night">심야</span>
							</div>
							<div class="placeholder">영화, 극장, 날짜를 선택해주세요.</div>
						</div>
					</div>
				</div>
				<!-- //step1 -->
				<!-- step2 -->
				<div class="step step2">
					<!-- SEAT 섹션 -->
					<div class="section section-seat">
						<div class="col-head" id="skip_seat_list">
							<h3 class="sreader">
								인원 / 좌석
								<span class="sreader">인원/좌석선택은 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
							</h3>
							<a href="#" class="skip_to_something">인원/좌석선택 건너뛰기</a>
						</div>
						<div class="col-body">
							<div class="person_screen">
								<!-- NUMBEROFPEOPLE 섹션 -->
								<div class="section section-numberofpeople">
									<div class="col-body">
										<div class="numberofpeople-select">
											<div class="group adult" id="nop_group_adult">
												<span class="title">일반</span>
												<ul>
													<li class="selected"><a href="#"><span class="sreader mod">일반</span>0<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">일반</span>1<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">일반</span>2<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">일반</span>3<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">일반</span>4<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">일반</span>5<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">일반</span>6<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">일반</span>7<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">일반</span>8<span class="sreader">명</span></a></li>
												</ul>
											</div>
											<div class="group youth" id="nop_group_youth">
												<span class="title">청소년</span>
												<ul>
													<li class="selected"><a href="#"><span class="sreader mod">청소년</span>0<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">청소년</span>1<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">청소년</span>2<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">청소년</span>3<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">청소년</span>4<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">청소년</span>5<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">청소년</span>6<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">청소년</span>7<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">청소년</span>8<span class="sreader">명</span></a></li>
												</ul>
											</div>
											<div class="group child" id="nop_group_child">
												<span class="title">어린이</span>
												<ul>
													<li class="selected"><a href="#"><span class="sreader mod">어린이</span>0<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">어린이</span>1<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">어린이</span>2<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">어린이</span>3<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">어린이</span>4<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">어린이</span>5<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">어린이</span>6<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">어린이</span>7<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">어린이</span>8<span class="sreader">명</span></a></li>
												</ul>
											</div>
											<div class="group special hide" id="nop_group_sepcial">
												<span class="title">우대</span>
												<ul>
													<li class="selected"><a href="#"><span class="sreader mod">우대</span>0<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">우대</span>1<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">우대</span>2<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">우대</span>3<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">우대</span>4<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">우대</span>5<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">우대</span>6<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">우대</span>7<span class="sreader">명</span></a></li>
													<li><a href="#"><span class="sreader mod">우대</span>8<span class="sreader">명</span></a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<!-- 인접좌석 -->
								<div class="adjacent_seat_wrap">
									<div class="adjacent_seat" id="adjacent_seat">
										<span class="title">좌석 붙임 설정</span>
										<div class="block_wrap">
										</div>
									</div>
								</div>
								<!-- NUMBEROFPEOPLE 섹션 -->
								<div class="section section-screen-select">
									<!-- UI 변경으로 삭제 
									<div class="title">선택하신 상영관<span>/</span>시간</div>
									-->
									<!-- UI 변경
									<div class="screen-time">
										<span class="screen"><b></b></span>
										<span class="seats seat_all"></span>
										<span class="time"></span>
										<span class="seats seat_remain"></span>
									</div>
									-->
									<div id="user-select-info">
										<p class="theater-info">
											<span class="site">CGV 천왕성</span>
											<span class="screen">11층 8관 [Business]</span>
											<span class="seatNum">남은좌석  <b class="restNum">100</b>/<b class="totalNum">900</b></span>
										</p>
										<p class="playYMD-info"><b>2017.04.10</b><b class="exe">(월)</b><b>00:00 - 00:00</b></p>
									</div>	
									<a class="change_time_btn" href="#"><span>상영시간 변경하기</span></a>
								</div>
							</div>
							<!-- THEATER -->
							<div class="theater_minimap">
								<div class="theater nano" id="seat_minimap_nano">
									<div class="content">
										<div class="screen" title="SCREEN"><span class="text"></span></div>
										<div class="seats" id="seats_list"></div>
									</div>
								</div>
								<div class="minimap opened" id="minimap">
									<div class="mini_header">Minimap<span></span></div>
									<div class="mini_container">
										<div class="mini_screen">SCREEN</div>
										<div class="mini_seats"></div>
										<div class="mini_exits"></div>
									</div>
									<div class="mini_region"><span></span></div>
								</div>
								<div class="legend">
									<div class="buttons">
										<a class="btn-zoom" id="seat_zoom_btn" href="#">크게보기</a>
									</div>
									<div class="seat-icon-desc">
										<span class="icon selected"><span class="icon"></span>선택</span>
										<span class="icon reserved"><span class="icon"></span>예매완료</span>
										<span class="icon notavail"><span class="icon"></span>선택불가</span>
									</div>
									<div class="seat-type">
										<span class="radiobutton type-prime" title="최적의 영상과 사운드로 영화를 감상할 수 있는 CGV 추천좌석"><span class="icon"></span>Prime Zone</span>
										<span class="radiobutton type-normal"><span class="icon"></span>일반석</span>
										<span class="radiobutton type-couple" title="연인, 가족, 친구를 위한 둘만의 좌석"><span class="icon"></span>커플석</span>
										<span class="radiobutton type-handicap"><span class="icon"></span>장애인석</span>
										<span class="radiobutton type-sweetbox" title="국내 최대 넓이의 프리미엄 커플좌석"><span class="icon"></span>SWEETBOX</span>
										<span class="radiobutton type-veatbox" title="음향 진동 시스템이 적용된 특별좌석"><span class="icon"></span>VEATBOX</span>
										<span class="radiobutton type-4d" title="바람, 진동 등 오감으로 영화 관람, 4DX"><span class="icon"></span>4DX</span>
										<span class="radiobutton type-widebox" title="일반석보다 더 넓고 편안한 좌석"><span class="icon"></span>WIDEBOX</span>
										<span class="radiobutton type-cinekids last" title="365일 어린이 전용 상영관"><span class="icon"></span>CINEKIDS</span>
									</div>
								</div>
							</div>
						   <div class="mouse_block"></div>
						</div>
					</div>
					<a class="btn-refresh" href="#">
						<span>다시하기</span>
					</a>
					<!-- 시간표 변경 -->
					<div class="section_time_popup" id="section_time_popup">
						<div class="canvas">
							<div class="sprite">
								<div class="time-option">
									<span class="morning">조조</span><span class="night">심야</span>
								</div>
								<div class="time-list nano" id="time_popup_list">
									<div class="content scroll-y"></div>
								</div>
							</div>
							<div class="buttons">
								<a href="#" class="btn_ok"><span>확인</span></a>
								<a href="#" class="btn_cancel"><span>취소</span></a>
								<a href="#" class="sreader">시간표 변경 팝업 닫기</a>
							</div>
						</div>
						<div class="corner"></div>
					</div>
					<!-- 시간표 변경 -->
				</div>
				<!-- //step2 -->
				<!-- step3 -->
				<div class="step step3">
				</div>
				<!-- //step3 -->
				<!-- step4 -->
				<div class="step step4">
				</div>
				<!-- //step4 -->
				<noscript>
					&amp;lt;div class="noscript"&amp;gt;&amp;lt;span&amp;gt;현재 사용중인 환경에서는 스크립트 동작이 활성화되지 않아 예매 서비스를 이용하실 수 없습니다.&amp;lt;br/&amp;gt;예매 서비스를 이용하기 위해서는 &amp;lt;a href='http://www.enable-javascript.com/ko/' rel='nofollow'&amp;gt;스크립트 동작을 활성화&amp;lt;/a&amp;gt; 해주세요.&amp;lt;/span&amp;gt;&amp;lt;/div&amp;gt;
				</noscript>
			</div>
			<div class="tnb_area">
				<div class="tnb_container">
				
				<div class="tnb step1">
					<!-- btn-left -->
					<a class="btn-left" href="#" title="">이전단계로 이동</a>
					<div class="info movie">
						<span class="movie_poster"><img src="" alt="영화 포스터"></span>
						<div class="row movie_title colspan2">
							<span class="data letter-spacing-min ellipsis-line2"><a href="#" title="새창열기">영화정보 상세보기</a></span>
						</div>
						<div class="row movie_type">
							<span class="data ellipsis-line1"></span>
						</div>
						<div class="row movie_rating">
							<span class="data"></span>
						</div>
						<div class="placeholder" title="영화선택"></div>
					</div>
					<div class="info theater">
						<div class="row name">
							<span class="header">극장</span>
							<span class="data letter-spacing-min ellipsis-line1"><a href="#" title="새창열기">극장정보 상세보기</a></span>
						</div>
						<div class="row date">
							<span class="header">일시</span>
							<span class="data"></span>
						</div>
						<div class="row screen">
							<span class="header">상영관</span>
							<span class="data"></span>
						</div>
						<div class="row number">
							<span class="header">인원</span>
							<span class="data"></span>
						</div>
						<div class="placeholder" title="극장선택"></div>
					</div>
					<div class="info seat">
						<div class="row seat_name">
							<span class="header">좌석명</span>
							<span class="data">일반석</span>
						</div>
						<div class="row seat_no colspan3">
							<span class="header">좌석번호</span>
							<span class="data ellipsis-line3"></span>
						</div>
						<div class="placeholder" title="좌석선택"></div>
					</div>
					<div class="info payment-ticket">
						<div class="row payment-adult">
							<span class="header">일반</span>
							<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
						</div>
						<div class="row payment-youth">
							<span class="header">청소년</span>
							<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
						</div>
						<div class="row payment-child">
							<span class="header">어린이</span>
							<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
						</div>						
						<div class="row payment-special">
							<span class="header">우대</span>
							<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
						</div>
						<div class="row payment-final">
							<span class="header">총금액</span>
							<span class="data"><span class="price">0</span><span class="won">원</span></span>
						</div>
					</div>
					<div class="info path">
						<div class="row colspan4">
							<span class="path-step2" title="좌석선택">&nbsp;</span>
							<span class="path-step3" title="결제">&nbsp;</span>
						</div>
					</div>
					<!-- btn-right -->
					<div class="tnb_step_btn_right_before" id="tnb_step_btn_right_before"></div>
					<a class="btn-right" id="tnb_step_btn_right" href="#" title="">다음단계로 이동 - 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</a>
				</div>
			</div>
			</div>
			<!-- 배너 -->
			<div class="banner" id="ticket_bottom_banner"><a title="새창"><span style="sreader">배너광고 영역</span></a></div>
			<!-- //배너 -->
			<!-- 팝업 -->
			<div class="popups">                
				<!-- Popup - 로그인 --> 
<div class="ft_layer_popup popup_login" style="display:none;">

</div>
<div class="ft_layer_popup popup_alert original" style="">
    <div class="hd">
        <div class="title_area">
            <h4 class="alert_title">얼럿타이틀</h4>
			<span class="sreader">빠른예매는 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
        </div>
        <a href="#" class="layer_close">닫기</a>
    </div><!-- //hd -->
    <div class="bd">
        <p class="alert_msg">얼럿메세지</p>
    </div><!-- //bd -->
    <div class="ft">
        <a title="확인" href="#" class="btn btn_ok"><span>확인</span></a>
        <a title="취소" href="#" class="btn btn_white btn_close"><span>취소</span></a>
    </div><!-- //ft -->     
</div>
<!-- //Popup -->

<!-- Popup - guide --> 
<div class="ft_layer_popup popup_guide" style="display:none;">
    <div class="guide_hd">
        <h4><span class="blind">CGV 예매가이드</span></h4>
        <p><span class="blind">새롭게 바뀐 CGV 예매 서비스를 직접 확인해보세요!</span></p>
    </div><!-- //hd -->
    <div class="guide_bd">
        <div class="tab_menu clfix">
            <ul>
                <li class="a first"><a href="#none" class="on" title="STEP 1 영화, 극장, 날짜, 시간 선택"><span><var><span class="blind_txt tab1">STEP 1 영화, 극장, 날짜, 시간 선택</span></var></span></a></li>
                <li class="b"><a href="#none" title="STEP 2 인원, 좌석선택"><span><var><span class="blind_txt tab2">STEP 2 인원, 좌석선택</span></var></span></a></li>
                <li class="c"><a href="#none" title="STEP 3 결제하기"><span><var><span class="blind_txt tab3">STEP 3 결제하기</span></var></span></a></li>
            </ul>
        </div>
        <div class="content">
            <div class="guide_step01">
                <p class="notice"><span class="blind">원하시는 영화, 극장, 날짜, 시간 정보를 선택해주세요!</span></p>
                <div class="guide_btn">
                    <p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>
                    <ul>
                        <li class="btn01">
                            <a href="#" class="btnVisInfo blind_txt">물음표-새롭게 바뀐 CGV 예매서비스안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">전체 화면구성이 세로형으로 변경되어 더 빠르고 쉽게 정보 선택이 가능해졌어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn02">
                            <a href="#" class="btnVisInfo blind_txt">물음표-영화분류안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">무비꼴라쥬, 특별관 영화를 빠르고 편리하게 분류하여 확인할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        <!--
                        <li class="btn03">
                            <a href="#" class="btnVisInfo blind_txt">물음표-선택할 수 없는 영화안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">선택 불가능한 정보는 장애인 차별금지법에 따라 패턴 디자인을 적용하여 모든 사용자가 쉽게 구분할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        -->
                        <li class="btn04">
                            <a href="#" class="btnVisInfo blind_txt">물음표-자주가는 CGV안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">자주 가는 극장 설정 기능을 통해 보다 빠른 극장 선택이 가능해졌어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn05">
                            <a href="#" class="btnVisInfo blind_txt">물음표-영문 빠른예매</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">영문 버전 빠른예매를 통해 다국적 사용자들도 쉽게 예매 서비스를 이용할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn06">
                            <a href="#" class="btnVisInfo blind_txt">물음표-조조/심야구분안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">조조/심야 영화 시간에 대해 쉽게 확인할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn07">
                            <a href="#" class="btnVisInfo blind_txt">물음표-새롭게 바뀐 CGV 예매서비스안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">선택한 예매 정보 및 나의 예매 진행 단계를 한 눈에 파악할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                    </ul>
                </div>
            </div><!--//guide_step01-->
            <div class="guide_step02">
                <p class="notice"><span class="blind">예매 인원수에 맞게 원하시는 자리 를 선택해주세요!</span></p>
                <div class="guide_btn">
                    <p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>
                    <ul>
                        <li class="btn01">
                            <a href="#" title="" class="btnVisInfo blind_txt">물음표-상영관/시간 확인 및 변경안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">선택한 상영관/시간 확인 및 변경 기능이 보다 쉽고 눈에 띄게 변경되었어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn02">
                            <a href="#" title="" class="btnVisInfo blind_txt">물음표-다양한 좌석도 보기안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">좌석도 크게 보기 기능으로 시력이 좋지 않으신 분들도 쉽게 예매가 가능해졌어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                    </ul>
                </div>
            </div><!--//guide_step02-->
            <div class="guide_step03">
                <p class="notice"><span class="blind">원하시는 할인 및 결제수단을 이용하여 예매를 완료해주세요!</span></p>
                <div class="guide_btn">
                    <p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>
                    <ul>
                        <li class="btn01">
                            <a href="#" title="" class="btnVisInfo blind_txt">물음표-할인 및 결제수단안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">전체 화면구성이 할인수단과 결제수단 영역으로 나뉘어 한 눈에 보기 편리해졌어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn02">
                            <a href="#" title="" class="btnVisInfo blind_txt">물음표-CGV영화관람권,할인쿠폰, CJ ONE포인트 안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">주요 할인수단인 CGV영화관람권, CGV할인쿠폰, CJ ONE 포인트의 바로 조회 기능을 통해 보다 빠른 예매가 가능해졌어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn03">
                            <a href="#" title="" class="btnVisInfo blind_txt">물음표-할인수단별 선택안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">다양한 CGV의 할인수단을 보기 쉽게 그룹화하여 원하는 할인수단만 선택해 이용하실 수 있어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn04">
                            <a href="#" title="" class="btnVisInfo blind_txt">물음표-결제정보안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">내가 적용한 할인 및 결제수단 내역을 한 눈에 쉽게 확인 가능해요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn05">
                            <a href="#" title="" class="btnVisInfo blind_txt">물음표-최신할인정보안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">다양한 CGV결제수단의 최신 할인 정보를 쉽게 모아 볼 수 있어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                    </ul>
                </div>
            </div><!--//guide_step03-->
        </div>
    </div><!-- //bd -->  
    <div class="ft">
        <a title="닫기" href="#" class="btn btn_white btn_close"><span>닫기</span></a>
        <a title="닫기" href="#" class="layer_close">닫기</a>
    </div><!-- //ft -->  
</div>
<!-- //Popup -->

			</div>
			<!-- //팝업 -->
		</div>
		<!-- //빠른예매 -->
	</div>
	<!-- //컨텐츠 -->
	<!-- banner -->
	<div id="ticket_banner" class="ticket_banner">
		<div><div>
		</div></div>
	</div>
	<!-- banner -->
</div>
		<!-- /Contents Area -->
	</div>
	<!-- /Contaniner -->
</div>
</body></html>