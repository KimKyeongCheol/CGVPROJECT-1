<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="No-Cache">
<meta http-equiv="imagetoolbar" content="no">
<meta name="viewport" content="width=1024">
<meta name="keywords"
	content="CGV, 시지브이, 영화관, 극장, 영화, 티켓, 박스오피스, 극장, Movie, Theater, Cinema, Cgv, cgv, 예매, 상영작">
<meta name="description"
	content="CGV는 선진화된 관람문화와 최고의 서비스로 고객에게 잊을 수 없는 감동을 선사합니다. CGV홈페이지를 통해 영화 예매뿐만 아니라 그 이상의 서비스와 감동을 전달하고, 다양한 즐거움과 특별한 경험을 제공하고자 합니다.">
<meta property="og:site_name" content="영화 그 이상의 감동. CGV">
<meta id="ctl00_ctl00_og_title" property="og:title"
	content="MY CGV HOME < My CGV | 영화 그 이상의 감동. CGV">

<meta id="ctl00_ctl00_og_image" property="og:image"
	content="http://img.cgv.co.kr/common/cgv_200x200.jpg">
<link rel="alternate" href="http://m.cgv.co.kr">
<link rel="shortcut icon"
	href="http://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon">
<title id="ctl00_ctl00_headerTitle">MY CGV HOME &lt; My CGV | 영화
	그 이상의 감동. CGV</title>
<link rel="shortcut icon" type="image/x-icon"
	href="http://img.cgv.co.kr/R2014/images/favicon.ico">
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/reset.css">
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/layout.css">
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/module.css">
<!--<link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/module_170718.css" />-->
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/common.css">
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/content.css">
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/eggupdate.css">
<link rel="stylesheet" media="print" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/print.css">

<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/content_prepaid_card_170421.css">


<link rel="stylesheet" type="text/css"
	href="http://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css">

<!--[if lte IE 9]><script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.placeholder.js"></script><![endif]-->






<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/phototicket/phototicket.css">
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/slick.css">
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/slick-theme-custom.css">



<!-- 각페이지 Header Start-->

<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/phototicket/phototicket.css">
<link rel="stylesheet" href="${path.ctx}/resources/css/base.css">
	<link rel="stylesheet" href="${path.ctx}/resources/css/member.css"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="${path.js}/kyungchul.js"></script>


</head>
<body class="" style="">

	<div class="skipnaiv"></div>
	<div id="cgvwrap">

		<!-- Header -->
		<div id="header">
		
		</div>
		
		<div id="contaniner" class="bg-bricks">
			
			<div id="ctl00_ctl00_navigation_line" class="linemap-wrap">
				<div class="sect-linemap">
					<div class="sect-bcrumb">
						<ul>
							<li><a href="/"><img alt="home"
									src="http://img.cgv.co.kr/R2014/images/common/btn/btn_home.png"></a></li>

							<li><a href="">My CGV</a></li>

							<li class="last" id="goHome">MY CGV HOME</li>

						</ul>
					</div>

				</div>
			</div>

			<div id="contents" class="">

				<div class="sect-common">
					<input type="hidden" id="isTown" name="isTown" value="Y"> <input
						type="hidden" id="userTownMemberInfo" name="userTownMemberInfo"
						value="">
					<div class="mycgv-info-wrap">
						<div class="skipnaiv">
							<a href="#menu" id="skipPersoninfo">개인화영역 건너띄기</a>
						</div>
						<div class="sect-person-info">
							<h2 class="hidden">개인화 영역</h2>
							<div class="box-image">
								<span class="thumb-image"> 
								<span class="profile-mask"></span>
								</span>
							</div>
							<div class="box-contents newtype">
								<div class="person-info">
									<strong></strong> <em></em> <span>닉네임 : <i>닉네임을
											설정해주세요.</i>
									</span>
									<button id="go_edit_page" type="button" title="새창열림">나의
										정보 변경</button>
								</div>
								<div class="grade-info">

									<p
										style="margin-bottom: 4px; color: #342929; font-family: 'NanumBarunGothicBold', '맑은 고딕', '돋움', Dotum, sans-serif; font-size: 20px; line-height: 20px;">



										고객님은 <strong class="txt-purple">일반</strong> 입니다.




									</p>
									<button type="button" id="view_usergrade" class="round black">
										<span>MY 지난등급이력 보기</span>
									</button>



									<div class="mycgv_btn_special2">

										<h5 class="special_tit">SPECIAL MEMBERSHIP</h5>

									</div>


								</div>
							</div>
						</div>
						<div class="cols-benefit-info">
							<div class="col-my-coupon">
								<h3>MY COUPON</h3>
								<ul>

									<li><strong>CGV VIP에 도전하세요!</strong> <span><a
											href="/user/vip-lounge/" class="round black1"><i>CGV
													VIP 혜택보기</i></a></span></li>

									<li><strong>CGV 할인쿠폰</strong> <span><em>0</em> 개</span></li>
									<li><strong>영화관람권</strong> <span><em>0</em> 개</span></li>
								</ul>
							</div>


							<div class="col-one-point">
								<h3>CJ ONE POINT</h3>
								<a href="/user/mycgv/cjone-point/pointlist.aspx">CJ ONE
									POINT 더보기</a>
								<ul>
									<li><strong>CJ ONE 사용가능 포인트</strong> <span><em
											class="txt-maroon">2,135</em> 점</span></li>
									<li class="tooltip_list cf"><strong>VIP선정 포인트</strong><a
										href="/user/mycgv/cjone-point/pointlist.aspx"
										class="mycgv_tooltip"><img
											src="http://img.cgv.co.kr/R2014/images/common/mycgv_tooltip/ico_tooltip.png"
											alt="i"></a>

										<div class="tooltip_con tc2">
											<span><img
												src="http://img.cgv.co.kr/R2014/images/common/mycgv_tooltip/tooltip_con2.png"
												alt="CGV에서 구매를 통해 적립된 매표 구매 포인트/매점&amp;씨네샵 구매 포인트/VIP 선정에 포함되는 이벤트 포인트가 누적으로 합산된 포인트 입니다"></span>
										</div> <span><em>844</em> 점</span></li>
								</ul>

							</div>
							<div class="col-favorite-theater">
								<h3 class="hidden">자주가는 CGV</h3>
								<div class="sect-favorite">
									<ul id="favoriteTheaters">

										<li><a href="#" data-regioncode="" data-theatercode=""><span>1<em>순위</em></span></a></li>

										<li><a href="#" data-regioncode="" data-theatercode=""><span>2<em>순위</em></span></a></li>

										<li><a href="#" data-regioncode="" data-theatercode=""><span>3<em>순위</em></span></a></li>

										<li><a href="#" data-regioncode="" data-theatercode=""><span>4<em>순위</em></span></a></li>

										<li><a href="#" data-regioncode="" data-theatercode=""><span>5<em>순위</em></span></a></li>

									</ul>
									<button id="btn_set_my_favorite" title="새창" type="button"
										class="setting">
										자주가는 CGV<br>설정하기
									</button>
								</div>
							</div>

							<div class="cols-point-wrap"></div>

						</div>
					</div>
				</div>

				<div class="cols-content" id="menu">
					<div class="col-aside">
						<div class="skipnaiv">
							<a href="#mycgv_contents" id="skipMycgvMenu">MYCGV 서브메뉴 건너띄기</a>
						</div>
						<h2>MY CGV 서브메뉴</h2>
						<div class="snb">
							<ul>
								<li class="on"><a>MY
										CGV HOME <i></i>
								</a></li>
								<li><a id="member_update">회원정보수정 <i></i></a></li>
							</ul>
							<div class="ad-partner01">
								<iframe
									src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@M_Rectangle"
									width="160" height="300" title="" frameborder="0"
									scrolling="no" marginwidth="0" marginheight="0"
									id="M_Rectangle"></iframe>
							</div>
							<div class="ad-partner02">
								<iframe
									src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Image_text"
									width="160" height="35" title="" frameborder="0" scrolling="no"
									marginwidth="0" marginheight="0" id="Image_text"></iframe>
							</div>
						</div>
					</div>
					<div class="col-detail" id="mycgv_contents">

						<div class="sect-mycgv-reserve movielog col4">
							<div class="box-polaroid">
								<div class="box-inner wishlist">
									<a href="http://www.cgv.co.kr/user/movielog/" title="위시리스트">
										<h3>위시리스트</h3> <span>보고 싶은 영화들을 미리 <br>담아두고 싶다면?
									</span>
									</a>
								</div>
								<div class="box-inner watched">
									<a href="" title="내가 본 영화">
										<h3>내가 본 영화</h3> <span>관람한 영화들을 한번에 <br>모아 보고 싶다면?
									</span>
									</a>
								</div>
								<div class="box-inner mvdiary">
									<a href="" title="무비다이어리">
										<h3>무비다이어리</h3> <span>관람 후 내 감상평을 적어 <br>추억하고 싶다면?
									</span>
									</a>
								</div>
								<div class="box-inner photi">
									<a href="" target="_blank">
										<h3>포토티켓</h3> <span>단 하나뿐인 나만의<br>티켓을 간직하고 싶다면?
									</span>
									</a>
								</div>
							</div>
						</div>
						<div class="tit-mycgv">
							<h3>MY 예매내역</h3>
							<p>
								<em>0건</em> <a href="">예매내역 더보기</a>
							</p>
							<span>예매번호로만 티켓을 찾을 수 있으니 반드시 확인 부탁드립니다.</span>
						</div>

						<form name="aspnetForm" method="post" action="./" id="aspnetForm">
							<div>
								<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET"
									value=""> <input type="hidden" name="__EVENTARGUMENT"
									id="__EVENTARGUMENT" value=""> <input type="hidden"
									name="__VIEWSTATE" id="__VIEWSTATE"
									value="/wEPDwUKMjAzNjI1MTIzN2Rkb61/wKC2wl92h7iknOS3c2nC6AQ=">
							</div>


							<div>

								<input type="hidden" name="__VIEWSTATEGENERATOR"
									id="__VIEWSTATEGENERATOR" value="F268F2D4"> <input
									type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
									value="/wEdAANEBwag/p6Cyp7NqgHffiIrAAaiyC+ogOIlg3pscMtiP2lKUwCIH8TI/sjrTPJzW34iVv8t0sMzGIw9AmgL9DZ3cbnRDQ==">
							</div>
							<!-- 팝업시작 -->
							<!-- 팝업 노출 시 .layer-wrap 에 클래스 .off는 없애고 .on 추가해주세요.-->
							<div class="layer-wrap pop_corp_session logpopup off">
								<div class="pop_wrap">
									<h1>자동 로그아웃 안내</h1>
									<button type="button" class="btn-close">자동 로그아웃 안내 팝업
										닫기</button>
									<div class="pop-contents">
										<div class="sect-corp-session">
											<div class="cf ss_con_wrap">
												<h5>
													자동 로그아웃 남은 시간 : <span class="col_red"><em><span
															id="expTime"></span></em>초</span>
												</h5>
												<p>
													로그인 시간을 연장하시려면 <br>로그인 연장 버튼을 클릭해주세요.
												</p>
											</div>
											<div class="cf ss_btn_wrap">
												<a
													id="ctl00_ctl00_PlaceHolderContent_ChildPlaceHolderContents_LinkButton1"
													class="round inblack"
													href="javascript:__doPostBack('ctl00$ctl00$PlaceHolderContent$ChildPlaceHolderContents$LinkButton1','')"><span>로그인
														연장</span></a> <a
													id="ctl00_ctl00_PlaceHolderContent_ChildPlaceHolderContents_LinkButton2"
													class="round gray"
													href="javascript:__doPostBack('ctl00$ctl00$PlaceHolderContent$ChildPlaceHolderContents$LinkButton2','')"><span>로그아웃</span></a>
											</div>
										</div>
									</div>
								</div>
							</div>

							<input type="hidden" id="hidCancelReserveNo"
								name="hidCancelReserveNo">
							<div class="sect-base-booking">
								<img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000079/79960/79960_185.jpg">
							</div>
						</form>
						
						<div class="sect-mycgv-part">
							<div class="box-polaroid type1">
						
								<div class="box-inner">
									<div class="tit-mycgv">
										<h3>MY Q&amp;A</h3>
										<p>
											<em>0건</em> <a href="">MY Q&amp;A 더보기</a>
										</p>
									</div>
									<div class="col-myqna">

										<ul>
											<li>고객님의 1:1 문의내역이 존재하지 않습니다.</li>
										</ul>

									</div>
								</div>
							</div>
						</div>

						<form name="targetform" id="targetform" method="post"
							novalidate="novalidate">
							<input type="hidden" name="reverse_no" id="reverse_no">
						</form>

					</div>
				</div>
			</div>

		</div>
		
	</div>
	
	<div id="ctl00_ctl00_sect_person_right" class="sect-aside-banner"
		style="padding: 0; margin: 0; position: fixed; z-index: 1;">
		<div class="aside-content-top">
			<div class="aside-content-btm">
				<a href="/theaters/"><img
					src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_theater.gif"
					alt="CGV THEATER"></a> <a href="/arthouse/"><img
					src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_arthouse.gif"
					alt="CGV arthouse"></a> <a href="/theaters/special/"><img
					src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_special.gif"
					alt="CGV SPECIAL"></a> <a href="http://phototicket.cgv.co.kr/"
					target="_blank"><img
					src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_phototicket.gif"
					alt="CGV 포토티켓"></a> <a href="/user/mycgv/reserve/"
					class="required-login" data-url="/user/mycgv/reserve/"><img
					src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_ticket.gif"
					alt="CGV TICKET INFO"></a> <a
					href="http://section.cgv.co.kr/discount/Special/discount/Default.aspx"><img
					src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_discount.gif"
					alt="CGV DISCOUNT INFO"></a>
			</div>
		</div>
		<div class="btn-top">
			<a href="#" onclick="scrollTo(0,0);return false;"><span>최상단으로
					이동</span></a>
		</div>
	</div>

<script>
kyungchul.main.init('${path.ctx}')
</script>



</body>
</html>