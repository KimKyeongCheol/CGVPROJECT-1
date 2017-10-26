var lsy=lsy || {};

var compUI={
		image : (x,y)=>{
				return $('<img/>',
				{	
					id : x,
					src : y
				}); 
			},
		br : ()=> {
			return $('<br/>');
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
var reservationUI = {
	selectMovie : ()=> { return '    	<!-- Contaniner -->'
	+	'<div id="contaniner">'
	+'		<!-- Contents Area -->'
	+		'<div id="contents" style="height:1px;padding:0;"></div>'
	+        '<div id="wrap">'
	+	'<!-- 컨텐츠 -->'
	+	'<div id="container" style="margin-top: 50px;">'
	+		'<!-- 빠른예매 -->'
	+		'<div id="ticket" class="ticket ko">'
	+			'<!-- 메인컨텐츠 -->'
	+			'<div class="steps">'
	+				'<!-- step1 -->'
	+				'<div class="step step1">'
	+					'<!-- MOVIE 섹션 -->'
	+					'<div class="section section-movie">'
	+						'<!-- col-head -->'
	+						'<div class="col-head" id="skip_movie_list">'
	+							'<h3 class="sreader">영화</h3>'
	+							'<a href="#" class="skip_to_something">영화선택 건너뛰기</a>'
	+						'</div>'
	+						'<!-- col-body -->'
	+						'<div class="col-body">'
	+							'<!-- 영화선택 -->'
	+							'<div class="movie-select">'
	+								'<div class="tabmenu">'
	+									'<span class="side on"></span>'
	+									'<a href="#" class="button menu1 selected">전체</a>'
	+									'<span class="side on"></span>'
	+									'<a href="#" class="button menu2">아트하우스<span class="arrow"></span></a>'
	+									'<div class="tabmenu-selectbox MOVIECOLLAGE" style="display:none;">'
	+										'<ul>'
	+											'<li><a href="#">전체</a></li>'
	+											'<li><a href="#">최신작</a></li>'
	+										'</ul>'
	+									'</div>'
	+									'<span class="side"></span>'
	+									'<a href="#" class="button menu3">특별관<span class="arrow"></span></a>'
	+									'<div class="tabmenu-selectbox SPECIALTHEATER" style="display:none;">'
	+										'<ul>'
	+											'<li><a href="#">전체</a></li>'
	+											'<li><a href="#">4DX</a></li>'
	+											'<li><a href="#">IMAX</a></li>'
	+											'<li><a href="#">STARIUM</a></li>'
	+											'<li><a href="#">CINE DE CHEF</a></li>'
	+											'<li><a href="#">GOLD CLASS</a></li>'
	+											'<li><a href="#">Brand관</a></li>'
	+											'<li><a href="#">Premium관</a></li>'
	+											'<li><a href="#">CINE KIDS</a></li>'
	+										'</ul>'
	+									'</div>'
	+									'<span class="side"></span>'
	+								'</div>'
	+								'<div class="sortmenu" style="margin-top: 20px; padding-right: 15px;">'
	+									'<a href="#" id="movieSortRankBtn" class="button btn-rank selected">예매율순</a>'
	+									'<a href="#" id="movieSortNameBtn" class="button btn-abc">가나다순</a>'
	+								'</div>'
	+								'<div class="movie-list nano" id="movie_list">'
	+									'<ul id="movie_list_foreach" class="content scroll-y" style="margin-top: 30px;">'
	+									'</ul>'
	+								'</div>'
	+								'<div class="selectbox-movie-type" style="display:none;">'
	+									'<a href="#" class="btn-close">영화속성 레이어 닫기</a>'
	+									'<ul>'
	+										'<li id="sbmt_all" class="GROUP1 ALL"><a href="#">전체</a></li>'
	+										'<li id="sbmt_digital" class="GROUP1 DIGITAL proplist"><a href="#">2D</a></li>'
	+										'<li id="sbmt_imax" class="GROUP1 IMAX proplist"><a href="#">IMAX</a></li>'
	+										'<li id="sbmt_4dx" class="GROUP1 4DX proplist"><a href="#">4DX</a></li>'
	+										'<li id="sbmt_soundx" class="GROUP1 SOUNDX proplist"><a href="#">SOUNDX</a></li>'
	+										'<li id="sbmt_screenx" class="GROUP1 SCREENX proplist"><a href="#">SCREENX</a></li>'
	+										'<li id="sbmt_3d" class="GROUP1 3D proplist"><a href="#">3D</a></li>'
	+										'<li id="sbmt_dubbing" class="GROUP2 DUBBING proplist"><a href="#">더빙</a></li>'
	+										'<li id="sbmt_subtitle" class="GROUP2 SUBTITLES proplist"><a href="#">자막</a></li>'
	+										'<li id="sbmt_lovemom" class="GROUP3 LOVEMOM proplist"><a href="#">러브맘</a></li>'
	+										'<li id="sbmt_liveTalk" class="GROUP3 LIVETALK proplist"><a href="#">스타라이브톡</a></li>'
	+										'<li id="sbmt_wheelchairAccess" class="GROUP3 WHEELCHAIRACCESS proplist"><a href="#">배리어프리</a></li>'
	+									'</ul>'
	+								'</div>'
	+							'</div>'
	+						'</div>'
	+					'</div>'
	+					'<!-- THEATER 섹션 -->'
	+					'<div class="section section-theater">'
	+						'<!-- col-head -->'
	+						'<div class="col-head" id="skip_theater_list">'
	+							'<h3 class="sreader">극장</h3>'
	+							'<a href="#" class="skip_to_something">극장선택 건너뛰기</a>'
	+						'</div>'
	+						'<!-- col-body -->'
	+						'<div class="col-body">'
	+							'<!-- 극장선택 -->'
	+							'<div class="theater-select">'
	+								'<div class="tabmenu">'
	+									'<span class="side on"></span>'
	+									'<a href="#" class="button menu1 selected">전체</a>'
	+									'<span class="side on"></span>'
	+									'<a href="#" class="button menu2">아트하우스</a>'
	+									'<span class="side"></span>'
	+									'<a href="#" class="button menu3">특별관</a>'
	+									'<span class="side"></span>'
	+								'</div>'
	+								'<div class="theater-list">'
	+									'<div class="theater-area-list" id="theater_area_list">'
	+										'<ul>'
	+											'<li class="selected"><a href="#" onclick=""><span class="name">서울</span><span class="count"></span></a><div class="area_theater_list nano">'
	+											'<ul id="content-scroll-seoul" class="content srcoll-y">'
	+											'</ul>'
	+											'</div></li>'
	+												'<li><a href="#" onclick=""><span class="name">경기</span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>'
	+												'<li><a href="#" onclick=""><span class="name">인천</span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>'
	+												'<li><a href="#" onclick=""><span class="name">강원</span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>'
	+												'<li><a href="#" onclick=""><span class="name">대전/충청</span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>'
	+												'<li><a href="#" onclick=""><span class="name">대구</span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>'
	+												'<li><a href="#" onclick=""><span class="name">부산/울산</span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>'
	+												'<li><a href="#" onclick=""><span class="name">경상</span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>'
	+												'<li><a href="#" onclick=""><span class="name">광주/전라/제주</span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>'
	+										'</ul>'
	+									'</div>'
	+									'<div class="theater-cgv-list nano" id="theater_cgv_list">'
	+										'<ul class="content scroll-y"></ul>'
	+									'</div>'
	+								'</div>'
	+							'</div>'
	+						'</div>'
	+					'</div>'
	+					'<!-- DATE 섹션 -->'
	+					'<div class="section section-date">'
	+						'<div class="col-head" id="skip_date_list">'
	+							'<h3 class="sreader">날짜</h3>'
	+							'<a href="#" class="skip_to_something">날짜 건너뛰기</a>'
	+						'</div>'
	+						'<div class="col-body">'
	+							'<!-- 날짜선택 -->'
	+							'<div class="date-list nano has-scrollbar has-scrollbar-y" id="date_list" style="height: 522px;">'
	+								'<ul id="day_selected_ul" class="content scroll-y" tabindex="-1" style="right: -17px;">'
	+								'<li class="month dimmed">'
	+									'<div id="detail_date">'
	+										'<span class="year"></span>'
	+										'<span class="month"></span>'
	+										'<div></div>'
	+									'</div>'
	+								'</li>'
	+								'</ul>'
	+							'</div>'
	+						'</div>'
	+					'</div>'
	+					'<!-- TIME 섹션 -->'
	+					'<div class="section section-time">'
	+						'<div class="col-head" id="skip_time_list">'
	+							'<h3 class="sreader">시간</h3>'
	+							'<a href="#" class="skip_to_something">시간선택 건너뛰기</a>'
	+						'</div>'
	+						'<div class="col-body">'
	+							'<!-- 시간선택 -->'
	+							'<div class="time-option">'
	+								'<span class="morning">조조</span><span class="night">심야</span>'
	+							'</div>'
	+							'<div id="time_select_detail" class="placeholder">영화, 극장, 날짜를 선택해주세요.</div>'
	+						'</div>'
	+					'</div>'
	+				'</div>'
	+				'<!-- //step1 -->'
	+				'<!-- step2 -->'
	+				'<div class="step step2">'
	+					'<!-- SEAT 섹션 -->'
	+					'<div class="section section-seat">'
	+						'<div class="col-head" id="skip_seat_list">'
	+							'<h3 class="sreader">'
	+								'인원 / 좌석'
	+								'<span class="sreader">인원/좌석선택은 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>'
	+							'</h3>'
	+							'<a href="#" class="skip_to_something">인원/좌석선택 건너뛰기</a>'
	+						'</div>'
	+						'<div class="col-body">'
	+							'<div class="person_screen">'
	+								'<!-- NUMBEROFPEOPLE 섹션 -->'
	+								'<div class="section section-numberofpeople">'
	+									'<div class="col-body">'
	+										'<div class="numberofpeople-select">'
	+											'<div class="group adult" id="nop_group_adult">'
	+												'<span class="title">일반</span>'
	+												'<ul>'
	+													'<li class="selected"><a href="#"><span class="sreader mod">일반</span>0<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">일반</span>1<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">일반</span>2<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">일반</span>3<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">일반</span>4<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">일반</span>5<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">일반</span>6<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">일반</span>7<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">일반</span>8<span class="sreader">명</span></a></li>'
	+												'</ul>'
	+											'</div>'
	+											'<div class="group youth" id="nop_group_youth">'
	+												'<span class="title">청소년</span>'
	+												'<ul>'
	+													'<li class="selected"><a href="#"><span class="sreader mod">청소년</span>0<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">청소년</span>1<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">청소년</span>2<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">청소년</span>3<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">청소년</span>4<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">청소년</span>5<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">청소년</span>6<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">청소년</span>7<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">청소년</span>8<span class="sreader">명</span></a></li>'
	+												'</ul>'
	+											'</div>'
	+											'<div class="group child" id="nop_group_child">'
	+												'<span class="title">어린이</span>'
	+												'<ul>'
	+													'<li class="selected"><a href="#"><span class="sreader mod">어린이</span>0<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">어린이</span>1<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">어린이</span>2<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">어린이</span>3<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">어린이</span>4<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">어린이</span>5<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">어린이</span>6<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">어린이</span>7<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">어린이</span>8<span class="sreader">명</span></a></li>'
	+												'</ul>'
	+											'</div>'
	+											'<div class="group special hide" id="nop_group_sepcial">'
	+												'<span class="title">우대</span>'
	+												'<ul>'
	+													'<li class="selected"><a href="#"><span class="sreader mod">우대</span>0<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">우대</span>1<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">우대</span>2<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">우대</span>3<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">우대</span>4<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">우대</span>5<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">우대</span>6<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">우대</span>7<span class="sreader">명</span></a></li>'
	+													'<li><a href="#"><span class="sreader mod">우대</span>8<span class="sreader">명</span></a></li>'
	+												'</ul>'
	+											'</div>'
	+										'</div>'
	+									'</div>'
	+								'</div>'
	+								'<!-- 인접좌석 -->'
	+								'<div class="adjacent_seat_wrap">'
	+									'<div class="adjacent_seat" id="adjacent_seat">'
	+										'<span class="title">좌석 붙임 설정</span>'
	+										'<div class="block_wrap">'
	+										'</div>'
	+									'</div>'
	+								'</div>'
	+								'<!-- NUMBEROFPEOPLE 섹션 -->'
	+								'<div class="section section-screen-select">'
	+									'<!-- UI 변경으로 삭제 '
	+									'<div class="title">선택하신 상영관<span>/</span>시간</div>'
	+									'-->'
	+									'<!-- UI 변경'
	+									'<div class="screen-time">'
	+										'<span class="screen"><b></b></span>'
	+										'<span class="seats seat_all"></span>'
	+										'<span class="time"></span>'
	+										'<span class="seats seat_remain"></span>'
	+									'</div>'
	+									'-->'
	+									'<div id="user-select-info">'
	+										'<p class="theater-info">'
	+											'<span class="site">CGV 천왕성</span>'
	+											'<span class="screen">11층 8관 [Business]</span>'
	+											'<span class="seatNum">남은좌석  <b class="restNum">100</b>/<b class="totalNum">900</b></span>'
	+										'</p>'
	+										'<p class="playYMD-info"><b>2017.04.10</b><b class="exe">(월)</b><b>00:00 - 00:00</b></p>'
	+									'</div>	'
	+									'<a class="change_time_btn" href="#"><span>상영시간 변경하기</span></a>'
	+								'</div>'
	+							'</div>'
	+							'<!-- THEATER -->'
	+							'<div class="theater_minimap">'
	+								'<div class="theater nano" id="seat_minimap_nano">'
	+									'<div class="content">'
	+										'<div class="screen" title="SCREEN"><span class="text"></span></div>'
	+										'<div class="seats" id="seats_list"></div>'
	+									'</div>'
	+								'</div>'
	+								'<div class="minimap opened" id="minimap">'
	+									'<div class="mini_header">Minimap<span></span></div>'
	+									'<div class="mini_container">'
	+										'<div class="mini_screen">SCREEN</div>'
	+										'<div class="mini_seats"></div>'
	+										'<div class="mini_exits"></div>'
	+									'</div>'
	+									'<div class="mini_region"><span></span></div>'
	+								'</div>'
	+								'<div class="legend">'
	+									'<div class="buttons">'
	+										'<a class="btn-zoom" id="seat_zoom_btn" href="#">크게보기</a>'
	+									'</div>'
	+									'<div class="seat-icon-desc">'
	+										'<span class="icon selected"><span class="icon"></span>선택</span>'
	+										'<span class="icon reserved"><span class="icon"></span>예매완료</span>'
	+										'<span class="icon notavail"><span class="icon"></span>선택불가</span>'
	+									'</div>'
	+								'</div>'
	+							'</div>'
	+						   '<div class="mouse_block"></div>'
	+						'</div>'
	+					'</div>'
	+					'<a class="btn-refresh" href="#">'
	+						'<span>다시하기</span>'
	+					'</a>'
	+					'<!-- 시간표 변경 -->'
	+					'<div class="section_time_popup" id="section_time_popup">'
	+						'<div class="canvas">'
	+							'<div class="sprite">'
	+								'<div class="time-option">'
	+									'<span class="morning">조조</span><span class="night">심야</span>'
	+								'</div>'
	+								'<div class="time-list nano" id="time_popup_list">'
	+									'<div class="content scroll-y"></div>'
	+								'</div>'
	+							'</div>'
	+							'<div class="buttons">'
	+								'<a href="#" class="btn_ok"><span>확인</span></a>'
	+								'<a href="#" class="btn_cancel"><span>취소</span></a>'
	+								'<a href="#" class="sreader">시간표 변경 팝업 닫기</a>'
	+							'</div>'
	+						'</div>'
	+						'<div class="corner"></div>'
	+					'</div>'
	+					'<!-- 시간표 변경 -->'
	+				'</div>'
	+				'<!-- //step2 -->'
	+				'<!-- step3 -->'
	+				'<div class="step step3">'
	+				'</div>'
	+				'<!-- //step3 -->'
	+				'<!-- step4 -->'
	+				'<div class="step step4">'
	+				'</div>'
	+				'<!-- //step4 -->'
	+			'</div>'
	+			'<div class="tnb_area">'
	+				'<div class="tnb_container">'
	+				''
	+				'<div class="tnb step1">'
	+					'<!-- btn-left -->'
	+					'<a class="btn-left" href="#" title="">이전단계로 이동</a>'
	+					'<div class="info movie">'
	+						'<div class="row movie_title colspan2">'
	+							'<span class="data letter-spacing-min ellipsis-line2"><a href="#" title="새창열기">영화정보 상세보기</a></span>'
	+						'</div>'
	+						'<div class="row movie_type">'
	+							'<span class="data ellipsis-line1"></span>'
	+						'</div>'
	+						'<div class="row movie_rating">'
	+							'<span class="data"></span>'
	+						'</div>'
	+						'<div id="movie_list_select" class="placeholder" title="영화선택">'
	+						'</div>'
	+					'</div>'
	+					'<div class="info theater" style="margin-left:10px; width:185px;">'
	+						'<div class="row name">'
	+							'<span class="header">극장</span>'
	+							'<span id="theater_detail" class="data letter-spacing-min ellipsis-line1"><a href="#" title="새창열기">극장정보 상세보기</a></span>'
	+						'</div>'
	+						'<div class="row date" style="display: inline-flex;">'
	+							'<span class="header" style="margin-right: 30px;">일시</span>'
	+							'<span class="data" id="row_date_detail" style="width: 90px;"></span>'
	+							'<span class="data" id="row_time_detail" style="width: 40px;"></span>'
	+						'</div>'
	+						'<div class="row screen">'
	+							'<span class="header" style="width: 50px;">상영관</span>'
	+							'<span class="data" id="theater_text"></span>'
	+						'</div>'
	+						'<div class="row number">'
	+							'<span class="header">인원</span>'
	+							'<span class="data"></span>'
	+						'</div>'
	+						'<div class="placeholder" title="극장선택" id="theater_select_box"></div>'
	+					'</div>'
	+					'<div class="info seat">'
	+						'<div class="row seat_name">'
	+							'<span class="header">좌석명</span>'
	+							'<span class="data">일반석</span>'
	+						'</div>'
	+						'<div class="row seat_no colspan3">'
	+							'<span class="header">좌석번호</span>'
	+							'<span class="data ellipsis-line3"></span>'
	+						'</div>'
	+						'<div class="placeholder" title="좌석선택"></div>'
	+					'</div>'
	+					'<div class="info payment-ticket" style="margin-left:10px;">'
	+						'<div class="row payment-adult">'
	+							'<span class="header">일반</span>'
	+							'<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>'
	+						'</div>'
	+						'<div class="row payment-youth">'
	+							'<span class="header">청소년</span>'
	+							'<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>'
	+						'</div>'
	+						'<div class="row payment-child">'
	+							'<span class="header">어린이</span>'
	+							'<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>'
	+						'</div>						'
	+						'<div class="row payment-special">'
	+							'<span class="header">우대</span>'
	+							'<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>'
	+						'</div>'
	+						'<div class="row payment-final">'
	+							'<span class="header">총금액</span>'
	+							'<span class="data"><span class="price">0</span><span class="won">원</span></span>'
	+						'</div>'
	+					'</div>'
	+					'<div class="info path">'
	+						'<div class="row colspan4">'
	+							'<span class="path-step2" title="좌석선택">&nbsp;</span>'
	+							'<span class="path-step3" title="결제">&nbsp;</span>'
	+						'</div>'
	+					'</div>'
	+					'<!-- btn-right -->'
	+					'<div class="tnb_step_btn_right_before" id="tnb_step_btn_right_before"></div>'
	+					'<a class="btn-right" id="tnb_step_btn_right" href="#" title="">다음단계로 이동 - 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</a>'
	+				'</div>'
	+			'</div>'
	+			'</div>'
	+			'<!-- 배너 -->'
	+			'<div class="banner" id="ticket_bottom_banner"><a title="새창"><span style="sreader">배너광고 영역</span></a></div>'
	+			'<!-- //배너 -->'
	+			'<!-- 팝업 -->'
	+			'<div class="popups">                '
	+				'<!-- Popup - 로그인 --> '
	+'<div class="ft_layer_popup popup_login" style="display:none;">'
	+'</div>'
	+'<div class="ft_layer_popup popup_alert original" style="">'
	+    '<div class="hd">'
	+        '<div class="title_area">'
	+            '<h4 class="alert_title">얼럿타이틀</h4>'
	+			'<span class="sreader">빠른예매는 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>'
	+        '</div>'
	+        '<a href="#" class="layer_close">닫기</a>'
	+    '</div><!-- //hd -->'
	+    '<div class="bd">'
	+        '<p class="alert_msg">얼럿메세지</p>'
	+    '</div><!-- //bd -->'
	+    '<div class="ft">'
	+        '<a title="확인" href="#" class="btn btn_ok"><span>확인</span></a>'
	+        '<a title="취소" href="#" class="btn btn_white btn_close"><span>취소</span></a>'
	+    '</div><!-- //ft -->     '
	+'</div>'
	+'<!-- //Popup -->'
	+'<!-- Popup - guide --> '
	+'<div class="ft_layer_popup popup_guide" style="display:none;">'
	+    '<div class="guide_hd">'
	+        '<h4><span class="blind">CGV 예매가이드</span></h4>'
	+        '<p><span class="blind">새롭게 바뀐 CGV 예매 서비스를 직접 확인해보세요!</span></p>'
	+    '</div><!-- //hd -->'
	+    '<div class="guide_bd">'
	+        '<div class="tab_menu clfix">'
	+            '<ul>'
	+				 '<li class="a first"><a href="#none" class="on" title="STEP 1 영화, 극장, 날짜, 시간 선택"><span><var><span class="blind_txt tab1">STEP 1 영화, 극장, 날짜, 시간 선택</span></var></span></a></li>'
	+                '<li class="b"><a href="#none" title="STEP 2 인원, 좌석선택"><span><var><span class="blind_txt tab2">STEP 2 인원, 좌석선택</span></var></span></a></li>'
	+                '<li class="c"><a href="#none" title="STEP 3 결제하기"><span><var><span class="blind_txt tab3">STEP 3 결제하기</span></var></span></a></li>'
	+            '</ul>'
	+        '</div>'
	+        '<div class="content">'
	+            '<div class="guide_step01">'
	+                '<p class="notice"><span class="blind">원하시는 영화, 극장, 날짜, 시간 정보를 선택해주세요!</span></p>'
	+                '<div class="guide_btn">'
	+                    '<p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>'
	+                    '<ul>'
	+                        '<li class="btn01">'
	+                            '<a href="#" class="btnVisInfo blind_txt">물음표-새롭게 바뀐 CGV 예매서비스안내</a>'
	+                            '<p class="infoBx">'
	+                                '<span class="top"></span>'
	+                                '<span class="middle">전체 화면구성이 세로형으로 변경되어 더 빠르고 쉽게 정보 선택이 가능해졌어요!</span>'
	+                                '<span class="bottom"></span>'
	+                            '</p>'
	+                        '</li>'
	+                        '<li class="btn02">'
	+                            '<a href="#" class="btnVisInfo blind_txt">물음표-영화분류안내</a>'
	+                            '<p class="infoBx">'
	+                            '<span class="top"></span>'
	+                            '<span class="middle">무비꼴라쥬, 특별관 영화를 빠르고 편리하게 분류하여 확인할 수 있어요!</span>'
	+                            '<span class="bottom"></span>'
	+                            '</p>'
	+                        '</li>'
	+                        '<!--'
	+                        '<li class="btn03">'
	+                            '<a href="#" class="btnVisInfo blind_txt">물음표-선택할 수 없는 영화안내</a>'
	+                            '<p class="infoBx">'
	+                            '<span class="top"></span>'
	+                            '<span class="middle">선택 불가능 정보는 장애인 차별금지법에 따라 패턴 디자인을 적용하여 모든 사용자가 쉽게 구분할 수 있어요!</span>'
	+                            '<span class="bottom"></span>'
	+                            '</p>'
	+                        '</li>'
	+                        '-->'
	+                        '<li class="btn04">'
	+                            '<a href="#" class="btnVisInfo blind_txt">물음표-자주가는 CGV안내</a>'
	+                            '<p class="infoBx">'
	+                            '<span class="top"></span>'
	+                            '<span class="middle">자주 가는 극장 설정 기능을 통해 보다 빠른 극장 선택이 가능해졌어요!</span>'
	+                            '<span class="bottom"></span>'
	+                            '</p>'
	+                        '</li>'
	+                        '<li class="btn05">'
	+                            '<a href="#" class="btnVisInfo blind_txt">물음표-영문 빠른예매</a>'
	+                            '<p class="infoBx">'
	+                            '<span class="top"></span>'
	+                            '<span class="middle">영문 버전 빠른예매를 통해 다국적 사용자들도 쉽게 예매 서비스를 이용할 수 있어요!</span>'
	+                            '<span class="bottom"></span>'
	+                            '</p>'
	+                        '</li>'
	+                        '<li class="btn06">'
	+                            '<a href="#" class="btnVisInfo blind_txt">물음표-조조/심야구분안내</a>'
	+                            '<p class="infoBx">'
	+                            '<span class="top"></span>'
	+                            '<span class="middle">조조/심야 영화 시간에 대해 쉽게 확인할 수 있어요!</span>'
	+                            '<span class="bottom"></span>'
	+                            '</p>'
	+                        '</li>'
	+                        '<li class="btn07">'
	+                            '<a href="#" class="btnVisInfo blind_txt">물음표-새롭게 바뀐 CGV 예매서비스안내</a>'
	+                            '<p class="infoBx">'
	+                            '<span class="top"></span>'
	+                            '<span class="middle">선택한 예매 정보 및 나의 예매 진행 단계를 한 눈에 파악할 수 있어요!</span>'
	+                            '<span class="bottom"></span>'
	+                            '</p>'
	+                        '</li>'
	+                    '</ul>'
	+                '</div>'
	+            '</div><!--//guide_step01-->'
	+            '<div class="guide_step02">'
	+                '<p class="notice"><span class="blind">예매 인원수에 맞게 원하시는 자리 를 선택해주세요!</span></p>'
	+                '<div class="guide_btn">'
	+                    '<p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>'
	+                    '<ul>'
	+                        '<li class="btn01">'
	+                            '<a href="#" title="" class="btnVisInfo blind_txt">물음표-상영관/시간 확인 및 변경안내</a>'
	+                            '<p class="infoBx">'
	+                                '<span class="top"></span>'
	+                                '<span class="middle">선택한 상영관/시간 확인 및 변경 기능이 보다 쉽고 눈에 띄게 변경되었어요!</span>'
	+                                '<span class="bottom"></span>'
	+                            '</p>'
	+                        '</li>'
	+                        '<li class="btn02">'
	+                            '<a href="#" title="" class="btnVisInfo blind_txt">물음표-다양한 좌석도 보기안내</a>'
	+                            '<p class="infoBx">'
	+                                '<span class="top"></span>'
	+                                '<span class="middle">좌석도 크게 보기 기능으로 시력이 좋지 않으신 분들도 쉽게 예매가 가능해졌어요!</span>'
	+                                '<span class="bottom"></span>'
	+                            '</p>'
	+                        '</li>'
	+                    '</ul>'
	+                '</div>'
	+            '</div><!--//guide_step02-->'
	+            '<div class="guide_step03">'
	+                '<p class="notice"><span class="blind">원하시는 할인 및 결제수단을 이용하여 예매를 완료해주세요!</span></p>'
	+                '<div class="guide_btn">'
	+                    '<p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>'
	+                    '<ul>'
	+                        '<li class="btn01">'
	+                            '<a href="#" title="" class="btnVisInfo blind_txt">물음표-할인 및 결제수단안내</a>'
	+                            '<p class="infoBx">'
	+                                '<span class="top"></span>'
	+                                '<span class="middle">전체 화면구성이 할인수단과 결제수단 영역으로 나뉘어 한 눈에 보기 편리해졌어요!</span>'
	+                                '<span class="bottom"></span>'
	+                            '</p>'
	+                        '</li>'
	+                        '<li class="btn02">'
	+                            '<a href="#" title="" class="btnVisInfo blind_txt">물음표-CGV영화관람권,할인쿠폰, CJ ONE포인트 안내</a>'
	+                            '<p class="infoBx">'
	+                                '<span class="top"></span>'
	+                                '<span class="middle">주요 할인수단인 CGV영화관람권, CGV할인쿠폰, CJ ONE 포인트의 바로 조회 기능을 통해 보다 빠른 예매가 가능해졌어요!</span>'
	+                                '<span class="bottom"></span>'
	+                            '</p>'
	+                        '</li>'
	+                        '<li class="btn03">'
	+                            '<a href="#" title="" class="btnVisInfo blind_txt">물음표-할인수단별 선택안내</a>'
	+                            '<p class="infoBx">'
	+                                '<span class="top"></span>'
	+                                '<span class="middle">다양한 CGV의 할인수단을 보기 쉽게 그룹화하여 원하는 할인수단만 선택해 이용하실 수 있어요!</span>'
	+                                '<span class="bottom"></span>'
	+                            '</p>'
	+                        '</li>'
	+                        '<li class="btn04">'
	+                            '<a href="#" title="" class="btnVisInfo blind_txt">물음표-결제정보안내</a>'
	+                            '<p class="infoBx">'
	+                                '<span class="top"></span>'
	+                                '<span class="middle">내가 적용한 할인 및 결제수단 내역을 한 눈에 쉽게 확인 가능해요!</span>'
	+                                '<span class="bottom"></span>'
	+                            '</p>'
	+                        '</li>'
	+                        '<li class="btn05">'
	+                            '<a href="#" title="" class="btnVisInfo blind_txt">물음표-최신할인정보안내</a>'
	+                            '<p class="infoBx">'
	+                                '<span class="top"></span>'
	+                                '<span class="middle">다양한 CGV결제수단의 최신 할인 정보를 쉽게 모아 볼 수 있어요!</span>'
	+                                '<span class="bottom"></span>'
	+                            '</p>'
	+                        '</li>'
	+                    '</ul>'
	+                '</div>'
	+            '</div><!--//guide_step03-->'
	+        '</div>'
	+    '</div><!-- //bd -->  '
	+    '<div class="ft">'
	+        '<a title="닫기" href="#" class="btn btn_white btn_close"><span>닫기</span></a>'
	+        '<a title="닫기" href="#" class="layer_close">닫기</a>'
	+    '</div><!-- //ft -->  '
	+'</div>'
	+'<!-- //Popup -->'
	+'			</div>'
	+			'<!-- //팝업 -->'
	+		'</div>'
	+		'<!-- //빠른예매 -->'
	+	'</div>'
	+	'<!-- //컨텐츠 -->'
	+	'<!-- banner -->'
	+	'<div id="ticket_banner" class="ticket_banner">'
	+		'<div><div>'
	+		'</div></div>'
	+	'</div>'
	+	'<!-- banner -->'
	+'</div>'
	+		'<!-- /Contents Area -->'
	+	'</div>'
	+	'<!-- /Contaniner -->'; },
	complete : ()=> {
		return '<div class="movielog-detail-wrap">'
		+           '<!-- Title & Button Combo -->'
		+           '<div class="tit-mycgv">'
		+              '<h3>예약 확인 페이지</h3>'
		+          '</div>'
		+          '<!-- //Title & Button Combo -->'
		+            '<!-- 작성 영역 -->'
		+            ''
		+            '<form name="aspnetForm" method="post" action="./diary.aspx" id="aspnetForm" enctype="multipart/form-data" novalidate="novalidate">'
		+'<div>'
		+'<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">'
		+'<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="">'
		+'<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE1MDM3OTI0MDZkZHoOkVoLIB5GUJ0CUPnu6FY8zL+z">'
		+'</div>'
		+'<script type="text/javascript">'
		+'//<![CDATA['
		+'var theForm = document.forms[aspnetForm];'
		+'if (!theForm) {'
		+    'theForm = document.aspnetForm;'
		+'}'
		+'function __doPostBack(eventTarget, eventArgument) {'
		+    'if (!theForm.onsubmit || (theForm.onsubmit() != false)) {'
		+        'theForm.__EVENTTARGET.value = eventTarget;'
		+        'theForm.__EVENTARGUMENT.value = eventArgument;'
		+        'theForm.submit();'
		+    '}'
		+'}'
		+'//]]>'
		+'</script>'
		+'<div>'
		+'   <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="6361D8EB">'
		+   '<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAKutYmMIl7pP5i3diDeHSSVf2CBCZ85OBcw/q3uyOapNcSG5+z2gCmGI2vu1uJYxlscNYUR">'
		+'</div>'
		+            '<input type="hidden" id="watchedIdx" name="watchedIdx">'
		+'            <input type="hidden" id="hdnImageType1" name="hdnImageType1" value="-1"> <!-- 스틸컷 101 -->'
		+            '<input type="hidden" id="hdnImageType2" name="hdnImageType2" value="-1"> <!-- 동영상 썸네일 201 -->'
		+            '<input type="hidden" id="hdnImageType3" name="hdnImageType3" value="-1"> <!-- 동영상 URL 202 -->'
		+            '<input type="hidden" id="hdnImageType4" name="hdnImageType4" value="-1"> <!-- 사용자 업로드 301 -->'
		+            ''
		+            '<input type="hidden" id="hdnImagePath1" name="hdnImagePath1" value=""> <!-- 스틸컷 ImagePath -->'
		+            '<input type="hidden" id="hdnImagePath2" name="hdnImagePath2" value=""> <!-- 동영상 ImagePath -->'
		+            '<input type="hidden" id="hdnImagePath3" name="hdnImagePath3" value=""> <!-- 동영상 URL -->'
		+            '<input type="hidden" id="hdnImagePath4" name="hdnImagePath4" value=""> <!-- 사용자 ImagePath -->'
		+'            <input type="hidden" id="hdnImageGalleryIdx1" name="hdnImageGalleryIdx1"> <!-- 스틸컷 관련 GalleryIdx1 -->'
		+            '<input type="hidden" id="hdnImageGalleryIdx3" name="hdnImageGalleryIdx3"> <!-- 동영상 관련 GalleryIdx3 -->'
		+            '<input type="hidden" id="hdnImageDesc4" name="hdnImageDesc4"> <!-- 사용자 이미지 업로드 대체 텍스트 -->'
		+'            <div class="diary-register-wrap">'
		+                '<div class="sect-diary-register">'
		+                    '<div class="article-who-together">'
		+                        '<label for="txtMovieWith">같이 본 사람 기입</label>'
		+                        '<input type="text" readonly="true" id="member_id_text" name="txtMovieWith" maxlength="60">'
		+                    '</div>'
		+                    '<div class="article-who-together">'
		+                        '<label for="txtMovieWith">같이 본 사람 기입</label>'
		+                        '<input type="text" readonly="true" id="movie_id_text" name="txtMovieWith" placeholder="누구와 함께 보셨나요?" maxlength="60">'
		+                    '</div>'
		+                    '<!-- //누구와 함게 보셨나요? -->'
		+                    '<!-- 누구와 함게 보셨나요? -->'
		+                    '<div class="article-who-together">'
		+                        '<label for="txtMovieWith">같이 본 사람 기입</label>'
		+                        '<input type="text" readonly="true" id="movie_place_text" name="txtMovieWith" placeholder="누구와 함께 보셨나요?" maxlength="60">'
		+                    '</div>'
		+                    '<!-- //누구와 함게 보셨나요? -->'
		+                    '<!-- 누구와 함게 보셨나요? -->'
		+                    '<div class="article-who-together">'
		+                        '<label for="txtMovieWith">같이 본 사람 기입</label>'
		+                        '<input type="text" readonly="true" id="movie_date_text" name="txtMovieWith" placeholder="누구와 함께 보셨나요?" maxlength="60">'
		+                    '</div>'
		+                    '<!-- //누구와 함게 보셨나요? -->'
		+                    '<!-- 누구와 함게 보셨나요? -->'
		+                    '<div class="article-who-together">'
		+                        '<label for="txtMovieWith">같이 본 사람 기입</label>'
		+                        '<input type="text" readonly="true" id="movie_theater_text" name="txtMovieWith" placeholder="누구와 함께 보셨나요?" maxlength="60">'
		+                    '</div>'
		+                    '<!-- //누구와 함게 보셨나요? -->'
		+                    '<!-- 누구와 함게 보셨나요? -->'
		+                    '<div class="article-who-together">'
		+                        '<label for="txtMovieWith">같이 본 사람 기입</label>'
		+                        '<input type="text" readonly="true" id="movie_time_text" name="txtMovieWith" placeholder="누구와 함께 보셨나요?" maxlength="60">'
		+                    '</div>'
		+                    '<!-- //누구와 함게 보셨나요? -->'
		+                    '<!-- 누구와 함게 보셨나요? -->'
		+                    '<div class="article-who-together">'
		+                        '<label for="txtMovieWith">같이 본 사람 기입</label>'
		+                        '<input type="text" readonly="true" id="movie_count_text" name="txtMovieWith" placeholder="누구와 함께 보셨나요?" maxlength="60">'
		+                    '</div>'
		+                    '<!-- //누구와 함게 보셨나요? -->'
		+                    '<!-- 누구와 함게 보셨나요? -->'
		+                    '<div class="article-who-together">'
		+                        '<label for="txtMovieWith">같이 본 사람 기입</label>'
		+                        '<input type="text" readonly="true" id="movie_price_text" name="txtMovieWith" placeholder="누구와 함께 보셨나요?" maxlength="60">'
		+                    '</div>'
		+                    '<!-- 누구와 함게 보셨나요? -->'
		+                    '<div class="article-who-together">'
		+                        '<label for="txtMovieWith">같이 본 사람 기입</label>'
		+                        '<input type="text" readonly="true" id="movie_seat_text" name="txtMovieWith" placeholder="누구와 함께 보셨나요?" maxlength="60">'
		+                    '</div>'
		+                    '<!-- //누구와 함게 보셨나요? -->'
		+                '</div>'
		+            '</div>'
		+            '</form>'
		+            '<!-- //작성 영역 -->'
		+			'<div class="movie-diary-wrap none" style="padding:0px; cursor:pointer"><a class="round black"><span>홈으로 가기</span></a></div>'
		+       '</div>'
	},
	selectSeat : ()=> {
		return '    	<!-- Contaniner -->'
		+	'<div id="contaniner">'
		+'		<!-- Contents Area -->'
		+		'<div id="contents" style="height:1px;padding:0;"></div>'
		+        '<div id="wrap">'
		+	'<!-- 컨텐츠 -->'
		+	'<div id="container" style="margin-top: 50px;">'
		+		'<!-- 빠른예매 -->'
		+		'<div id="ticket" class="ticket ko">'
		+			''
		+			'<!-- 메인컨텐츠 -->'
		+			'<div class="steps">'
		+				''
		+				'<div class="step step1">'
		+					'<!-- SEAT 섹션 -->'
		+					'<div class="section section-seat">'
		+						'<div class="col-head" id="skip_seat_list">'
		+							'<h3 class="sreader">'
		+								'인원 / 좌석'
		+								'<span class="sreader">인원/좌석선택은 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>'
		+							'</h3>'
		+							'<a href="#" class="skip_to_something">인원/좌석선택 건너뛰기</a>'
		+						'</div>'
		+						'<div class="col-body">'
		+							'<div class="person_screen">'
		+								'<!-- NUMBEROFPEOPLE 섹션 -->'
		+								'<div class="section section-numberofpeople">'
		+									'<div class="col-body">'
		+										'<div class="numberofpeople-select">'
		+											'<div class="group adult" id="nop_group_adult">'
		+												'<span class="title">일반</span>'
		+												'<ul>'
		+												'</ul>'
		+											'</div>'
		+											'<div class="group youth" id="nop_group_youth">'
		+												'<span class="title">청소년</span>'
		+												'<ul>'
		+												'</ul>'
		+											'</div>'
		+											'<div class="group child" id="nop_group_child">'
		+												'<span class="title">어린이</span>'
		+												'<ul>'
		+												'</ul>'
		+											'</div>'
		+											'<div class="group special hide" id="nop_group_sepcial">'
		+												'<span class="title">우대</span>'
		+												'<ul>'
		+													'<li class="selected"><a href="#"><span class="sreader mod">우대</span>0<span class="sreader">명</span></a></li>'
		+													'<li><a href="#"><span class="sreader mod">우대</span>1<span class="sreader">명</span></a></li>'
		+													'<li><a href="#"><span class="sreader mod">우대</span>2<span class="sreader">명</span></a></li>'
		+													'<li><a href="#"><span class="sreader mod">우대</span>3<span class="sreader">명</span></a></li>'
		+													'<li><a href="#"><span class="sreader mod">우대</span>4<span class="sreader">명</span></a></li>'
		+													'<li><a href="#"><span class="sreader mod">우대</span>5<span class="sreader">명</span></a></li>'
		+													'<li><a href="#"><span class="sreader mod">우대</span>6<span class="sreader">명</span></a></li>'
		+													'<li><a href="#"><span class="sreader mod">우대</span>7<span class="sreader">명</span></a></li>'
		+													'<li><a href="#"><span class="sreader mod">우대</span>8<span class="sreader">명</span></a></li>'
		+												'</ul>'
		+											'</div>'
		+										'</div>'
		+									'</div>'
		+								'</div>'
		+								'<!-- 인접좌석 -->'
		+								'<div class="adjacent_seat_wrap">'
		+									'<div class="adjacent_seat" id="adjacent_seat">'
		+										'<span class="title">좌석 붙임 설정</span>'
		+										'<div class="block_wrap">'
		+										'</div>'
		+									'</div>'
		+								'</div>'
		+								'<!-- NUMBEROFPEOPLE 섹션 -->'
		+								'<div class="section section-screen-select">'
		+									'<!-- UI 변경으로 삭제 '
		+									'<div class="title">선택하신 상영관<span>/</span>시간</div>'
		+									'-->'
		+									'<!-- UI 변경'
		+									'<div class="screen-time">'
		+										'<span class="screen"><b></b></span>'
		+										'<span class="seats seat_all"></span>'
		+										'<span class="time"></span>'
		+										'<span class="seats seat_remain"></span>'
		+									'</div>'
		+									'-->'
		+									'<div id="user-select-info">'
		+										'<p class="theater-info">'
		+											'<span class="site" id="theater_name">CGV 천왕성</span>'
		+											'<span class="screen" id="theater_number">11층 8관 [Business]</span>'
		+											'<span class="seatNum">남은좌석  <b class="restNum" id="rest_num">100</b>/<b class="totalNum">30석</b></span>'
		+										'</p>'
		+										'<p class="playYMD-info" id="seat_select_time_detail" style="display:inline-block;"><b>2017.04.10</b><b class="exe">(월)</b><b>00:00 - 00:00</b></p>'
		+									'</div>	'
		+									'<a class="change_time_btn" href="#"><span>상영시간 변경하기</span></a>'
		+								'</div>'
		+							'</div>'
		+							'<!-- THEATER -->'
		+							'<div class="theater_minimap">'
		+								'<div class="theater nano" id="seat_minimap_nano">'
		+									'<div class="content" id="screen_container">'
		+										'<div class="screen" title="SCREEN"><span class="text"></span></div>'
		+										'<div class="seats" id="seats_list">'
		+											''
		+										'</div>'
		+									'</div>'
		+								'</div>'
		+								'<div class="minimap opened" id="minimap">'
		+									'<div class="mini_header">Minimap<span></span></div>'
		+									'<div class="mini_container">'
		+										'<div class="mini_screen">SCREEN</div>'
		+										'<div class="mini_seats"></div>'
		+										'<div class="mini_exits"></div>'
		+									'</div>'
		+									'<div class="mini_region"><span></span></div>'
		+								'</div>'
		+								'<div class="legend">'
		+									'<div class="buttons">'
		+										'<a class="btn-zoom" id="seat_zoom_btn" href="#">크게보기</a>'
		+									'</div>'
		+									'<div class="seat-icon-desc">'
		+										'<span class="icon selected"><span class="icon"></span>선택</span>'
		+										'<span class="icon reserved"><span class="icon"></span>예매완료</span>'
		+										'<span class="icon notavail"><span class="icon"></span>선택불가</span>'
		+									'</div>'
		+								'</div>'
		+							'</div>'
		+						   '<div class="mouse_block"></div>'
		+						'</div>'
		+					'</div>'
		+					'<a class="btn-refresh" href="#">'
		+						'<span>다시하기</span>'
		+					'</a>'
		+					'<!-- 시간표 변경 -->'
		+					'<div class="section_time_popup" id="section_time_popup">'
		+						'<div class="canvas">'
		+							'<div class="sprite">'
		+								'<div class="time-option">'
		+									'<span class="morning">조조</span><span class="night">심야</span>'
		+								'</div>'
		+								'<div class="time-list nano" id="time_popup_list">'
		+									'<div class="content scroll-y"></div>'
		+								'</div>'
		+							'</div>'
		+							'<div class="buttons">'
		+								'<a href="#" class="btn_ok"><span>확인</span></a>'
		+								'<a href="#" class="btn_cancel"><span>취소</span></a>'
		+								'<a href="#" class="sreader">시간표 변경 팝업 닫기</a>'
		+							'</div>'
		+						'</div>'
		+						'<div class="corner"></div>'
		+					'</div>'
		+					'<!-- 시간표 변경 -->'
		+				'</div>'
		+				'<!-- //step2 -->'
		+				'<!-- step3 -->'
		+				'<div class="step step3">'
		+				'</div>'
		+				'<!-- //step3 -->'
		+				'<!-- step4 -->'
		+				'<div class="step step4">'
		+				'</div>'
		+				'<!-- //step4 -->'
		+			'</div>'
		+			'<div class="tnb_area">'
		+				'<div class="tnb_container">'
		+				''
		+				'<div class="tnb step2">'
		+					'<!-- btn-left -->'
		+					'<a class="btn-left" id="backBtn" href="#" title="">이전단계로 이동</a>'
		+					'<div class="info movie">'
		+						'<span class="movie_poster"><img src="'+$$('i')+'/'+$$('movieImg')+'.PNG'+'" alt=""></span>'
		+						'<div class="row movie_title colspan2">'
		+							'<span class="data letter-spacing-min ellipsis-line2"><a href="#" title="새창열기">영화정보 상세보기</a></span>'
		+						'</div>'
		+						'<div class="row movie_type" style="margin-top:20px;">'
		+							'<span id="movie_name_text" class="data ellipsis-line1"></span>'
		+						'</div>'
		+						'<div class="row movie_rating" style="margin-top:20px;">'
		+							'<span class="data"></span>'
		+						'</div>'
		+						'<div class="" title="영화선택"></div>'
		+					'</div>'
		+					'<div class="info theater" style="width:180px;padding-right:17px; margin-left:10px;">'
		+						'<div class="row name">'
		+							'<span class="header">극장</span>'
		+							'<span id="theater_detail" class="data letter-spacing-min ellipsis-line1"><a href="#" title="새창열기"">극장정보 상세보기</a></span>'
		+						'</div>'
		+						'<div class="row date">'
		+							'<span class="header">일시</span>'
		+							'<span id="date_detail" class="data"></span>'
		+						'</div>'
		+						'<div class="row screen">'
		+							'<span class="header" style="width:50px;">상영관</span>'
		+							'<span id="theater_num" class="data"></span>'
		+						'</div>'
		+						'<div class="row number" id="people_count">'
		+							'<span class="header">인원</span>'
		+							'<span class="header" style="width:60px;"></span>'
		+							'<span class="header" style="width:75px;"></span>'
		+							'<span class="header" style="width:75px;"></span>'
		+						'</div>'
		+						'<div class="" title="극장선택"></div>'
		+					'</div>'
		+					'<div class="info seat" style="margin-left:10px;">'
		+						'<div class="row seat_name">'
		+							'<span class="header">좌석명</span>'
		+							'<span class="data">일반석</span>'
		+						'</div>'
		+						'<div class="row seat_no colspan3">'
		+							'<span class="header" style="width:60px">좌석번호</span>'
		+							'<span id="seat_number_list" class="data ellipsis-line3"></span>'
		+						'</div>'
		+						'<div class="" title="좌석선택"></div>'
		+					'</div>'
		+					'<div class="info payment-ticket" style="margin-left:10px;">'
		+						'<div class="row payment-adult">'
		+							'<span class="header">일반</span>'
		+							'<span class="data"><span class="price" id="adultPrice"></span>원 <span class="quantity"></span></span>'
		+						'</div>'
		+						'<div class="row payment-youth">'
		+							'<span class="header" style="width:45px;">청소년</span>'
		+							'<span class="data"><span class="price" id="youthPrice"></span>원 <span class="quantity"></span></span>'
		+						'</div>'
		+						'<div class="row payment-child">'
		+							'<span class="header" style="width:45px;">어린이</span>'
		+							'<span class="data"><span class="price" id="childPrice"></span>원 <span class="quantity"></span></span>'
		+						'</div>						'
		+						'<div class="row payment-special">'
		+							'<span class="header">우대</span>'
		+							'<span class="data"><span class="price"></span>원 <span class="quantity"></span></span>'
		+						'</div>'
		+						'<div class="row payment-final">'
		+							'<span class="header">총금액</span>'
		+							'<span class="data"><span class="price" id="totalPrice">0</span><span class="won">원</span></span>'
		+						'</div>'
		+					'</div>'
		+					'<div class="info path">'
		+						'<div class="row colspan4">'
		+							'<span class="path-step2" title="좌석선택">&nbsp;</span>'
		+							'<span class="path-step3" title="결제">&nbsp;</span>'
		+						'</div>'
		+					'</div>'
		+					'<!-- btn-right -->'
		+					'<div class="tnb_step_btn_right_before" id="tnb_step_btn_right_before"></div>'
		+					'<a class="btn-right" id="tnb_step_btn_right" href="#" title="">다음단계로 이동 - 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</a>'
		+				'</div>'
		+			'</div>'
		+			'</div>'
		+			'<!-- 배너 -->'
		+			'<div class="banner" id="ticket_bottom_banner"><a title="새창"><span style="sreader">배너광고 영역</span></a></div>'
		+			'<!-- //배너 -->'
		+			'<!-- 팝업 -->'
		+			'<div class="popups">                '
		+				'<!-- Popup - 로그인 --> '
		+'<div class="ft_layer_popup popup_login" style="display:none;">'
		+'</div>'
		+'<div class="ft_layer_popup popup_alert original" style="">'
		+    '<div class="hd">'
		+        '<div class="title_area">'
		+            '<h4 class="alert_title">얼럿타이틀</h4>'
		+			'<span class="sreader">빠른예매는 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>'
		+        '</div>'
		+        '<a href="#" class="layer_close">닫기</a>'
		+    '</div><!-- //hd -->'
		+    '<div class="bd">'
		+        '<p class="alert_msg">얼럿메세지</p>'
		+    '</div><!-- //bd -->'
		+    '<div class="ft">'
		+        '<a title="확인" href="#" class="btn btn_ok"><span>확인</span></a>'
		+        '<a title="취소" href="#" class="btn btn_white btn_close"><span>취소</span></a>'
		+    '</div><!-- //ft -->     '
		+'</div>'
		+'<!-- //Popup -->'
		+'<!-- Popup - guide --> '
		+'<div class="ft_layer_popup popup_guide" style="display:none;">'
		+    '<div class="guide_hd">'
		+        '<h4><span class="blind">CGV 예매가이드</span></h4>'
		+        '<p><span class="blind">새롭게 바뀐 CGV 예매 서비스를 직접 확인해보세요!</span></p>'
		+    '</div><!-- //hd -->'
		+    '<div class="guide_bd">'
		+        '<div class="tab_menu clfix">'
		+            '<ul>'
		+				 '<li class="a first"><a href="#none" class="on" title="STEP 1 영화, 극장, 날짜, 시간 선택"><span><var><span class="blind_txt tab1">STEP 1 영화, 극장, 날짜, 시간 선택</span></var></span></a></li>'
		+                '<li class="b"><a href="#none" title="STEP 2 인원, 좌석선택"><span><var><span class="blind_txt tab2">STEP 2 인원, 좌석선택</span></var></span></a></li>'
		+                '<li class="c"><a href="#none" title="STEP 3 결제하기"><span><var><span class="blind_txt tab3">STEP 3 결제하기</span></var></span></a></li>'
		+            '</ul>'
		+        '</div>'
		+        '<div class="content">'
		+            '<div class="guide_step01">'
		+                '<p class="notice"><span class="blind">원하시는 영화, 극장, 날짜, 시간 정보를 선택해주세요!</span></p>'
		+                '<div class="guide_btn">'
		+                    '<p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>'
		+                    '<ul>'
		+                        '<li class="btn01">'
		+                            '<a href="#" class="btnVisInfo blind_txt">물음표-새롭게 바뀐 CGV 예매서비스안내</a>'
		+                            '<p class="infoBx">'
		+                                '<span class="top"></span>'
		+                                '<span class="middle">전체 화면구성이 세로형으로 변경되어 더 빠르고 쉽게 정보 선택이 가능해졌어요!</span>'
		+                                '<span class="bottom"></span>'
		+                            '</p>'
		+                        '</li>'
		+                        '<li class="btn02">'
		+                            '<a href="#" class="btnVisInfo blind_txt">물음표-영화분류안내</a>'
		+                            '<p class="infoBx">'
		+                            '<span class="top"></span>'
		+                            '<span class="middle">무비꼴라쥬, 특별관 영화를 빠르고 편리하게 분류하여 확인할 수 있어요!</span>'
		+                            '<span class="bottom"></span>'
		+                            '</p>'
		+                        '</li>'
		+                        '<!--'
		+                        '<li class="btn03">'
		+                            '<a href="#" class="btnVisInfo blind_txt">물음표-선택할 수 없는 영화안내</a>'
		+                            '<p class="infoBx">'
		+                            '<span class="top"></span>'
		+                            '<span class="middle">선택 불가능한 정보는 장애인 차별금지법에 따라 패턴 디자인을 적용하여 모든 사용자가 쉽게 구분할 수 있어요!</span>'
		+                            '<span class="bottom"></span>'
		+                            '</p>'
		+                        '</li>'
		+                        '-->'
		+                        '<li class="btn04">'
		+                            '<a href="#" class="btnVisInfo blind_txt">물음표-자주가는 CGV안내</a>'
		+                            '<p class="infoBx">'
		+                            '<span class="top"></span>'
		+                            '<span class="middle">자주 가는 극장 설정 기능을 통해 보다 빠른 극장 선택이 가능해졌어요!</span>'
		+                            '<span class="bottom"></span>'
		+                            '</p>'
		+                        '</li>'
		+                        '<li class="btn05">'
		+                            '<a href="#" class="btnVisInfo blind_txt">물음표-영문 빠른예매</a>'
		+                            '<p class="infoBx">'
		+                            '<span class="top"></span>'
		+                            '<span class="middle">영문 버전 빠른예매를 통해 다국적 사용자들도 쉽게 예매 서비스를 이용할 수 있어요!</span>'
		+                            '<span class="bottom"></span>'
		+                            '</p>'
		+                        '</li>'
		+                        '<li class="btn06">'
		+                            '<a href="#" class="btnVisInfo blind_txt">물음표-조조/심야구분안내</a>'
		+                            '<p class="infoBx">'
		+                            '<span class="top"></span>'
		+                            '<span class="middle">조조/심야 영화 시간에 대해 쉽게 확인할 수 있어요!</span>'
		+                            '<span class="bottom"></span>'
		+                            '</p>'
		+                        '</li>'
		+                        '<li class="btn07">'
		+                            '<a href="#" class="btnVisInfo blind_txt">물음표-새롭게 바뀐 CGV 예매서비스안내</a>'
		+                            '<p class="infoBx">'
		+                            '<span class="top"></span>'
		+                            '<span class="middle">선택한 예매 정보 및 나의 예매 진행 단계를 한 눈에 파악할 수 있어요!</span>'
		+                            '<span class="bottom"></span>'
		+                            '</p>'
		+                        '</li>'
		+                    '</ul>'
		+                '</div>'
		+            '</div><!--//guide_step01-->'
		+            '<div class="guide_step02">'
		+                '<p class="notice"><span class="blind">예매 인원수에 맞게 원하시는 자리 를 선택해주세요!</span></p>'
		+                '<div class="guide_btn">'
		+                    '<p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>'
		+                    '<ul>'
		+                        '<li class="btn01">'
		+                            '<a href="#" title="" class="btnVisInfo blind_txt">물음표-상영관/시간 확인 및 변경안내</a>'
		+                            '<p class="infoBx">'
		+                                '<span class="top"></span>'
		+                                '<span class="middle">선택한 상영관/시간 확인 및 변경 기능이 보다 쉽고 눈에 띄게 변경되었어요!</span>'
		+                                '<span class="bottom"></span>'
		+                            '</p>'
		+                        '</li>'
		+                        '<li class="btn02">'
		+                            '<a href="#" title="" class="btnVisInfo blind_txt">물음표-다양한 좌석도 보기안내</a>'
		+                            '<p class="infoBx">'
		+                                '<span class="top"></span>'
		+                                '<span class="middle">좌석도 크게 보기 기능으로 시력이 좋지 않으신 분들도 쉽게 예매가 가능해졌어요!</span>'
		+                                '<span class="bottom"></span>'
		+                            '</p>'
		+                        '</li>'
		+                    '</ul>'
		+                '</div>'
		+            '</div><!--//guide_step02-->'
		+            '<div class="guide_step03">'
		+                '<p class="notice"><span class="blind">원하시는 할인 및 결제수단을 이용하여 예매를 완료해주세요!</span></p>'
		+                '<div class="guide_btn">'
		+                    '<p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>'
		+                    '<ul>'
		+                        '<li class="btn01">'
		+                            '<a href="#" title="" class="btnVisInfo blind_txt">물음표-할인 및 결제수단안내</a>'
		+                            '<p class="infoBx">'
		+                                '<span class="top"></span>'
		+                                '<span class="middle">전체 화면구성이 할인수단과 결제수단 영역으로 나뉘어 한 눈에 보기 편리해졌어요!</span>'
		+                                '<span class="bottom"></span>'
		+                            '</p>'
		+                        '</li>'
		+                        '<li class="btn02">'
		+                            '<a href="#" title="" class="btnVisInfo blind_txt">물음표-CGV영화관람권,할인쿠폰, CJ ONE포인트 안내</a>'
		+                            '<p class="infoBx">'
		+                                '<span class="top"></span>'
		+                                '<span class="middle">주요 할인수단인 CGV영화관람권, CGV할인쿠폰, CJ ONE 포인트의 바로 조회 기능을 통해 보다 빠른 예매가 가능해졌어요!</span>'
		+                                '<span class="bottom"></span>'
		+                            '</p>'
		+                        '</li>'
		+                        '<li class="btn03">'
		+                            '<a href="#" title="" class="btnVisInfo blind_txt">물음표-할인수단별 선택안내</a>'
		+                            '<p class="infoBx">'
		+                                '<span class="top"></span>'
		+                                '<span class="middle">다양한 CGV의 할인수단을 보기 쉽게 그룹화하여 원하는 할인수단만 선택해 이용하실 수 있어요!</span>'
		+                                '<span class="bottom"></span>'
		+                            '</p>'
		+                        '</li>'
		+                        '<li class="btn04">'
		+                            '<a href="#" title="" class="btnVisInfo blind_txt">물음표-결제정보안내</a>'
		+                            '<p class="infoBx">'
		+                                '<span class="top"></span>'
		+                                '<span class="middle">내가 적용한 할인 및 결제수단 내역을 한 눈에 쉽게 확인 가능해요!</span>'
		+                                '<span class="bottom"></span>'
		+                            '</p>'
		+                        '</li>'
		+                        '<li class="btn05">'
		+                            '<a href="#" title="" class="btnVisInfo blind_txt">물음표-최신할인정보안내</a>'
		+                            '<p class="infoBx">'
		+                                '<span class="top"></span>'
		+                                '<span class="middle">다양한 CGV결제수단의 최신 할인 정보를 쉽게 모아 볼 수 있어요!</span>'
		+                                '<span class="bottom"></span>'
		+                            '</p>'
		+                        '</li>'
		+                    '</ul>'
		+                '</div>'
		+            '</div><!--//guide_step03-->'
		+        '</div>'
		+    '</div><!-- //bd -->  '
		+    '<div class="ft">'
		+        '<a title="닫기" href="#" class="btn btn_white btn_close"><span>닫기</span></a>'
		+        '<a title="닫기" href="#" class="layer_close">닫기</a>'
		+    '</div><!-- //ft -->  '
		+'</div>'
		+'<!-- //Popup -->'
		+'			</div>'
		+			'<!-- //팝업 -->'
		+		'</div>'
		+		'<!-- //빠른예매 -->'
		+	'</div>'
		+	'<!-- //컨텐츠 -->'
		+	'<!-- banner -->'
		+	'<div id="ticket_banner" class="ticket_banner">'
		+		'<div><div>'
		+		'</div></div>'
		+	'</div>'
		+	'<!-- banner -->'
		+'</div>'
		+		'<!-- /Contents Area -->'
		+	'</div>'
		+	'<!-- /Contaniner -->'
	}
}
var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; //January is 0!
var yyyy = today.getFullYear();
lsy.common=(()=> {
	var movie_text;
	var init=ctx=> {
		if(sessionStorage.getItem('member_id')==null){
			alert('로그인을 먼저 해주세요');
			location.href=sessionStorage.getItem('ctx')+'/home';
		}
		lsy.session.init(ctx);
		onCreate();
	};
	var onCreate=()=> {
		setContentView();
		$('#tnb_step_btn_right').attr('onclick','lsy.seatSelect.init()');
	};
	var setContentView=()=> {
		$('#cgvwrap').remove();
		$('body').append(compUI.div('cgvwrap').append(reservationUI.selectMovie()));

		if(dd<10) {
		    dd='0'+dd
		} 

		if(mm<10) {
		    mm='0'+mm
		}

		today = yyyy+'/'+mm+'/'+dd;
		alert(today);
		
		$('#detail_date>span:nth-child(1)').text(yyyy);
		$('#detail_date>span:nth-child(2)').text(mm);
		
		
		$.ajax({
			url : sessionStorage.getItem('x')+'/get/reservation',
			method : 'POST',
			contentType : 'application/json',
			success : d=>{
				for (var i=0;i<d.movie.length;i++) {
					$('#movie_list_foreach').append(
								'<li onclick="lsy.movieDetail.init('+i+');" style="cursor: pointer;" class="movie-list-detail'+i+'">'
								+	'<span class="movie-icon">'
								+		'<img src="'+$$("i")+'/'+d.movie[i].age_limit+'.PNG" alt="" />'
								+	'<input id="age_limit'+i+'" type="hidden" value="'+d.movie[i].age_limit+'"/>'
								+	'<input id="movie_seq'+i+'" type="hidden" value="'+d.movie[i].movie_seq+'"/>'
								+	'</span>'
								+	'<span style="font-weight: bold;" class="movie_text'+i+'">'+d.movie[i].name+'</span>'
								+'</li>'
					);
				}
				for (var i=0;i<d.place.length;i++) {
					$('#content-scroll-seoul').append(
						'<li class="theater_list'+i+'" style="margin-left: 20px; color: #333; font-weight: bold; cursor: pointer;" onclick="lsy.detailSelect.init('+i+');">'+d.place[i].name+'</li>'					
					);
				}
				for (var i=0;i<5;i++) {
					var x = Number(dd)+Number(i);
					var dayOfWeek = "";
					if (i==0 || i % 7 == 0) {
						dayOfWeek = "금";
					}else if (i == 1 || i % 8 == 0) {dayOfWeek = "토";}
					else if (i == 2 || i % 9 == 0) {dayOfWeek = "일";}
					else if (i == 3) {dayOfWeek = "월";}
					else if (i == 4) {dayOfWeek = "화";}
					else if (i == 5) {dayOfWeek = "수";}
					else if (i == 6) {dayOfWeek = "목";}
					
					$('#day_selected_ul').append(
							'<li data-index="'+i+'" class="day day_selected'+i+'" onclick="lsy.date.init('+i+')">'
							+'<a href="#">'
							+'<span class="sreader"></span>'
							+'<span class="dayweek" style="font-weight:bold; width:60px;" id="detail_dayweek'+i+'">'+x+' / '+dayOfWeek+'</span>'
							+'</a>'
							+'</li>'					
					);
					if (i==1) {
						$('#detail_dayweek'+i).css({'color':'#31597e'});
					}
					else if (i==2) {
						$('#detail_dayweek'+i).css({'color':'#ad2727'});
					}
				}
			},
			error : (x,s,m)=>{
				alert('에러발생');
			}
		});

	};
	return {init:init, setContentView:setContentView};
})();
lsy.movieDetail=(()=> {
	var init=x=>{
		onCreate(x);
	};
	var onCreate=x=>{
		setContentView();
		sessionStorage.setItem('movieSeq',$('#movie_seq'+x).val());
		$('#content-scroll-seoul>li').removeClass('selected').css({'color':'black'});
		$('#row_date_detail').text('');
		$('#row_time_detail').text('');
		$('#theater_detail').text('');
		$('#theater_text').text('');
		$('#day_selected_ul>li').removeClass('selected');
		$('#movie_list>ul>li').removeClass('selected');
		$('#time_list_scrollbar').remove();
		$('#date_select_detail').remove();
		$('.info.movie').empty();
		$('#movie_list>ul>li').css({'cursor':'pointer'});
		$('#movie_list>ul>li>span').css({'font-weight':'bold','color':'black'});
			$('.movie-list-detail'+x).addClass('selected');
			$('.movie_text'+x).css({'color':'#fff'});
			$('.info.movie').append(compUI.image('movie_info_img',$$('i')+'/영화더미.PNG'));
			$('.info.movie').append(compUI.tag('div','movie_info_text_box'));
			$('#movie_info_text_box').append(compUI.tag('a','movie_info_text'));
			$('#movie_info_text_box').css({'margin-left':'110px','margin-top':'-90px'});
			$('#movie_info_text').text(($('.movie_text'+x).text()));
			$('#movie_info_text').css({'font-weight':'bold','color':'#cccccc','cursor':'pointer'});
			$('#movie_info_text').after(compUI.tag('div','movie_rating_box'));
			$('#movie_rating_box').append(compUI.tag('span','movie_rating'));
			$('#movie_rating_box').css({'padding-top':'30px'});
			$('#movie_rating').text($('#age_limit'+x).val()+'세 관람가').css({'font-weight':'bold'});
			setTimeout("lsy.btnOn.init()",100);
	};
	var setContentView=()=> {
		
	};
	return {init : init};
})();
lsy.detailSelect=(()=> {
	var init = x=> {
		$('#theater_select_box').remove();
		$('#date_select_detail').remove();
		$('#time_list_scrollbar').remove();
		$('#row_date_detail').text('');
		$('#row_time_detail').text('');
		$('#theater_text').text('');
		$('#day_selected_ul>li').removeClass('selected');
		$('#content-scroll-seoul>li').removeClass('selected');
		$('#content-scroll-seoul>li').css({'color':'black','font-weight':'bold'});
		$('.theater_list'+x).addClass('selected');
		$('.theater_list'+x).css({'color':'#fff'});
		$('#theater_detail').text('CGV  '+$('.theater_list'+x).text());
		sessionStorage.setItem('placeSeq',x+1);
		alert('플레이스 시퀀스'+$$('placeSeq'));
		setTimeout("lsy.btnOn.init()",100);
	}
	return {init:init};
})();

lsy.btnOn=(()=> {
	var i;
	var init = ()=> {
		if ($('#movie_info_text').text()!=="" && $('#theater_detail').text()!=="극장정보 상세보기" && $('#row_date_detail').text()!=="") {
			$('#time_select_detail').addClass('hidden');
				$('#date_select_detail').remove();
				$('.time-option').append(compUI.div('time_list_scrollbar'));
				$('#time_list_scrollbar').addClass('time-list nano has-scrollbar');
				$('#time_list_scrollbar').append(compUI.div('time_list_box'));
				$('#time_list_box').addClass('content scroll-y').css({'display':'inline-block'});
				
				
				$.ajax({
					url : $$('x')+'/get/reservation',
					method : 'POST',
					contentType : 'application/json',
					success : d=>{
						for(var i=0;i<d.theater.length;i++){
							$('#time_list_box').append(compUI.div('time_list_theater'+i));
							$('#time_list_theater'+i).addClass('theater');
							$('#time_list_theater'+i).append(compUI.span('time_list_theater_detail'+i));
							$('#time_list_theater'+i).css({'border':'none'});
							$('#time_list_theater'+i).after(compUI.tag('ul','date_select_detail'+i).css({'display':'-webkit-inline-box'}));
							$('#date_select_detail'+i).css({'padding-top':'15px','width':'300px','height':'110px'});
							$('#time_list_theater_detail'+i).append(compUI.tag('span','seat_count')).text(d.theater[i].name).css({'font-weight':'bold'});
							for (var j=0;j<d.schedule.length;j++) {
								$('#date_select_detail'+i).append(compUI.tag('li','date_select_detail_'+i+'_'+j).attr('onclick','lsy.selectTime.init('+i+','+j+')').css({'height':'30px','width':'27%','border':'1px solid #ccc','cursor':'pointer','margin-right':'15px'}));
								$('#date_select_detail'+i+'>li').css({'display':'inline-block','margin-bottom':'10px'});
									$('#date_select_detail_'+i+'_'+j)
											.append(compUI.classTag('a','button')
											.append(compUI.classTag('span','time')
											.append(compUI.noIdTag('span')
											.css({'font-size':'17px','font-weight':'bold','line-height':'25px'})
											.text(d.schedule[j].name))));
							}
						}
						$('#time_list_box>ul>li').css({'text-align':'center'});
					},
					error : (x,s,m)=>{
						alert('에러발생');
					}
				});
			if ($('#row_time_detail').text()==="" || $('#row_date_detail').text()==="" || $('#movie_info_text').text()==="" || $('#theater_detail').text()==="") {
				$('#tnb_step_btn_right').removeClass('btn-right on');
				$('#tnb_step_btn_right').addClass('btn-right');				
			}
		}
		else {
			$('#tnb_step_btn_right').removeClass('btn-right on');
			$('#tnb_step_btn_right').addClass('btn-right');		
		}
	};
	return {init:init};
})();

lsy.selectTime=(()=> {
	var init=(x,y)=> {
		onCreate(x,y);
	};
	var onCreate=(x,y)=> {
		$('#time_list_box>ul>li').css({'background-color':'#f2f0e5','border':'1px solid rgb(204, 204, 204)'});
		$('#time_list_box>ul>li>a>span>span').css({'color':'black'});
		$('#time_list_box>ul>li>a').css({'color':'black'});
		$('#row_time_detail').text($('#date_select_detail_'+x+'_'+y+'>a>span>span').text());
		$('#date_select_detail_'+x+'_'+y).css({'background-color':'#333333','border':'1px solid black'});
		$('#date_select_detail_'+x+'_'+y+'>a>span>span').css({'color':'#fff'});
		$('#date_select_detail_'+x+'_'+y+'>a').css({'color':'white'});
		$('#theater_text').text($('#time_list_theater_detail'+x).text());
		sessionStorage.setItem('theaterSeq',x+1);
		sessionStorage.setItem('scheduleSeq',y+1);
		
		if ($('#row_time_detail')!=="" && $('#movie_info_text').text()!=="" && $('#theater_detail').text()!=="극장정보 상세보기" && $('#row_date_detail').text()!=="") {
				$('#tnb_step_btn_right').removeClass('btn-right');
				$('#tnb_step_btn_right').addClass('btn-right on');
		}
	};

	return {init:init};
})();

lsy.seatSelect=(()=> {
	var init=()=> {
		if ($('#tnb_step_btn_right').hasClass('btn-right on') || $('#tnb_step_btn_right').hasClass('on.btn-right') || $('#tnb_step_btn_right').hasClass('on btn-right')) {
			alert('좌석선택 페이지 갑니다');
			sessionStorage.setItem('movieImg','영화더미');
			sessionStorage.setItem('movieName',$('#movie_info_text').text());
			sessionStorage.setItem('movieAge',$('#movie_rating').text());
			sessionStorage.setItem('theaterName',$('#theater_detail').text());
			sessionStorage.setItem('movieDate',$('#row_date_detail').text());
			sessionStorage.setItem('movieTime',$('#row_time_detail').text());
			sessionStorage.setItem('theaterNumber',$('#theater_text').text());

			$('#cgvwrap').remove();
			$('body').append(compUI.div('cgvwrap').append(reservationUI.selectSeat()));
			$('#seat_minimap_nano').append(compUI.div('background').css({'height':'350px','width':'700px','margin':'0 auto'}));
			
			
			$.ajax({
				url:$$('x') + '/post/reservation2',
				method : 'POST',
				contentType : 'application/json',
				data : JSON.stringify({
					'movie_seq' : $$('movieSeq'),
					'place_seq' : $$('placeSeq'),
					'advance_date' : $$('selectDate'),
					'theater_seq' : $$('theaterSeq'),
					'schedule_seq' : $$('scheduleSeq')
				}),
				success : d => {
					alert('에이잭스 통신 성공 , 남은 좌석 개수는: '+d.count);
					
					$('#rest_num').text(d.count + '석');
					if (typeof d.count == 'undefined') {
						$('#rest_num').text('30석');
					}
					var arr1 = d.seatList1;
					alert(typeof arr1+arr1);
					var strArr = arr1.split(',');
					var length = String(strArr).length;
					alert('시트 배열 개수는 : '+strArr.length);
					for(var i=0;i<strArr.length;i++) {
						j=i+1;
						$('#'+j+'>span>input').val(strArr[i]);
						if ($('#'+j+'>span>input').val()==="1") {
							$('#'+j).addClass('selected');
							$('#'+j).attr('onclick','false');
							$('#'+j).css({'background-color':'#bbb'});
							$('#'+j+'>span>a').css({'color':'white'});
						}
					}
				},
				error : (x,s,m)=>{
					alert('에러발생');
				}
			});
			alert('선택된 영화 시퀀스 값은' + sessionStorage.getItem('movieSeq'));
			

			/*좌석 선택 표 부분*/
			$('#seats_list').append(compUI.tag('ul','seats_list_ul').css({'height':'230px','width':'110px','margin':'0 auto','text-align':'center','display':'-webkit-inline-box'}));
			$('#seats_list').css({'text-align':'center'});
			$('#seats_list_ul').before(compUI.image('abcdef',$$('i')+'/ABCDEF.PNG').css({'width':'20px','height':'120px'}));
			
			for (var i=0;i<30;i++) {
				j=i+1;
				$('#seats_list_ul')
						.append(compUI.classTag('div','seats_div')
						.css({'width':'19%','height':'20px','border':'solid 1px #ccc','line-height':'19px','cursor':'pointer'})
						.append(compUI.classTag('span','seats_span')
						.append(compUI.noIdTag('input').attr('type','hidden').attr('value','0'))
						.append(compUI.noIdTag('a').text('1'))));
				$('.seats_div:nth-child('+j+')').attr('id',j);
				$('.seats_div:nth-child('+j+')').attr('onclick','lsy.selectDetail.init('+j+')');
			}
			
			$('#seats_list_ul>div').css({'display':'inline-block'});
			for (var i=1;i<6;i++) {
				$('#seats_list_ul>div:nth-child('+i+')>span>a').text(i);				
			}
			for (var i=6;i<11;i++) {
				$('#seats_list_ul>div:nth-child('+i+')>span>a').text(i-5);				
			}
			for (var i=11;i<16;i++) {
				$('#seats_list_ul>div:nth-child('+i+')>span>a').text(i-10);				
			}
			for (var i=16;i<21;i++) {
				$('#seats_list_ul>div:nth-child('+i+')>span>a').text(i-15);				
			}
			for (var i=21;i<26;i++) {
				$('#seats_list_ul>div:nth-child('+i+')>span>a').text(i-20);				
			}
			for (var i=26;i<31;i++) {
				$('#seats_list_ul>div:nth-child('+i+')>span>a').text(i-25);				
			}
			
			$('#theater_name').text($$('theaterName'));
			$('#theater_number').text($$('theaterNumber'));
			$('#rest_num').text('30석');
			$('.movie_type>span').text($$('movieName'));
			$('.movie_rating>span').text($$('movieAge'));
			$('#theater_name').text($$('theaterName'));
			$('#theater_detail>a').text($$('theaterName'));
			$('#date_detail').text($$('movieDate'));
			$('#theater_num').text($$('theaterNumber'));
			$('#seat_select_time_detail>b:nth-child(1)').text($$('movieDate'));
			$('#seat_select_time_detail>b:nth-child(2)').text(' / ');
			$('#seat_select_time_detail>b:nth-child(3)').text($$('movieTime'));
			$('#backBtn').click(()=> {
				lsy.common.init($$('x'));
			});
			for (var i=0;i<9;i++){
				$('#nop_group_adult>ul').append(
						'<li id="select_adult'+i+'"><a href="#" id="adult'+i+'"><span class="sreader mod">일반</span><span>'+i+'</span><span class="sreader">명</span></a></li>'						
				)
				var adult = $('#adult'+i+'>span:first-child').text();
				$('#adult'+i).attr('onclick', 'lsy.seatCount.init('+i+','+'\''+adult+'\''+')');
			}
			$('#nop_group_adult>ul>li:first-child').addClass('selected');
			$('#nop_group_adult>ul>li').css({'text-decoration':'none'});
			if ($$('movieAge')==="19세 관람가") {
				$('#nop_group_youth').remove();
			}
			else {
				for (var i=0;i<9;i++){
					$('#nop_group_youth>ul').append(
							'<li id="select_youth'+i+'"><a href="#" id="youth'+i+'"><span class="sreader mod">청소년</span><span>'+i+'</span><span class="sreader">명</span></a></li>'						
					)
					var youth = $('#youth'+i+'>span:first-child').text();
					$('#youth'+i).attr('onclick', 'lsy.seatCount.init('+i+','+'\''+youth+'\''+')');
				}
				$('#nop_group_youth>ul>li:first-child').addClass('selected');								
			}
			if ($$('movieAge')==="19세 관람가" || $$('movieAge')==="15세 관람가") {
				$('#nop_group_child').remove();
			}
			else {
				for (var i=0;i<9;i++){
					$('#nop_group_child>ul').append(
							'<li id="select_child'+i+'"><a href="#" id="child'+i+'"><span class="sreader mod">어린이</span><span>'+i+'</span><span class="sreader">명</span></a></li>'						
					)
					var child = $('#child'+i+'>span:first-child').text();
					$('#child'+i).attr('onclick', 'lsy.seatCount.init('+i+','+'\''+child+'\''+')');
				}
				$('#nop_group_child>ul>li:first-child').addClass('selected');				
			}
		}
		else if (!$('#tnb_step_btn_right').hasClass('btn-right on') || !$('#tnb_step_btn_right').hasClass('on btn-right')) {
			alert('영화 및 좌석, 필수 사항을 선택해주세요');
			return false;
		}
	};
	return {init:init};
})();

var total=0;
var adultCount;
var youthCount;
var childCount;
lsy.seatCount=(()=> {
	var init = (x,y)=> {
		onCreate(x,y);
		if (x==0) {
			total=0;
		}
		count=0;
		$('#seats_list_ul>li>')
		alert('토탈은'+total);
	};
	var onCreate = (x,y)=> {
		setContentView();
		var age = "";
		alert('인덱스는 : '+x +' 이고 나이제한은 ' + y);
		var adultMsg;
		var youthMsg;
		var childMsg;
		/*인원수체크*/
		$('#user-select-info').append(compUI.input('adultCount','hidden'));
		$('#user-select-info').append(compUI.input('youthCount','hidden'));
		$('#user-select-info').append(compUI.input('childCount','hidden'));
		if (y==="일반") {
			$('#adultCount').val(x);
		}
		if (y==="청소년") {
			$('#youthCount').val(x);
		}		
		if (y==="어린이") {
			$('#childCount').val(x);
		}
		adultCount=$('#adultCount').val();
		youthCount=$('#youthCount').val();
		childCount=$('#childCount').val();

		if ($('#adultCount').val()!=="") {
			total = parseInt(adultCount);
			if ($('#youthCount').val()!=="") {
				total = parseInt(adultCount)+parseInt(youthCount);
				if ($('#childCount').val()!=="") {
					total = parseInt(adultCount)+parseInt(youthCount)+parseInt(childCount);
				}
			}
			else if ($('#childCount').val()!=="") {
				total = parseInt(adultCount)+parseInt(childCount);
				if ($('#youthCount').val()!=="") {
					total = parseInt(adultCount)+parseInt(youthCount)+parseInt(childCount);
				}
			}
		}
		
		if ($('#youthCount').val()!=="") {
			total = parseInt(youthCount);
			if ($('#childCount').val()!=="") {
				total = parseInt(childCount)+parseInt(youthCount);
				if ($('#adultCount').val()!=="") {
					total = parseInt(adultCount)+parseInt(youthCount)+parseInt(childCount);
				}
			}
			else if ($('#adultCount').val()!=="") {
				total = parseInt(adultCount)+parseInt(youthCount);
				if ($('#childCount').val()!=="") {
					total = parseInt(adultCount)+parseInt(youthCount)+parseInt(childCount);
				}
			}
		}

		if ($('#childCount').val()!=="") {
			total = parseInt(childCount);
			if ($('#adultCount').val()!=="") {
				total = parseInt(childCount)+parseInt(adultCount);
				if ($('#youthCount').val()!=="") {
					total = parseInt(adultCount)+parseInt(youthCount)+parseInt(childCount);
				}
			}
			else if ($('#youthCount').val()!=="") {
				total = parseInt(childCount)+parseInt(youthCount);
				if ($('#adultCount').val()!=="") {
					total = parseInt(adultCount)+parseInt(youthCount)+parseInt(childCount);
				}
			}
		}
		
		if (total==0) {
			$('#background').css({'background-color':'rgba(0, 0, 0, 0.15)'});
			$('#background').addClass('mouse_block');
			$('#seat_number_list').text('');
		}
		else if(total >= 1) {
			$('#background').removeClass('mouse_block');
			$('#background').css({'background-color':'white'});
		}
		if (total >= 9) {
			alert('예약가능 인원수는 8명 이하입니다');
			return false;
		}
		/*인원수체크 끝*/
		if (y==="일반") {
			age = "adult";
			adultMsg = y + ' ' + x + '명';
			adultCount = x;
			
			$('#people_count>span:nth-child(2)').text(adultMsg);
		}
		else if (y==="청소년") {
			age = "youth";
			youthMsg = y + ' ' + x + '명';
			youthCount = x;

			if ($('#people_count>span:nth-child(2)').text()==="") {
				$('#people_count>span:nth-child(3)').text(youthMsg);
			}
			else {
				$('#people_count>span:nth-child(3)').text(','+youthMsg);
			}
		}
		else if (y==="어린이") {
			age = "child";
			childMsg = y + ' ' + x + '명';
			childCount = x;
			
			if ($('#people_count>span:nth-child(2)').text()==="" && $('#people_count>span:nth-child(3)').text()==="") {
				$('#people_count>span:nth-child(4)').text(childMsg);				
			}
			else {
				$('#people_count>span:nth-child(4)').text(','+childMsg);
			}
		}
		
		$('#nop_group_'+age+'>ul>li').removeClass('selected');
		$('#select_'+age+x).addClass('selected');
		$('#people_count').css({'display':'inline-block'});
		var plus = y + ' '+ x + '명';
		var $text = $('#people_count>span:nth-child(2)').text();
		
		if (x==0) {
			$('#adultCount').val(x);
			$('#youthCount').val(x);
			$('#childCount').val(x);
			$('#nop_group_adult>ul>li').removeClass('selected');
			$('#nop_group_youth>ul>li').removeClass('selected');
			$('#nop_group_child>ul>li').removeClass('selected');
			$('#nop_group_adult>ul>li:first-child').addClass('selected');
			$('#nop_group_youth>ul>li:first-child').addClass('selected');
			$('#nop_group_child>ul>li:first-child').addClass('selected');
			$('#people_count>span:nth-child(2)').text('');
			$('#people_count>span:nth-child(3)').text('');
			$('#people_count>span:nth-child(4)').text('');
			if (y==="일반") {
				$('#people_count>span:nth-child(2)').text('');
			}
			else if (y==="청소년") {
				$('#people_count>span:nth-child(3)').text('');
			}
			else if (y==="어린이") {
				$('#people_count>span:nth-child(4)').text('');
			}
		}
	};
	var setContentView = ()=> {
		
	};
	return {init:init};
})();

lsy.date=(()=> {
	var init = x=> {
		onCreate(x);
	};
	var onCreate = x=> {
		if ($('#movie_info_text').text()==="") {
			alert('영화나 극장을 먼저 선택해주세요');
			return false;
		}
		else if ($('#theater_detail').text()==="") {
			$('#date_select_detail').remove();
			alert('극장을 선택해 주세요');
			return false;
		}
		setContentView();
		$('#theater_text').text('');
		$('#row_time_detail').text('');
		$('#day_selected_ul>li').removeClass('selected');
		$('#date_select_detail').remove();
		$('#time_list_box>ul').remove();
		$('#time_list_box>div').remove();
		$('.day_selected'+x).addClass('selected');
		
		var $year = $('#detail_date>span:nth-child(1)').text();
		var $date = $('#detail_date>span:nth-child(2)').text();
		var $dayweek = $('#detail_dayweek'+x);
		$('#row_date_detail').text($year+ '/' + $date + ' / ' + $dayweek.text());
		var clickDay = parseInt(dd)+parseInt(x);
		sessionStorage.setItem('selectDate',yyyy+ '-' + mm + '-'+clickDay);
		setTimeout("lsy.btnOn.init()",100);
	};
	var setContentView = ()=> {
		
	};
	return {init : init};
})();
var count = 0;
lsy.selectDetail=(()=>{
	var init=x=> {
		onCreate(x);
		count = count + 1;
		if (total==0) {
			alert('인원을 먼저 선택해주세요');
			count=0;
			return false;
		}
		alert('현재 카운트는'+count);
		if (count>total) {
			alert('좌석을 더이상 선택할수 없습니다');
			return false;
		}
		$('#'+x+'>span>input').val('1');
		if ($('#'+x+'>span>input').val()==="1") {
			$('#'+x).addClass('selected');
			$('#'+x).attr('onclick','false');
			$('#'+x).css({'background-color':'#ad1712'});
			$('#'+x+'>span>a').css({'color':'white'});
		}
		if (x > 0 && x < 6) {
			x = 'A'+$('#'+x+'>span>a').text();
		}
		else if (x > 5 && x < 11) {
			x = 'B'+$('#'+x+'>span>a').text();
		}
		else if (x > 10 && x < 16) {
			x = 'C'+$('#'+x+'>span>a').text();
		}
		else if (x > 15 && x < 21) {
			x = 'D'+$('#'+x+'>span>a').text();
		}
		else if (x > 20 && x < 26) {
			x = 'E'+$('#'+x+'>span>a').text();
		}
		else if (x > 25 && x < 31) {
			x = 'F'+$('#'+x+'>span>a').text();
		}
		
		if (count == total) {
			$('#tnb_step_btn_right').addClass('btn-right on');
			$('#adultPrice').text(adultCount * 9000);
			$('#youthPrice').text(youthCount * 7000);
			$('#childPrice').text(childCount * 5000);
			$('#totalPrice').text(adultCount * 9000+youthCount * 7000+childCount * 5000);
		}
		else {
			$('#tnb_step_btn_right').removeClass('btn-right on');			
			$('#tnb_step_btn_right').addClass('btn-right');
		}
		
		if ($('#tnb_step_btn_right').hasClass('btn-right on')) {
			$('#tnb_step_btn_right').attr('onclick','lsy.pay.init()');
		}

		if ($('#seat_number_list').text()!=="") {
			var text = $('#seat_number_list').text();
			$('#seat_number_list').text(text +','+x);
		}
		else {
			$('#seat_number_list').text(x);
		}

	}
	var onCreate = ()=> {
		setContentView();
	}
	var setContentView=()=> {
		
	}
	return {init:init}
})();

lsy.pay = (()=> {
	var init=()=> {
		var str = "";
		for (var i=0;i<30;i++) {
			j=i+1;
			var seat = $('#'+j+'>span>input').val();
			if (i < 29) {
				str+=seat + ',';
			}
			else {
				str+=seat;
			}
		}
		$.ajax({
			url:$$('x') + '/post/reservation',
			method : 'POST',
			contentType : 'application/json',
			data : JSON.stringify({
				'movie_seq' : $$('movieSeq'),
				'place_seq' : $$('placeSeq'),
				'advance_date' : $$('selectDate'),
				'theater_seq' : $$('theaterSeq'),
				'schedule_seq' : $$('scheduleSeq'),
				'total_cost' : $('#totalPrice').text(),
				'member_id' : $$('member_id'),
				'seat_list' : str
			}),
			success : d => {
				alert(typeof d.apply);
				if (typeof d.apply == "number") {
					alert('예약 되셨습니다');
					alert('예약된 아이디는' + $$('member_id') + '이고, 예약된 영화는 ' + $('#movie_name_text').text() +
							'이고, 예약된 극장은 ' + $('#theater_detail>a').text()+'이고, 예약된 날짜는 '+$$('selectDate') +
							'이고, 예약된 관은 ' + $('#theater_number').text() + '이고, 예약된 시간은 ' + 
							$('#seat_select_time_detail>b:nth-child(3)').text() + '이고, ' +
							'가격은 ' + $('#totalPrice').text() + '원 이고, ' +
							'배당 좌석은 ' + $('#seat_number_list').text() + '입니다.');
					sessionStorage.setItem('movieName',$('#movie_name_text').text());
					sessionStorage.setItem('placeName',$('#theater_detail>a').text());
					sessionStorage.setItem('theaterName',$('#theater_detail>a').text());
					sessionStorage.setItem('price',$('#totalPrice').text());
					sessionStorage.setItem('seatInfo',$('#seat_number_list').text());
					sessionStorage.setItem('movieTime',$('#seat_select_time_detail>b:nth-child(3)').text());
					sessionStorage.setItem('total_count',total);
					
					$('#cgvwrap').remove();
					$('body').append(compUI.div('cgvwrap').append(reservationUI.complete()));
					$('#cgvwrap').css({'background-color':'rgba(0, 0, 0, 0.15)','width':'70%','margin':'0 auto','margin-top':'100px'});
					$('.tit-mycgv>h3').css({'height':'100px'});
					$('#member_id_text').val('예약된 아이디 : '+$$('member_id'));
					$('#movie_id_text').val('예약된 영화 : '+$$('movieName'));
					$('#movie_place_text').val('예약된 지역 : '+$$('placeName'));
					$('#movie_date_text').val('예약된 날짜 : '+$$('selectDate'));
					$('#movie_theater_text').val('예약된 관 : '+$$('theaterName'));
					$('#movie_time_text').val('예약된 시간 : '+$$('movieTime'));
					$('#movie_price_text').val('가격 : '+$$('price')+'원');
					$('#movie_seat_text').val('좌석 정보 : '+$$('seatInfo'));
					$('#movie_count_text').val('총 인원 : '+$$('total_count')+'명');
				}
			},
			error : (x,s,m)=>{
				alert('에러발생');
			}
		});
		alert(str);
	}
	return {init:init}
})();

lsy.session=
{
   init : (x)=>{
			sessionStorage.setItem('x',x);
			sessionStorage.setItem('j',x+'/resources/js');
			sessionStorage.setItem('c',x+'/resources/css');
			sessionStorage.setItem('i',x+'/resources/img');
   		  },
   getPath : (x)=>{
			return sessionStorage.getItem(x);
   		  }
};
var $$ = (x)=>{return lsy.session.getPath(x);};