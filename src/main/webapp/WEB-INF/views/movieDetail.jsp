   <%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>title</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
   
   





<!-- chartJS -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.0/Chart.bundle.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.0/Chart.bundle.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.0/Chart.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.0/Chart.min.js"></script> -->

<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="http://img.cgv.co.kr/R2014/js/excanvas.min.js"></script><![endif]-->
<link href="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.jqplot/jquery.jqplot.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.jqplot/jquery.jqplot.min.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.jqplot/jqplot.barRenderer.min.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.jqplot/jqplot.pieRenderer.min.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.jqplot/jqplot.donutRenderer.min.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.jqplot/jqplot.categoryAxisRenderer.min.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.jqplot/jqplot.pointLabels.min.js"></script>

<script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/Chart.custom.js"></script><!-- 평점 개편 스파이더 차트 js 로딩 추가. mwpark_RR2015 -->



   
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
         <dl id="genre"></dl>
         <dl id="release_date"></dl>            
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
               
                <li data-target="heading-new"><a>평점/리뷰</a></li>
                <li class="last" data-target=".heading-new"><a href="/movies/detail-view/show-times.aspx?midx=79949#menu">상영시간표</a></li>
            </ul>
            
           
            
            
            
            
            
            <div class="sect-story-movie">
               <textarea rows="15" cols="90" id="introduce_text" readonly="readonly" style="background-color:transparent; border:0; outline: 0;font-size:15px" ></textarea>
                
            </div>
            
            
            <div id="ctl00_PlaceHolderContent_Section_Chart" class="sect-graph">
                <ul class="graph" id="graph">
                    <li style="height:260px">
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
            
            <div id="ctl00_PlaceHolderContent_Section_Still_Cut" class="sect-stillcut" style="width:100%;">
                <div class="heading">
                    <h4>스틸컷</h4><span class="count"><strong id="stillcut_current">2</strong>/51건</span><a class="link-more" href="still-cut.aspx?midx=80056">더보기</a>
                </div>
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="false">
  <!-- Indicators -->

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img style="width:100%;" data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000080/80056/80056149031_727.jpg" src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000080/80056/80056149031_727.jpg">
    </div>
    <div class="item">
      <img style="width:100%;" data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000080/80056/80056149030_727.jpg" src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000080/80056/80056149030_727.jpg">
    </div>
    <div class="item">
      <img style="width:100%;" data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000080/80056/80056149029_727.jpg" src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000080/80056/80056149029_727.jpg">
    </div>

  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev" style="border: 0; outline: 0;">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <!-- <span class="sr-only">Previous</span> -->
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next" style="border: 0; outline: 0;">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <!-- <span class="sr-only">Next</span> -->
  </a>
</div>
            </div>


              
    
            <div class="sect-grade">
            
                <div class="heading-new">
                    <a class="goto-link" name="commentReg"><h4>실관람객 평점</h4></a>
                    <p class="txt-write">관람일 포함 7일 이내 관람평을 남기시면 <strong>CJ ONE 20P</strong>가 적립됩니다. <a id="assessment" class="link-gradewrite" href="javascript:void(0);"><span>후기작성</span></a></p>
                </div>
                <div id="comment_content">
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

                <div class="wrap-persongrade" id="commentDiv">
                    
               
                </div>
            </div><!-- .sect-grade -->

            <!-- .sect-review -->
            <!-- add_css -->

            <div class="paging" id="paging">
            <ul id="paging_point"></ul>
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

   <input id="currentPage" type="text"/>

</body>




<script>


   jehong2.main.init('${path.ctx}');
</script>
</html>