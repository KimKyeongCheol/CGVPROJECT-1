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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
<script type="text/javascript"
	src="http://img.cgv.co.kr/R2014/js/app.config.js"></script>
<script type="text/javascript" src="/common/js/extraTheaters.js"></script>
<script type="text/javascript"
	src="http://img.cgv.co.kr/R2014/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.tmpl.min.js"></script>
<script type="text/javascript"
	src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.validate.js"></script>
<script type="text/javascript"
	src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.paging.min.js"></script>
<script type="text/javascript"
	src="http://img.cgv.co.kr/R2014/js/jquery.ui/jquery-ui-1.10.4.custom.min.js"></script>
<script type="text/javascript"
	src="http://img.cgv.co.kr/R2014/js/jquery.utils.js"></script>
<script type="text/javascript"
	src="http://img.cgv.co.kr/R2014/js/app.utils.js"></script>
<script type="text/javascript"
	src="http://img.cgv.co.kr/R2014/js/jquery.utils.pageing.js"></script>
<script type="text/javascript"
	src="http://img.cgv.co.kr/R2014/js/app.init.js"></script>
<!--[if lte IE 9]><script type="text/javascript"src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.placeholder.js"></script><![endif]-->
<script type="text/javascript"
	src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.dotdotdot.min.js"></script>
<script type="text/javascript"
	src="http://img.cgv.co.kr/R2014/js/silverlight_link.js"></script>
<script src="http://img.cgv.co.kr/R2014/js/slick/slick.js"
	type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/phototicket/phototicket.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/slick.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="http://img.cgv.co.kr/R2014/css/slick-theme-custom.css" />
	
<script src="${path.js}/jehong2.js"></script>
	

</head>
<body>


<div id="contaniner" class="">
        <div id="ctl00_navigation_line" class="linemap-wrap">
            <div class="sect-linemap">
                <div class="sect-bcrumb">
                    <ul>
                        <li><a href="/"><img alt="home" src="http://img.cgv.co.kr/R2014/images/common/btn/btn_home.png"></a></li>
                        <li><a href="/movies/">영화</a></li>
                        <li class="last">영화상세</li>
                    </ul>
                </div>
                
            </div>
        </div>

		<!-- Contents Area -->
		<div id="contents" class="">
<!-- 실컨텐츠 시작 -->
<div class="wrap-movie-detail" id="select_main">

    
<div class="tit-heading-wrap">
    <h3>영화상세</h3>
</div>
<div class="sect-base-movie">
    <h3><strong>킹스맨: 골든 서클</strong>기본정보</h3>
    <div class="box-image">
        <a href="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000079/79949/79949_1000.jpg" title="포스터 크게 보기 새창" target="_blank">
            <span class="thumb-image" id="poster"> 
                
            </span> 
        </a> 
    </div>
    <div class="box-contents">
        <div class="title"> 
            <strong id="movie_title"></strong>
            <em class="round lightblue"><span>현재상영중</span></em>
        </div>
        <div class="score"> 
            <strong class="percent">예매율&nbsp;<span id="reserve_rate"></span></strong>
          
            <div class="egg-gage small">
            <span class="egg great"></span>
            
            
				<span class="percent" id="score_percent"></span>
                                     
			</div>
            <!--
            <div class="point">
                <em>93.0</em>
            </div>
             -->
            <strong class="count">
                (<span class="view">실관람객 :&nbsp;<em id="people_count"></em></span>) </strong> 
            </div>
            <!-- 떨어지는 얘 이전 요소에 class=on을 넣는다 -->
        <div class="spec">
			<dl id="staff"></dl>            
        </div>
       
        <span class="like">
            <button class="btn-like" value="79949">영화 찜하기</button>
            <span class="count">
                <strong><i id="like_count"></i><span>명이 선택</span></strong> 
                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
            </span>

        
            <a class="link-reservation">예매</a> 
        
        </span>
    </div>
</div><!-- .sect-base -->




    <div class="cols-content" id="menu">
        <div class="col-detail">
            <!-- 메뉴가 선택되면 a 에 title="선택" 이라고 넣는다 -->
            <ul class="tab-menu">
                <li class="on"><a title="현재 선택됨" href="/movies/detail-view/?midx=79949#menu">주요정보 </a></li>
             <!--   <li><a href="/movies/detail-view/cast.aspx?midx=79949#menu">감독/출연</a></li>-->
                <li><a href="/movies/detail-view/trailer.aspx?midx=79949#menu">트레일러</a></li>
                <li><a href="/movies/detail-view/still-cut.aspx?midx=79949#menu">스틸컷</a></li>
               
                <!--<li><a href="/movies/detail-view/point-review.aspx?midx=79949#menu">평점/리뷰</a></li>-->
                <li><a href="/movies/detail-view/?midx=79949#commentReg">평점/리뷰</a></li>
               
                <li class="last"><a href="/movies/detail-view/show-times.aspx?midx=79949#menu">상영시간표</a></li>
            </ul>
            <div class="sect-story-movie">
               <textarea rows="30" cols="90" id="introduce_text"></textarea>
                
            </div>
            <div id="ctl00_PlaceHolderContent_Section_Chart" class="sect-graph">
                <ul class="graph">
                    <li>
                        <strong>매력포인트</strong>
						<div class="radar-graph" id="chart1">
							<!-- <canvas id="charmScore1" width="100" height="100"></canvas> -->
							<!-- ie8 이하 미지원시
							<div class="sorry">
								<p>&lsquo;이 영화의 매력포인트&rsquo; 차트는<br />익스플로러9 이상에서 지원 가능합니다.</p>
							</div>
                             -->
                            <canvas id="charmScore1" width="221" height="221" style="width: 221px; height: 221px;"></canvas>
						</div>
                    </li>
                    <li>
                        <strong>성별 예매 분포</strong>
                        <div id="jqplot_sex" class="chart jqplot-target" style="position: relative;"><canvas width="266" height="192" class="jqplot-base-canvas" style="position: absolute; left: 0px; top: 0px;"></canvas><div class="jqplot-title" style="height: 0px; width: 0px;"></div><canvas width="266" height="192" class="jqplot-grid-canvas" style="position: absolute; left: 0px; top: 0px;"></canvas><canvas width="246" height="159" class="jqplot-series-shadowCanvas" style="position: absolute; left: 10px; top: 10px;"></canvas><canvas width="246" height="159" class="jqplot-series-canvas" style="position: absolute; left: 10px; top: 10px;"></canvas><canvas width="246" height="159" class="jqplot-donutRenderer-highlight-canvas" style="position: absolute; left: 10px; top: 10px;"></canvas><span class="jqplot-donut-series jqplot-data-label" style="position: absolute; left: 44px; top: 141px;">남 45.5%</span><span class="jqplot-donut-series jqplot-data-label" style="position: absolute; left: 176px; top: 24px;">여 54.5%</span><canvas width="246" height="159" class="jqplot-event-canvas" style="position: absolute; left: 10px; top: 10px;"></canvas></div>
                    </li>
                    <li>
                        <strong>연령별 예매 분포</strong>
                        <div id="jqplot_age" class="chart jqplot-target" style="position: relative;"><canvas width="266" height="192" class="jqplot-base-canvas" style="position: absolute; left: 0px; top: 0px;"></canvas><div class="jqplot-title" style="height: 0px; width: 0px;"></div><div class="jqplot-axis jqplot-xaxis" style="position: absolute; width: 266px; height: 14px; left: 0px; bottom: 0px;"><div class="jqplot-xaxis-tick" style="position: absolute; font-size: 12px; left: 28.25px;">10대</div><div class="jqplot-xaxis-tick" style="position: absolute; font-size: 12px; left: 89.75px;">20대</div><div class="jqplot-xaxis-tick" style="position: absolute; font-size: 12px; left: 151.25px;">30대</div><div class="jqplot-xaxis-tick" style="position: absolute; font-size: 12px; left: 212.75px;">40대</div></div><div class="jqplot-axis jqplot-yaxis" style="position: absolute; height: 192px; width: 0px; left: 0px; top: 0px;"></div><canvas width="266" height="192" class="jqplot-grid-canvas" style="position: absolute; left: 0px; top: 0px;"></canvas><canvas width="246" height="158" class="jqplot-series-shadowCanvas" style="position: absolute; left: 10px; display: block; top: 10px;"></canvas><canvas width="246" height="158" class="jqplot-series-canvas" style="position: absolute; left: 10px; display: block; top: 10px;"></canvas><div class="jqplot-point-label jqplot-series-0 jqplot-point-3" style="position: absolute; left: 215.75px; top: 113.66px; display: block;">13.8</div><div class="jqplot-point-label jqplot-series-0 jqplot-point-2" style="position: absolute; left: 154.25px; top: 62.0467px; display: block;">33.4</div><div class="jqplot-point-label jqplot-series-0 jqplot-point-1" style="position: absolute; left: 92.75px; top: 18.07px; display: block;">50.1</div><div class="jqplot-point-label jqplot-series-0 jqplot-point-0" style="position: absolute; left: 33.75px; top: 142.627px; display: block;">2.8</div><canvas width="246" height="158" class="jqplot-barRenderer-highlight-canvas" style="position: absolute; left: 10px; top: 10px;"></canvas><canvas width="246" height="158" class="jqplot-event-canvas" style="position: absolute; left: 10px; top: 10px;"></canvas></div>
                    </li>
                </ul>
            </div>

            <div id="ctl00_PlaceHolderContent_Section_Trailer" class="sect-trailer">
                <div class="heading">
                    <h4>트레일러</h4><span id="ctl00_PlaceHolderContent_TrailerTotalCount" class="count">11건</span><a class="link-more" href="trailer.aspx?midx=79949">더보기</a>
                </div>
                <ul>
                <!-- 사진 동영상 조회 -->
                
                    <li>
                        <div class="box-image">
                            <!-- TODO : 동영상 팝업 창 작업 후 링크 걸어야 함 //-->
                            <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="148217">
                                <span class="thumb-image">
                                    <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/79949/79949148217_148.jpg" alt="[킹스맨: 골든 서클]ScreenX 예고편" onerror="errorImage(this, {'type':'landscape'})">
                                    <span class="ico-play">영상보기</span>
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="148217">
                                <strong class="title">
                                    
                                    <span class="ico-trailer hd">HD</span>
                                    ScreenX 예고편
                                </strong>
                            </a>
                            <span class="txt-info">2017.09.21</span>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <!-- TODO : 동영상 팝업 창 작업 후 링크 걸어야 함 //-->
                            <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="148145">
                                <span class="thumb-image">
                                    <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/79949/79949148145_148.jpg" alt="[킹스맨: 골든 서클]킹스맨 최후의 날 영상" onerror="errorImage(this, {'type':'landscape'})">
                                    <span class="ico-play">영상보기</span>
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="148145">
                                <strong class="title"><span class="ico-trailer hd">HD</span>킹스맨 최후의 날 영상</strong>
                            </a>
                            <span class="txt-info">2017.09.20</span>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <!-- TODO : 동영상 팝업 창 작업 후 링크 걸어야 함 //-->
                            <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="148144">
                                <span class="thumb-image">
                                    <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/79949/79949148144_148.jpg" alt="[킹스맨: 골든 서클]골든 서클 영상" onerror="errorImage(this, {'type':'landscape'})">
                                    <span class="ico-play">영상보기</span>
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="148144">
                                <strong class="title"><span class="ico-trailer hd">HD</span>골든 서클 영상</strong>
                            </a>
                            <span class="txt-info">2017.09.20</span>
                        </div>
                    </li>
                    
                </ul>
            </div><!-- .sect-trailer -->
            <div id="ctl00_PlaceHolderContent_Section_Still_Cut" class="sect-stillcut">
                <div class="heading">
                    <h4>스틸컷</h4><span class="count"><strong id="stillcut_current">1</strong>/57건</span><a class="link-more" href="still-cut.aspx?midx=79949">더보기</a>
                </div>
                <div class="slider-wrap">
                    <div class="slider" id="still_motion">
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148391_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)" src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148391_727.jpg" style="margin-top: 22.5px;">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148390_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)" src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148390_727.jpg" style="margin-top: 22.5px;">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148389_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148388_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148387_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148386_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148385_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148384_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148383_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148382_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148381_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148146_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148143_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148142_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148141_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148140_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147971_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147970_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147969_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147968_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147967_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147686_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147685_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147684_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147637_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147636_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147635_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147634_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147633_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147632_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147631_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147630_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147629_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147540_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147539_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147538_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147537_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147529_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147528_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147527_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147519_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147518_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147517_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147516_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147515_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147514_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147513_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147512_727.jpg" alt="킹스맨: 골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147386_727.jpg" alt="킹스맨-골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147385_727.jpg" alt="킹스맨-골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147384_727.jpg" alt="킹스맨-골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147383_727.jpg" alt="킹스맨-골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147382_727.jpg" alt="킹스맨-골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147381_727.jpg" alt="킹스맨-골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147380_727.jpg" alt="킹스맨-골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147378_727.jpg" alt="킹스맨-골든 서클" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147377_727.jpg" alt="킹스맨-골든 서클" onerror="errorImage(this)" src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147377_727.jpg" style="height: 100%;">
                            </div>
                        </div>
                        
                        <button type="button" class="btn-prev">이전 페이지 이동</button>
                        <button type="button" class="btn-next">다음 페이지 이동</button>
                    </div>
                </div>
            </div><!-- .sect-stillcut -->


              
    
            <div class="sect-grade">
            
                <div class="heading-new">
                    <a class="goto-link" name="commentReg"><h4>실관람객 평점</h4></a>
                    <p class="txt-write">관람일 포함 7일 이내 관람평을 남기시면 <strong>CJ ONE 20P</strong>가 적립됩니다. <a class="link-gradewrite" href="javascript:void(0);"><span>평점작성</span></a><a class="link-reviewwrite" href="/movies/point/my-list.aspx"><span>내 평점</span></a></p>
                </div>

                <div class="egg-grade">
					<a class="info1" id="goldenEggAlert" href="javascript:void(0);">Golden EGG지수<br><img src="http://img.cgv.co.kr/R2014/images/common/ico/ico-question-mark.png" alt="?"></a>
					<!-- <a class="info2" href="#">이 영화의 감상포인트<br /><img src="images/common/ico/ico-question-mark.png" alt="?" /></a> -->

					<div class="massagebox">
						<p>
                            <span class="msg-em"><strong id="cgvEggCountTxt">52,634</strong>명의</span>
							<em>CGV실관람객이</em> 평가해주셨습니다.
						</p>
					</div>
                    <!-- great , good-->
					<div class="egg-gage big" id="eggIconDiv">
						<span class="egg great"></span>
                        
						<span class="percent"><strong>93</strong>%</span>
					</div>

					<div class="radar-graph" id="chart2">
						<canvas id="charmScore2" width="200" height="200" style="width: 200px; height: 200px;"></canvas>
						<!-- ie8 이하 미지원시
						<div class="sorry">
							<p>&lsquo;이 영화의 매력포인트&rsquo; 차트는<br />익스플로러9 이상에서 지원 가능합니다.</p>
						</div>
						 -->
					</div>
				</div>

                <ul class="sort" id="sortTab">
                      <li class="sortTab on" data-order-type="0" id="test"><a href="javascript:void(0);" title="현재선택">최신순<span class="arrow-down"></span></a></li>
                    <li class="sortTab" data-order-type="3"><a href="javascript:void(0);">추천순<span class="arrow-down"></span></a></li>
                </ul>


                
                <div class="wrap-persongrade">
                    <ul id="movie_point_list_container" class="point_col2">
                    	<li class="" id="liCommentFirst19394033" data-spoilercnt="0" data-reportcnt="0">
                    	<a href="javascript:return false;" class="screen_spoiler">&nbsp;</a>     
                    	<div class="box-image">         
                    	<span class="thumb-image">                    
                    	<img src="http://img.cgv.co.kr/R2014/images/common/default_profile.gif" alt="사용자 프로필" onerror="errorImage(this, {'type':'profile'})"><span class="profile-mask">                 
                    	</span>                 
                    	<div class="theater-sticker">                                                           
                    	</div>                                                              
                    	</span>     
                    	</div>      
                    	<div class="box-contents">         
                    	<ul class="writerinfo">              
	                    	<li class="writer-name"><a href="#select_main" class="commentMore"><span class=" egg-icon "></span>응꾸기</a></li>         
	                    	<li class="writer-etc">                      
	                    	<span class="day">2017.10.03</span>     
	                    	<span class="like point_like" id="gkrrhks199219394033" data-ismygood="false" data-commentidx="19394033"><a href="javascript:return false;" class="btn_point_like"><span>
	                    	<img src="http://img.cgv.co.kr/R2014/images/point/ico_point_default.png" alt="like" class="like_red"></span>
	                    	<span id="idLikeValue">0</span></a></span></li>                                         
	                    	<li class="point_notify"><a href="" class="btn_notify">스포일러, 욕설/비방 신고</a>
	                    	<div class="notify_wrap">
		                    	<ul>
		                    		<li><a href="javascript:return false;" class="ico_spoiler" data-commentidx="19394033" data-ismyspoiler="false" data-spoilercnt="0"><span>스포일러 신고</span></a></li>                         
		                    		<li><a href="javascript:return false;" class="ico_swearword" data-commentidx="19394033" data-ismyreport="false" data-reportcnt="0"><span>욕설/비방 신고</span></a></li>
		                    	</ul>
	                    	</div>
	                    	</li>
                    	</ul>     
                    	
                    	</div>
                    	     
                    	<div class="box-comment">         
                    		<p>1편에 비해 조금 아쉬운...</p>     
                    	</div>
                    	                              
                    	</li>
                    	
                    	
                    	<li class="" id="liCommentFirst19394033" data-spoilercnt="0" data-reportcnt="0">
                    	<a href="javascript:return false;" class="screen_spoiler">&nbsp;</a>     
                    	<div class="box-image">         
                    	<span class="thumb-image">                    
                    	<img src="http://img.cgv.co.kr/R2014/images/common/default_profile.gif" alt="사용자 프로필" onerror="errorImage(this, {'type':'profile'})"><span class="profile-mask">                 
                    	</span>                 
                    	<div class="theater-sticker">                                                           
                    	</div>                                                              
                    	</span>     
                    	</div>      
                    	<div class="box-contents">         
                    	<ul class="writerinfo">              
	                    	<li class="writer-name"><a href="#select_main" class="commentMore"><span class=" egg-icon "></span>응꾸기</a></li>         
	                    	<li class="writer-etc">                      
	                    	<span class="day">2017.10.03</span>     
	                    	<span class="like point_like" id="gkrrhks199219394033" data-ismygood="false" data-commentidx="19394033"><a href="javascript:return false;" class="btn_point_like"><span>
	                    	<img src="http://img.cgv.co.kr/R2014/images/point/ico_point_default.png" alt="like" class="like_red"></span>
	                    	<span id="idLikeValue">0</span></a></span></li>                                         
	                    	<li class="point_notify"><a href="" class="btn_notify">스포일러, 욕설/비방 신고</a>
	                    	<div class="notify_wrap">
		                    	<ul>
		                    		<li><a href="javascript:return false;" class="ico_spoiler" data-commentidx="19394033" data-ismyspoiler="false" data-spoilercnt="0"><span>스포일러 신고</span></a></li>                         
		                    		<li><a href="javascript:return false;" class="ico_swearword" data-commentidx="19394033" data-ismyreport="false" data-reportcnt="0"><span>욕설/비방 신고</span></a></li>
		                    	</ul>
	                    	</div>
	                    	</li>
                    	</ul>     
                    	
                    	</div>
                    	     
                    	<div class="box-comment">         
                    		<p>1편에 비해 조금 아쉬운...</p>     
                    	</div>
                    	                              
                    	</li>
                    	
					</ul>
					
                </div>
            </div><!-- .sect-grade -->

            <!-- .sect-review -->
            <!-- add_css -->

            <div class="paging">
				<ul id="paging_point"><li class=" on"><a href="#1" title="1페이지 선택">1</a></li><li class=""><a href="#2" title="">2</a></li><li class=""><a href="#3" title="">3</a></li><li class=""><a href="#4" title="">4</a></li><li class=""><a href="#5" title="">5</a></li><li class=""><a href="#6" title="">6</a></li><li class=""><a href="#7" title="">7</a></li><li class=""><a href="#8" title="">8</a></li><li class=""><a href="#9" title="">9</a></li><li class=""><a href="#10" title="">10</a></li><li class="paging-side"><button class="btn-paging next" type="button">다음 10개</button></li><li class="paging-side"><button class="btn-paging end" type="button">끝</button></li></ul>
			</div>

            
            
            <div class="sect-movielist" style="display :none">
                <h3><img src="http://img.cgv.co.kr/R2014/images/title/h3_relation_movie.gif" alt="RELATION MOVIE"></h3>
                <ul>
                
                    <li>
                        <div class="box-image">
                            <a href="/movies/detail-view/?midx=80094">
                                <span class="thumb-image">
                                    <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80094/80094_126.jpg" alt="키드냅 포스터">
                                    <span class="ico-grade grade-15">15세 이상</span>
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <a href="/movies/detail-view/?midx=80094"><strong>키드냅</strong></a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <a href="/movies/detail-view/?midx=80091">
                                <span class="thumb-image">
                                    <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80091/80091_126.jpg" alt="배저로와 친구들: 신비한 모험 포스터">
                                    <span class="ico-grade grade-none">미정</span>
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <a href="/movies/detail-view/?midx=80091"><strong>배저로와 친구들: 신비한 모험</strong></a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <a href="/movies/detail-view/?midx=80070">
                                <span class="thumb-image">
                                    <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80070/80070_126.jpg" alt="록키 포스터">
                                    <span class="ico-grade grade-12">12세 이상</span>
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <a href="/movies/detail-view/?midx=80070"><strong>록키</strong></a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <a href="/movies/detail-view/?midx=80069">
                                <span class="thumb-image">
                                    <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80069/80069_126.jpg" alt="역모-반란의 시대 포스터">
                                    <span class="ico-grade grade-15">15세 이상</span>
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <a href="/movies/detail-view/?midx=80069"><strong>역모-반란의 시대</strong></a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <a href="/movies/detail-view/?midx=80065">
                                <span class="thumb-image">
                                    <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80065/80065_126.jpg" alt="어쌔신: 더 비기닝 포스터">
                                    <span class="ico-grade grade-none">미정</span>
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <a href="/movies/detail-view/?midx=80065"><strong>어쌔신: 더 비기닝</strong></a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <a href="/movies/detail-view/?midx=80062">
                                <span class="thumb-image">
                                    <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80062/80062_126.jpg" alt="윈드 리버-감독판 포스터">
                                    <span class="ico-grade grade-19">청소년 관람불가</span>
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <a href="/movies/detail-view/?midx=80062"><strong>윈드 리버-감독판</strong></a>
                        </div>
                    </li>
                    
                </ul>
            </div><!-- .sect-movielist -->
        </div><!-- .col-detail -->
        <iframe class="layer-wrap review_pop" name="ifrm_movie_time_table1" id="ifrm_movie_time_table1" style="display:none" title="상세리스트" height="993px" width="849px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no" allowtransparency="true"></iframe><!--회원 평점 모아보기 iframe. mwpark_RR2015-->
        <form method="post" id="frmPointPopup" action="/movies/point/default-irm.aspx" novalidate="novalidate">
            <input type="hidden" name="userid" id="frmPointUserId">
            <input type="hidden" name="nick" id="frmPointNick">
        </form>

        



       

</div>

    </div>
    <span style="display:none" class="modifyCommentDummy"></span>
</div>
<!-- 실컨텐츠 끝 -->

            <!--/ Contents End -->

		</div>

	
	

</body>
<script>
	jehong2.main.init('${path.ctx}');
</script>
</html>
