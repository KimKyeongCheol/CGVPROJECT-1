<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>title</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<script src="${path.js}/jahun.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Expires" content="-1" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="No-Cache" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="viewport" content="width=1024" />
<meta name="keywords"
	content="CGV, 시지브이, 영화관, 극장, 영화, 티켓, 박스오피스, 극장, Movie, Theater, Cinema, Cgv, cgv, 예매, 상영작" />
<meta name="description"
	content="CGV는 선진화된 관람문화와 최고의 서비스로 고객에게 잊을 수 없는 감동을 선사합니다. CGV홈페이지를 통해 영화 예매뿐만 아니라 그 이상의 서비스와 감동을 전달하고, 다양한 즐거움과 특별한 경험을 제공하고자 합니다." />
<meta property="og:site_name" content="영화 그 이상의 감동. CGV" />
<meta id="ctl00_og_title" property="og:title" content="영화 그 이상의 감동. CGV"></meta>
<meta id="ctl00_og_image" property="og:image"
	content="http://img.cgv.co.kr/common/cgv_200x200.jpg"></meta>
<link rel="alternate" href="http://m.cgv.co.kr" />
<link rel="shortcut icon"
	href="http://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon" />
<title id="ctl00_headerTitle">영화그이상의감동.CGV</title>
<link rel="shortcut icon" type="image/x-icon"
	href="http://img.cgv.co.kr/R2014/images/favicon.ico" />
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/reset.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/layout.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/module.css" />
<!--<link rel="stylesheet"media="all"type="text/css"href="http://img.cgv.co.kr/R2014/css/module_170718.css"/>-->
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/common.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/content.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/eggupdate.css" />
<link rel="stylesheet" media="print" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/print.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/content_prepaid_card_170421.css" />
<link rel="stylesheet" type="text/css"
	href="http://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/phototicket/phototicket.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/slick.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/slick-theme-custom.css" />

<script src="${path.js}/jehong.js"></script>






</head>


	<!-- Contaniner -->
	<div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->

        <!-- LineMap -->
        <div id="ctl00_navigation_line" class="linemap-wrap">
            <div class="sect-linemap">
                <div class="sect-bcrumb">
                    <ul>
                        <li><a href="${path.ctx}/home"><img alt="home" src="http://img.cgv.co.kr/R2014/images/common/btn/btn_home.png"></a></li>
                        
                            <li>
                                <a href="/movies/">영화</a>
                            </li>
                        
                            <li>
                                <a href="/movies/">무비차트</a>
                            </li>
                        
                            <li class="last">
                                무비차트
                            </li>
                        
                        
                    </ul>
                </div>
                
            </div>
        </div>
        <!-- //LineMap -->

		<!-- Contents Area -->
		<div id="contents" class="">
            
            <!-- Contents Start -->
			


<!-- 실컨텐츠 시작 -->
    <div class="wrap-movie-chart">
        <!-- Heading Map Multi -->
        <div class="tit-heading-wrap">
            <h3>무비차트</h3>
           
            <!-- <div class="submenu">
                <ul>
                    <li class="on"><a href="/movies/" title="선택">무비차트</a></li>
                    <li><a href="/movies/pre-movies.aspx">상영예정작</a></li>
                    <li><a href="/movies/?lt=3">CGV아트하우스</a></li>
                </ul>
            </div> -->
        </div>
        <!-- //Heading Map Multi -->
        <!-- Sorting -->
        <div class="sect-sorting">
             <div class="nowshow">
                        <input type="checkbox" id="chk_nowshow" title="현재 선택됨" checked="">
            
                <label for="chk_nowshow">현재 상영작만 보기</label>                
            </div>
            <label for="order_type" class="hidden">정렬</label>
            <select id="order_type" name="order-type">
				<option title="현재 선택됨" selected="" value="reserve_rate">예매율순</option>
                <option value="score">평점순</option>
                <option value="people_count">관람객순</option>
            </select>
            <button type="button" class="round gray"><span>GO</span></button>
        </div>
        <!-- //Sorting -->
        
        <div class="sect-movie-chart" id="movie_chart">
            <h4 class="hidden">무비차트 - 예매율순</h4>
            
            
        </div>
            <button class="btn-more-fontbold" style="float: right; margin-top: 10px">더보기 <i class="link-more">더보기</i></button>
    </div><!-- .sect-moviechart -->


<!-- 페이지 하단 영화관 관련 광고 -->
<div class="sect-ad-benner"> 
        <a href="http://section.cgv.co.kr/event/running/SimpleEventZone.aspx?sidx=11"><img src="http://img.cgv.co.kr/R2014/images/main/phototicket_978_223.jpg" alt="영화를 영원히 추억하는 방법. CGV 포토티켓"></a>
</div><!-- .sect-ad-benner  -->
<!-- 페이지 하단 인기 트레일러 영상 및 실시간 인기 검색어  -->
<div class="cols-rank">

   
   
   
    <div class="col-rank-search">
        <div class="searchrank">
            <h3>인기 검색어</h3>
            <ol id="searchList">

				<!-- call by Ajax to <li> -->
    
            </ol>
            <!-- <p class="date">2017.09.26기준</p> -->
        </div>
    </div>
</div>
		</div>
		<!-- /Contents Area -->
	</div>
	<!-- /Contaniner -->
	
	</body>
<script>
	jehong.main.init('${path.ctx}');
</script>
	</html>
	