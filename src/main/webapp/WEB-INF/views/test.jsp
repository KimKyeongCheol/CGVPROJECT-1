<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Expires" content="-1" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="No-Cache" />
    <meta http-equiv="imagetoolbar" content="no" />
    <meta name="viewport" content="width=1024" />
    <meta name="keywords" content="CGV, 시지브이, 영화관, 극장, 영화, 티켓, 박스오피스, 극장, Movie, Theater, Cinema, Cgv, cgv, 예매, 상영작" />
    <meta name="description" content="CGV는 선진화된 관람문화와 최고의 서비스로 고객에게 잊을 수 없는 감동을 선사합니다. CGV홈페이지를 통해 영화 예매뿐만 아니라 그 이상의 서비스와 감동을 전달하고, 다양한 즐거움과 특별한 경험을 제공하고자 합니다." />
    <meta property="og:site_name" content="영화 그 이상의 감동. CGV"/>
    <meta id="ctl00_og_title" property="og:title" content="영화 그 이상의 감동. CGV"></meta>
    
    <meta id="ctl00_og_image" property="og:image" content="http://img.cgv.co.kr/common/cgv_200x200.jpg"></meta>
    <link rel="alternate" href="http://m.cgv.co.kr" />
    <link rel="shortcut icon" href="http://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon" />
    <title id="ctl00_headerTitle">영화 그 이상의 감동. CGV</title>
    <link rel="shortcut icon" type="image/x-icon" href="http://img.cgv.co.kr/R2014/images/favicon.ico" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/reset.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/layout.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/module.css" />
    <!--<link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/module_170718.css" />-->
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/common.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/content.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/eggupdate.css" />
    <link rel="stylesheet" media="print" type="text/css" href="http://img.cgv.co.kr/R2014/css/print.css" />    
   
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/content_prepaid_card_170421.css" />
  

    <link rel="stylesheet" type="text/css" href="http://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css" />
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/app.config.js"></script>
    <script type="text/javascript" src="/common/js/extraTheaters.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.tmpl.min.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.validate.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.paging.min.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.ui/jquery-ui-1.10.4.custom.min.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.utils.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/app.utils.js"></script>
	<script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.utils.pageing.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/app.init.js"></script>

    <!--[if lte IE 9]><script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.placeholder.js"></script><![endif]-->
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/silverlight_link.js"></script>


    

	<script src="http://img.cgv.co.kr/R2014/js/slick/slick.js" type="text/javascript" charset="utf-8"></script>

    
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/phototicket/phototicket.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/slick.css" />
	<link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/slick-theme-custom.css" />

  

    
    
</head>
<body class="">

    <form name="ssologinfrm" action="https://www.cgv.co.kr/user/login/login-sso.aspx" method="post">
        <input type="hidden" id="cjssoq" name="cjssoq" />
        <input type="hidden" name="returnURL" value="/default.aspx" />
    </form>
   

<div class="skipnaiv">
	<a href="#contents" id="skipHeader">메인 컨텐츠 바로가기</a>
</div>
<div id="cgvwrap">
    <div class="cgv-ad-wrap" id="cgv_main_ad">
        <div id="TopBarWrapper" class="sect-head-ad">
            <div class="top_extend_ad_wrap">
                <div class="adreduce" id="adReduce">                    
                    <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@TopBar_EX" width="100%" height="80" title="" frameborder="0" scrolling="no" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" name="TopBanner" id="TopBanner"></iframe>
                </div> 
                <div class="adextend" id="adExtend"></div>
            </div><!-- //.top_extend_ad_wrap -->
        </div>    
    </div>    
	<!-- Header -->
	<div id="header">
		<div class="head">
			<h1><a href="/" ><img src="http://img.cgv.co.kr/R2014/images/title/h1_cgv.png" alt="CGV" /></a></h1>
			<div class="sect-service">
				<h2>서비스 메뉴</h2>
				<ul class="util">
					<li>
                        <!-- 2016.02.22 수정 -->
                        <a href="http://section.cgv.co.kr/event/appRenewal/default.aspx" class="app" target="_blank" title="CGV앱 4.0 설치 새창" ><span>CGV앱 4.0 설치</span></a>
						<!-- 앱 다운로드 레이어 팝업 -->
						<div class="app-downinfo">
							<div class="inner">
								
								<div class="tit-box">
									<strong>CGV앱을 만나는 아주 편리한 방법</strong>
								</div>
								<div class="choice-way">
									<div class="sms">
										<div class="cw-info">
											<strong><img src="http://img.cgv.co.kr/R2014//images/common/tit_sms.gif" alt="SMS" /></strong>
											<p>휴대폰 번호를 입력하고 SMS로<br />앱 설치 URL 안내받으세요</p>
										</div>
										<div class="myapp">
											<input type="radio" id="myapp1" name="myapp" value="I" checked /><label for="myapp1">아이폰 앱</label>
											<input type="radio" id="myapp2" name="myapp" value="A" /><label for="myapp2">안드로이드 앱</label>
										</div>
										<div class="phone">
											<label for="">휴대폰번호</label>
											<input type="text" id="phoneNum1" maxlength="3" onkeydown="numberOnly();" /> - <input type="text" id="phoneNum2" maxlength="4" onkeydown="numberOnly();" /> - <input type="text" id="phoneNum3" maxlength="4" onkeydown="numberOnly();" />
											<p class="cw-desc">모바일 앱 설치 URL 전송을 위해 휴대폰번호를 입력하며 입력된 정보는 저장되지 않습니다.</p>
										</div>
										<button type="button" class="btn_send"><span>전송하기</span></button>
									</div>

									<div class="qr">
										<div class="cw-info">
											<strong><img src="http://img.cgv.co.kr/R2014//images/common/tit_qrcode.gif" alt="QR CODE" /></strong>
											<p>하단의 QR코드를 찍고 앱 설치<br />페이지로 바로 이동하세요</p>
										</div>
										<div class="qr-codeimg">
											<img src="http://img.cgv.co.kr/R2014//images/common/img_qrcode.gif" alt="QR CODE" />
										</div>
									</div>
								</div>
								<div class="ad-banner">
									<a href="http://section.cgv.co.kr/event/appRenewal/default.aspx"><img src="http://img.cgv.co.kr/R2014//images/common/banner_appdown.png" alt="NICE TO &quot;APP&quot;YOU, CGV APP 자세히보기" /></a>
									<!-- 
									<map name="appban" id="appban">
										<area shape="rect" coords="0,47,457,107" href="#" alt="자세히보기" />
									</map>
									-->
								</div>
								<a class="btn_close" href="#">팝업 닫기</a>
							</div>
						</div>
                        <!-- 2016.02.22 수정 -->
                    </li>
					<li><a href="https://www.facebook.com/CJCGV" class="like" target="_blank" title="Facebook 좋아요! 새창" ><span>Facebook 좋아요!</span></a></li>
				    <li><a href="https://www.instagram.com/cgv_korea/" class="insta" target="_blank" title="Instagram Follow" ><span>Instagram Follow</span></a></li>
                	<li><a href="/discount/" class="frugal" ><span>알뜰한 영화관람법!</span></a></li> <!-- 할인카드 -->
				</ul>
				<ul class="gnb">
                
                    <li><a href="/user/login/?returnURL=http%3a%2f%2fwww.cgv.co.kr%2fDefault.aspx" class="login" ><span>로그인</span></a></li>
					<li><a href="/user/join/" class="join" ><span>회원가입</span></a></li>
                    
                

					<li><a href="/user/mycgv/" class="mycgv required-login" data-url="/user/mycgv/" ><span>MY CGV</span></a></li>
					<li><a href="/user/vip-lounge/" class="vip" ><span>VIP LOUNGE</span></a></li>
					<li><a href="/user/memberShip/ClubService.aspx" title="새창" class="club specialclub"  ><span>CLUB 서비스</span></a></li>
					<!-- 2014.12.8 리뉴얼-->
					<li><a href="/support/default.aspx" class="customer" ><span>고객센터</span></a></li>
				    <!-- 2014.12.8 리뉴얼-->
					<li><a href="/ticket/eng/newdefault.aspx" class="showtimes"   ><span>ENGLISH TICKETING</span></a></li>
				</ul>
			</div>
            
            <div class="im-wrap"> <!-- Important wrap -->
				<h2><img src="http://img.cgv.co.kr/R2014/images/title/h2_cultureplex.png" alt="CULTUREPLEX" /></h2>
				<!-- Local Navigation Bar -->
				<div class="lnb">
					<h2>CGV 주메뉴</h2>
					<ul id="gnb_list">
						<li class="movie"><a href="/movies/">영화</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/movies/?ft=0" >무비차트</a></li>
										<li><a href="/movies/hd-trailer.aspx" >HD 트레일러</a></li>
										<li><a href="/movies/finder.aspx" >무비파인더</a></li>
										<li><a href="/movies/point/" >평점</a></li>
										<li class="last"><a href="/arthouse/" >CGV아트하우스</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li class="booking"><a href="/ticket/">예매</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/ticket/" >빠른예매</a></li>
										<li><a href="/reserve/show-times/" >상영시간표</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li class="theaters"><a href="/theaters/">극장</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/theaters/" >CGV 극장</a></li>
										<li><a href="/theaters/special/" >특별관</a></li>
										<li class="last"><a href="/user/memberShip/ClubService.aspx" title="새창" class="specialclub" >Club서비스</a></li>
									</ul>
								</div>
							</div>
						</li>
                        <li class="culture"><a href="/culture-event/event/">이벤트&amp;컬쳐</a>
							<div class="sub-wrap">
								<i></i>
								<div class="smenu">
									<ul>
										<li><a href="/culture-event/event/" >이벤트</a></li>
										<li><a href="/culture-event/culture-shop/" >티켓·팝콘스토어</a></li>
										<li><a href="/magazine/" >매거진</a></li>
									
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<!-- /Local Navigation Bar -->
                <!-- Integrated search(통합검색) -->
                <div class="sect-srh">
					<h2>통합검색서비스</h2>
					<fieldset>
						<legend>통합검색</legend>
						<input type="text" title="통합검색" id="header_keyword" name="header_keyword" minlength="2" maxlength="20" />
                        <input type="hidden" id="header_ad_keyword" name="header_ad_keyword" />
						<button type="button" class="btn-go-search" id="btn_header_search" >검색</button>
                        <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Search_txt" width="0" height="0" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0"></iframe>
					</fieldset>
				</div>
				<!-- /Integrated search(통합검색) -->
				<!-- Quick Phototicket -->
				<div class="sect-phototicket">
					<h2>CGV 포토티켓</h2>
					<a href="http://phototicket.cgv.co.kr/" target="_blank">CGV 포토티켓</a>
				</div>
				<!-- /Quick Phototicket -->
				<!-- Advertisement -->
                
				<div class="ad-partner">
                    <a href="http://section.cgv.co.kr/discount/Special/discount/Default.aspx"  >
                        <img src="http://img.cgv.co.kr/Event/Event/JehuBanner/2015/0917/web_BC_133.png" alt="비씨카드" />
                    </a>
					 <!-- 외부광고영역 -->
				</div>
                
				<!-- /Advertisement -->
			</div>
		</div>
        <!-- Personalization -->
		
		<!-- /Personalization -->        
        <!-- txt banner -->
        <div id="ctl00_sect_txt_banner" class="sect_txt_banner">
        
            <div class="inner">

                
                <a href="http://phototicket.cgv.co.kr/Phototicket/Html/main.aspx" target="_blank" style="display:block" >
                    <!--배너이미지 경로-->
                    <img src="http://img.cgv.co.kr/Images/Banner/2017/0309/14890258372960.jpg" border="0"/>
                </a>
                

            </div>
        </div>
        <!-- /text banner -->
	</div>
	<!-- /Header -->
	<!-- Contaniner -->
	<div id="contaniner" class="bg-bricks main bg-bricks"><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->

        <!-- LineMap -->

        
        <!-- //LineMap -->

		<!-- Contents Area -->
		<div id="contents" class="">
            
            <!-- Contents Start -->
			
<input type="hidden" id="isOpenUserEmailYNPopup" name="isOpenUserEmailYNPopup" value="False" />
<input type="hidden" id="isTown" name="isTown" value="N" />
<input type="hidden" id="isVip" name="isVip" value="N" />
<input type="hidden" id="isVipNot" name="isVipNot" value="N" />
<input type="hidden" id="isKangdong" name="isKangdong" value="0" />
<input type="hidden" id="isGoonja" name="isGoonja" value="0" />

<div class="sect-common">
	<div class="slider" id="slider">
		<button type="button" class="btn-play">자동 넘기기 시작</button>
            
            <!-- 비 로그인 시-->
               
            <div class="item-wrap on">
                <button type="button">WHAT'S YOUR FAVORITE GIFT?</button>
                <a href="http://www.cgv.co.kr/culture-event/culture-shop/" class="item" >
                    <img src="http://img.cgv.co.kr/banner/main/mainbig_new_2.jpg" alt="WHAT'S YOUR FAVORITE GIFT?" />
                    <p class="main_banner_text2 type2"><br />혹시 지금 선물 고민 중?<br />누구나 기뻐할 선물이 여기 있어요!</p>
                </a>
            </div>
            
        
                <div class="item-wrap on">
                    <button type="button">추석탈출 CGV프로젝트</button>
			        <a href="http://section.cgv.co.kr/event/2017/0921_chuseok_gift/escape.aspx"   class="item" >
                        <img src="http://img.cgv.co.kr/Front/Main/2017/0921/15059812912910.jpg" alt="추석탈출 CGV프로젝트" />
                    </a>
		        </div>
            
                <div class="item-wrap ">
                    <button type="button">CGV보름달패키지</button>
			        <a href="http://section.cgv.co.kr/event/2017/0925_chuseok_package/default.aspx"   class="item" >
                        <img src="http://img.cgv.co.kr/Front/Main/2017/0925/15063055831190.jpg" alt="CGV보름달패키지" />
                    </a>
		        </div>
            
                <div class="item-wrap ">
                    <button type="button">이달의 CGV 9월</button>
			        <a href="http://section.cgv.co.kr/event/2017/0831_monthly_cgv/default.aspx"   class="item" >
                        <img src="http://img.cgv.co.kr/Front/Main/2017/0831/15041637365840.jpg" alt="이달의 CGV 9월" />
                    </a>
		        </div>
            
                <div class="item-wrap ">
                    <button type="button">NBCI</button>
			        <a href="http://section.cgv.co.kr/event/2017/0905_nbci_stamp/02_stamp.aspx"   class="item" >
                        <img src="http://img.cgv.co.kr/Front/Main/2017/0906/15046644285010.jpg" alt="NBCI" />
                    </a>
		        </div>
            
                <div class="item-wrap ">
                    <button type="button">직딩위크 10월</button>
			        <a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=15695&menu=0"   class="item" >
                        <img src="http://img.cgv.co.kr/Front/Main/2017/0921/15059753487010.jpg" alt="직딩위크 10월" />
                    </a>
		        </div>
            
                <div class="item-wrap ">
                    <button type="button">포토티켓 반값쿠폰</button>
			        <a href="http://section.cgv.co.kr/event/2017/0822_photo_ticket/default.aspx"   class="item" >
                        <img src="http://img.cgv.co.kr/Front/Main/2017/0822/15033780780450.jpg" alt="포토티켓 반값쿠폰" />
                    </a>
		        </div>
            
                <div class="item-wrap ">
                    <button type="button">CGV 기프트카드 스페셜할인</button>
			        <a href="http://section.cgv.co.kr/event/running/EventZone.aspx?idx=856"   class="item" >
                        <img src="http://img.cgv.co.kr/Front/Main/2017/0914/15053747359520.jpg" alt="CGV 기프트카드 스페셜할인" />
                    </a>
		        </div>
            
                <div class="item-wrap ">
                    <button type="button">천고매비</button>
			        <a href="http://www.cgv.co.kr/culture-event/event/detail-view.aspx?idx=16734&menu=0"   class="item" >
                        <img src="http://img.cgv.co.kr/Front/Main/2017/0909/15049415798220.jpg" alt="천고매비" />
                    </a>
		        </div>
            


		<button type="button" class="btn-prev">이전 페이지 이동</button>
		<button type="button" class="btn-next">다음 페이지 이동</button>
	</div>
</div>
<h3><img src="http://img.cgv.co.kr/R2014/images/title/h3_movie_selection.gif" alt="MOVIE SELECTION" /></h3>
<div class="cols-movie">
	<div id="Selection_L" class="col-slider">
        <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Selection_L" width="733" height="388" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Movie_Selection_L" id="Movie_Selection_L"></iframe>
	</div>
	<div id="Selection_R" class="col-ad">
        <iframe src="about:blank" width="240" height="388" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Movie_Selection_R" id="Movie_Selection_R"></iframe>
	</div>
</div>
<h3><img src="http://img.cgv.co.kr/R2014/images/title/h3_event.gif" alt="EVENT" /></h3>
<ul class="tab-menu">

	<li class="on">
        <a href="#" data-filter-type="08" title="현재 선택됨" >CGV스페셜</a>
    </li>
	<li>
        <a href="#" data-filter-type="02" >영화/예매</a>
    </li>
	<li>
        <a href="#" data-filter-type="07" >CGV아트하우스</a>
    </li>
	<li>
        <a href="#" data-filter-type="03" >제휴/할인</a>
    </li>
	<li class="last">
        <a href="#" data-filter-type="04" >멤버십</a>
    </li>
</ul>
<div class="sect-event">
	<ul>
    
		    <li>
                <a href="http://section.cgv.co.kr/event/2017/0921_chuseok_gift/escape.aspx" >
                    <img src="http://img.cgv.co.kr/Front/Main/2017/0921/15059814239420.jpg" alt="추석탈출" />
                </a>
            </li>
        
		    <li>
                <a href="http://section.cgv.co.kr/event/2017/0831_monthly_cgv/default.aspx" >
                    <img src="http://img.cgv.co.kr/Front/Main/2017/0915/15054407606710.jpg" alt="이달의CGV" />
                </a>
            </li>
        
		    <li>
                <a href="http://section.cgv.co.kr/event/2017/0905_nbci_stamp/02_stamp.aspx" >
                    <img src="http://img.cgv.co.kr/Front/Main/2017/0905/15045959808160.jpg" alt="NBCI" />
                </a>
            </li>
        
		    <li>
                <a href="http://section.cgv.co.kr/event/2017/0822_photo_ticket/default.aspx" >
                    <img src="http://img.cgv.co.kr/Front/Main/2017/0918/15057025567970.jpg" alt="포티반값" />
                </a>
            </li>
        
	</ul>
</div>
<div class="cols-banner">
	<div class="col-ad">
		<div class="box-com">
		    <div class="box-inner">
                <a href="http://section.cgv.co.kr/discount/Special/discount/EventDetail.aspx?Idx=15974&amp;pb=Y" ><img src="http://img.cgv.co.kr/Front/Main/2017/0515/14948153432980.jpg" alt="위비" /></a>
            </div>
		</div>
	</div>
	<div class="col-hd">
		<a href="/arthouse"><img src="http://img.cgv.co.kr/R2014/images/main/main_moviecollage.jpg" alt="CGV ARTHOUSE, A Good Movie, A Better Life" /></a>
	</div>
	<div class="col-collage">
		<div class="box-com">
		    <div id="Branding_R" class="box-inner">
                <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Branding" width="226" height="259" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Branding" id="Branding"></iframe>    
            </div>
		</div>
	</div>
</div>

<div id="ctl00_PlaceHolderContent_wrap_notice" class="sect-notice-info cf">
	<h3>공지사항</h3>
    <div class="sect-notice-list cf">
        <div class="inner">
            <ul>
            
                    <li class="cf">
	                <a href="http://section.cgv.co.kr/support/news/view.aspx?Idx=7058">
                    [기타]CGV 개인정보처리방침 개정 공지
                    </a>
                    <span>2017.08.18</span>
                    </li>
                
                    <li class="cf">
	                <a href="http://section.cgv.co.kr/support/news/view.aspx?Idx=7049">
                    [시스템 점검]8월 정기 시스템 안내
                    </a>
                    <span>2017.08.08</span>
                    </li>
                
                    <li class="cf">
	                <a href="http://section.cgv.co.kr/support/news/view.aspx?Idx=7042">
                    [제휴이벤트]티켓 재판매 공지드립니다.
                    </a>
                    <span>2017.08.02</span>
                    </li>
                
                    <li class="cf">
	                <a href="http://section.cgv.co.kr/support/news/view.aspx?Idx=7033">
                    [극장][CGV세종] 7월 27일 화재 경보기 작동으로 인한 고객 안내
                    </a>
                    <span>2017.07.24</span>
                    </li>
                
                    <li class="cf">
	                <a href="http://section.cgv.co.kr/support/news/view.aspx?Idx=7028">
                    [극장]CGV용산아이파크몰 GRAND OPEN!
                    </a>
                    <span>2017.07.18</span>
                    </li>
                
            </ul>
        </div>
    </div>
</div>


<div id="cgvwrap_b" style="display:none">
	
	<!-- dimmed_bg는 기존에 쓰는 방식에 있으면 삭제 바랍니다. : 160624-->
	<div class="dimmed_bg"></div>

	<!-- 팝업사이즈에 맞게 중앙에 띄워주세요. : 160624 -->
	<div class="pop_iexp_wrap" style="position:fixed; left:50%; top:50%; width:600px; margin:-165px 0 0 -300px; z-index:1000;">
		<div class="pi_headline">
			<img src="http://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_headline2.jpg" alt="CGV 홈페이지는 고객님께서 사용중인 MS Windows XP에서 정상적인 서비스 이용이 어려울 수 있으며, OS업데이트를 권장합니다." />
		</div>
		<div class="down_app">
			<p><img src="http://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_downtxt.jpg" alt="OS 업데이트가 어려운 경우 모바일앱을 이용하세요!!!" /></p>
			<a class="btn" href="https://itunes.apple.com/kr/app/id370441190?mt=8" target="_blank"><img src="http://img.cgv.co.kr/images/popup/1606_iexp/btn_down_ios.jpg" alt="Ios down" /></a>
			<a class="btn" href="https://play.google.com/store/apps/details?id=com.cgv.android.movieapp" target="_blank"><img src="http://img.cgv.co.kr/images/popup/1606_iexp/btn_down_android.jpg" alt="Android down" /></a>
		</div>
		<a class="btn_close">닫기</a>



 </div>

 </div>
 
 <div id="cgvwrap_a" style="display:none">
	
	<!-- dimmed_bg는 기존에 쓰는 방식에 있으면 삭제 바랍니다. : 160624-->
	<div class="dimmed_bg"></div>

	<!-- 팝업사이즈에 맞게 중앙에 띄워주세요. : 160624 -->
	<div class="pop_iexp_wrap" style="position:fixed; left:50%; top:50%; width:600px; margin:-265px 0 0 -300px; z-index:1000;">
		<div class="pi_headline">
			<img src="http://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_headline1.jpg" alt="CGV 홈페이지는 Internet Explorer 9이상에서 최적의 서비스 이용이 가능합니다. IE9 이하 브라우저에서 이용 시 정상적인 서비스 이용이 어려울 수 있으며, 브라우저 업그레이드 하시기를 권장합니다." />
		</div>
		<ul class="down_browser">
			<li><a href="http://windows.microsoft.com/ko-kr/windows/downloads" target="_blank"><img src="http://img.cgv.co.kr/images/popup/1606_iexp/btn_down_ie.jpg" alt="Internet Explorer 다운받기" /></a></li>
			<li><a href="https://www.google.com/chrome/browser/desktop/index.html" target="_blank"><img src="http://img.cgv.co.kr/images/popup/1606_iexp/btn_down_chrome.jpg" alt="Chrome 다운받기" /></a></li>
		</ul>
		<div class="down_app">
			<p><img src="http://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_downtxt.jpg" alt="OS 업데이트가 어려운 경우 모바일앱을 이용하세요!" /></p>
			<a class="btn" href="https://itunes.apple.com/kr/app/id370441190?mt=8" target="_blank"><img src="http://img.cgv.co.kr/images/popup/1606_iexp/btn_down_ios.jpg" alt="Ios down" /></a>
			<a class="btn" href="https://play.google.com/store/apps/details?id=com.cgv.android.movieapp " target="_blank"><img src="http://img.cgv.co.kr/images/popup/1606_iexp/btn_down_android.jpg" alt="Android down" /></a>
		</div>
		<a class="btn_close">닫기</a>
</div>
</div>









		</div>
		<!-- /Contents Area -->
	</div>
	<!-- /Contaniner -->
	<!-- Footer -->
	<div id="footer">
		<div id="BottomWrapper" class="sect-ad">
            <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Bottom" width="100%" height="240" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Bottom" id="Bottom"></iframe>
		</div>
		<div class="foot">
			<div class="sect-smuse">
				<h2>특별관 리스트</h2>
				<ul>
					<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=4D14" class="dx">4DX</a></li>
					<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=07" class="imax">IMAX</a></li>
					<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=SCX" class="screenx">SCREENX</a></li>
					<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=SPX" class="spherex">SphereX</a></li>
					<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=SDX" class="soundx">SOUNDX</a></li>
					<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=TEM" class="tempur">Tempur</a></li>
					<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=99" class="gold">GOLDCLASS</a></li>
					<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=103" class="cine">CINE de CHEF</a></li>
					<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=pc" class="cinema">THE PRIVATE CINEMA</a></li>
					<li><a href="http://www.cgv.co.kr/theaters/special/?regioncode=CK" class="kids">Cine kids</a></li>
				</ul>
			</div>
			<div class="sect-cinfo">
				<p class="logo">CJ CGV 로고</p>
				<h2>CJ CGV 회사소개 및 정책</h2>
				<div class="policy">
					<ul>
						<li><a href="http://corp.cgv.co.kr/company/" target="_blank">회사소개</a></li>
						<li><a href="http://corp.cgv.co.kr/company/ir/financial/financial_list.aspx" target="_blank">IR</a></li>
						<li><a href="http://corp.cgv.co.kr/company/recruit/step/default.aspx" target="_blank">채용정보</a></li>
						<li><a href="http://corp.cgv.co.kr/company/advertize/ad_Default.aspx" target="_blank">광고/프로모션문의</a></li>
                        <li><a href="http://corp.cgv.co.kr/company/advertize/af_default.aspx" target="_blank">제휴문의</a></li>
                        <li><a href="http://corp.cgv.co.kr/company/advertize/bp_insert.aspx" target="_blank">출점문의</a></li>						
						<li><a href="http://www.cgv.co.kr/rules/service.aspx">이용약관</a></li>
                        <li><a href="http://www.cgv.co.kr/rules/organized.aspx">편성기준</a></li>
						<li><a href="http://www.cgv.co.kr/rules/privacy.aspx" class="empha-red">개인정보처리방침</a></li>
						<li><a href="http://www.cgv.co.kr/rules/disclaimer.aspx">법적고지</a></li>
						<li><a href="http://www.cgv.co.kr/rules/emreject.aspx">이메일주소무단수집거부</a></li>
						<li><a href="http://www.cgv.co.kr/company/coexist.aspx">상생경영</a></li>
						<li><a href="http://www.cgv.co.kr/guide/sitemap.aspx">사이트맵</a></li>
					</ul>
				</div>
				<div class="share">
					<a href="https://www.facebook.com/CJCGV" target="_blank" class="facebook" title="새창">페이스북</a><a href="https://twitter.com/cj_cgv" target="_blank" class="twitter" title="새창">트위터</a><a href="https://www.instagram.com/cgv_korea/" target="_blank" class="instagram" title="새창">인스타그램</a>
				</div>
				<div class="address">
					<address>(04377)서울특별시 용산구 한강대로 23길 55, 아이파크몰 6층(한강로동)</address>
					<p class="vl">
						<span>대표이사 : 서정</span><span>사업자등록번호 : 104-81-45690</span><span>통신판매업신고번호 : 2017-서울용산-0662</span>
					</p>
					<p class="vl">
						<span>개인정보보호 책임자 : 마케팅 담당 정종민</span><span>대표이메일 : cjcgvmaster@cj.net</span><span>CGV고객센터 : 1544-1122</span>
					</p>
					<p class="copyright">&copy; 2017 CJ CGV. All Rights Reserved</p>
				</div>
				<div class="familysite">
					<label for="familysite" class="hidden">CJ그룹 계열사 바로가기</label>
					<select id="familysite">
						<option value="">계열사 바로가기</option>
                        <optgroup label="CJ그룹">
<option value="http://www.cj.net/">CJ주식회사</option>
</optgroup><optgroup label="엔터테인먼트 & 미디어">
<option value="http://www.cjenm.com/">CJ E&amp;M </option>
<option value="http://www.cgv.co.kr/">CJ CGV</option>
<option value="http://www.cjhellovision.com/">CJ헬로비전</option>
<option value="http://www.cjpowercast.com/">CJ파워캐스트</option>
</optgroup><optgroup label="식품 & 식품서비스">
<option value="http://www.cj.co.kr/">CJ제일제당</option>
<option value="http://www.cjfreshway.com/">CJ프레시웨이</option>
<option value="http://www.cjfoodville.co.kr/">CJ푸드빌</option>
<option value="http://www.md1.co.kr/">CJ엠디원</option>
</optgroup><optgroup label="생명공학">
<option value="http://www.cj.co.kr/cj-kr/businesses/4/main">CJ제일제당</option>
<option value="http://www.cjp.co.kr/">CJ헬스케어</option>
</optgroup><optgroup label="신유통">
<option value="http://www.cjoshopping.com/index.asp">CJ오쇼핑</option>
<option value="http://www.cjkoreaexpress.co.kr/">CJ대한통운</option>
<option value="http://www.cjtelenix.com/">CJ텔레닉스</option>
<option value="http://www.cjolivenetworks.co.kr/">CJ올리브네트웍스</option>
</optgroup><optgroup label="인프라">
<option value="http://www.cjenc.co.kr/">CJ건설</option>
</optgroup>
					</select>
					<button type="button" title="새창" onclick="goFamilySite()">GO</button>
				</div>
			</div>
		</div>
        <!-- Float Ad -->

        <div class="adFloat2" style="display:none">

            <iframe src='http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Popicon' width='154' height='182' frameborder='0' scrolling='no' topmargin='0' leftmargin='0' marginwidth='0' marginheight='0' allowTransparency="true" id="ad_float1"></iframe>
        </div>
	</div>
	<!-- /Footer -->

    <!-- Aside Banner :  -->
	<div id="ctl00_sect_person_right" class="sect-aside-banner" style="padding:0; margin:0; position:fixed; z-index:1;">
		<div class="aside-content-top">
			<div class="aside-content-btm">
				<a href="/theaters/"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_theater.gif" alt="CGV THEATER" /></a>
				<a href="/arthouse/"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_arthouse.gif" alt="CGV arthouse" /></a>
				<a href="/theaters/special/"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_special.gif" alt="CGV SPECIAL" /></a>
				<a href="http://phototicket.cgv.co.kr/" target="_blank"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_phototicket.gif" alt="CGV 포토티켓" /></a>
				<a href="/user/mycgv/reserve/" class="required-login" data-url="/user/mycgv/reserve/"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_ticket.gif" alt="CGV TICKET INFO" /></a>
				<a href="http://section.cgv.co.kr/discount/Special/discount/Default.aspx"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_discount.gif" alt="CGV DISCOUNT INFO" /></a>
			</div>
		</div>
		<div class="btn-top">
			<a href="#" onclick="scrollTo(0,0);return false;"><span>최상단으로 이동</span></a>
		</div>
	</div>
	<!-- //Aside Banner -->
    
</div>


</body>
</html>
