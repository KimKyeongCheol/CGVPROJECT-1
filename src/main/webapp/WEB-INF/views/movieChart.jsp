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
                        <li><a href="/"><img alt="home" src="http://img.cgv.co.kr/R2014/images/common/btn/btn_home.png"></a></li>
                        
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
           
            <div class="submenu">
                <ul>
                    <li class="on"><a href="/movies/" title="선택">무비차트</a></li>
                    <li><a href="/movies/pre-movies.aspx">상영예정작</a></li>
                    <li><a href="/movies/?lt=3">CGV아트하우스</a></li>
                </ul>
            </div>
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
				<option title="현재 선택됨" selected="" value="1">예매율순</option>
                <option value="2">평점순</option>
                <option value="3">관람객순</option>
            </select>
            <button type="button" class="round gray"><span>GO</span></button>
        </div>
        <!-- //Sorting -->
        
        <div class="sect-movie-chart" id="movie_chart">
            <h4 class="hidden">
                무비차트 - 예매율순
            </h4>
            
            
        </div>
    </div><!-- .sect-moviechart -->


<!-- 페이지 하단 영화관 관련 광고 -->
<div class="sect-ad-benner"> 
        <a href="http://section.cgv.co.kr/event/running/SimpleEventZone.aspx?sidx=11"><img src="http://img.cgv.co.kr/R2014/images/main/phototicket_978_223.jpg" alt="영화를 영원히 추억하는 방법. CGV 포토티켓"></a>
</div><!-- .sect-ad-benner  -->
<!-- 페이지 하단 인기 트레일러 영상 및 실시간 인기 검색어  -->
<div class="cols-rank">
    <div class="col-rank-trailer">
        <h3>인기 트레일러</h3>
        <div class="sect-popular-trailer">
            <div id="ctl00_PlaceHolderContent_ucListFooter_wrap_info_trailer" class="wrap-info-trailer">
                <!-- 트레일러 이미지 -->
                <div class="box-image trailer">
                    <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="147895">
                        <span class="thumb-image">
                            <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/79949/79949147895_1024.JPG" alt="[킹스맨: 골든 서클]스파이 액션 블록버스터 영상">
                            <span class="ico-play">영상보기</span>
                        </span>
                    </a>
                </div>
                <div class="box-image">
                    <a href="/movies/detail-view/?midx=79949">
                        <span class="thumb-image">
                            <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000079/79949/79949_185.jpg" alt="[킹스맨: 골든 서클]스파이 액션 블록버스터 영상">
                            <span class="ico-grade grade-19">청소년 관람불가</span>
                        </span>
                    </a>
                </div>
                <div class="box-contents">
                    <a href="/movies/detail-view/?midx=79949">
                        <strong class="title">킹스맨: 골든 서클</strong>
                    </a>
                    <span class="txt-info">
                        <em class="genre">액션,&nbsp;코미디,&nbsp;어드벤처</em>
                        <span>
                            <i>2017.09.27</i>
                            <strong>개봉</strong>
                            <em class="dday">D-1</em>
                        </span>
                    </span>
                    <span class="screentype">
                        
                            <a class="imax" href="#" title="IMAX 상세정보 바로가기" data-regioncode="07">IMAX</a>
                        
                            <a class="forDX" href="#" title="4DX 상세정보 바로가기" data-regioncode="4D14">4DX</a>
                        
                    </span>
                </div>
            </div>
            <ul>
            
                <li>
                    <div class="box-image">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="147896">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/79793/79793147896_1024.JPG" alt="[아이 앰 히스 레저]티저 예고편" style="width:126px;height:71px;">
                                <span class="ico-play">영상보기</span>
                            </span>
                        </a>
                    </div>
                    <div class="box-contents">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="147896">
                            <strong class="title">아이 앰 히스 레저</strong>
                        </a>
                        <span class="txt-info">
                        <em class="genre">다큐멘터리</em>
                        <span>
                            <i>2017.10.19</i>
                            <strong>개봉</strong>
                            <em class="dday">D-23</em>
                        </span>
                    </span>
                    </div>
                </li>
            
                <li>
                    <div class="box-image">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="147923">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/79960/79960147923_1024.JPG" alt="[범죄도시]예고편-범죄도시" style="width:126px;height:71px;">
                                <span class="ico-play">영상보기</span>
                            </span>
                        </a>
                    </div>
                    <div class="box-contents">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="147923">
                            <strong class="title">범죄도시</strong>
                        </a>
                        <span class="txt-info">
                        <em class="genre">액션,&nbsp;범죄</em>
                        <span>
                            <i>2017.10.03</i>
                            <strong>개봉</strong>
                            <em class="dday">D-7</em>
                        </span>
                    </span>
                    </div>
                </li>
            
                <li>
                    <div class="box-image">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="147907">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/79902/79902147907_1024.JPG" alt="[남한산성]설민석의 스페셜 역사 영상" style="width:126px;height:71px;">
                                <span class="ico-play">영상보기</span>
                            </span>
                        </a>
                    </div>
                    <div class="box-contents">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="147907">
                            <strong class="title">남한산성</strong>
                        </a>
                        <span class="txt-info">
                        <em class="genre">드라마,&nbsp;시대극</em>
                        <span>
                            <i>2017.10.03</i>
                            <strong>개봉</strong>
                            <em class="dday">D-7</em>
                        </span>
                    </span>
                    </div>
                </li>
            
                <li>
                    <div class="box-image">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="147815">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/80001/80001147815_1024.jpg" alt="[어 퍼펙트 데이]메인 예고편-어 퍼펙트 데이" style="width:126px;height:71px;">
                                <span class="ico-play">영상보기</span>
                            </span>
                        </a>
                    </div>
                    <div class="box-contents">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="147815">
                            <strong class="title">어 퍼펙트 데이</strong>
                        </a>
                        <span class="txt-info">
                        <em class="genre">드라마</em>
                        <span>
                            <i>2017.09.21</i>
                            <strong>개봉</strong>
                            
                        </span>
                    </span>
                    </div>
                </li>
            
            </ul>
        </div><!-- .sect-popular-trailer -->
    </div><!-- .col-rank-trailer -->
    <div class="col-rank-search">
        <div class="searchrank">
            <h3>실시간 인기 검색어</h3>
            <ol>
            
                <li>
                    <a href="/search/?query=%ea%b9%80%ea%b4%91%ec%84%9d">1. <strong>김광석</strong></a>
                    <em>
                        
                        <span class="new">NEW</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%eb%82%a8%ed%95%9c%ec%82%b0%ec%84%b1">2. <strong>남한산성</strong></a>
                    <em>
                        4
                        <span class="up">상승</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%ed%82%b9%ec%8a%a4%eb%a7%a8">3. <strong>킹스맨</strong></a>
                    <em>
                        1
                        <span class="up">상승</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%eb%b6%80%ec%82%b0%ed%96%89">4. <strong>부산행</strong></a>
                    <em>
                        1
                        <span class="down">하락</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%ea%b7%b8%ea%b2%83">5. <strong>그것</strong></a>
                    <em>
                        3
                        <span class="down">하락</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%eb%b2%94%ec%a3%84%eb%8f%84%ec%8b%9c">6. <strong>범죄도시</strong></a>
                    <em>
                        4
                        <span class="up">상승</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%ec%a0%80%ec%88%98%ec%a7%80%ea%b2%8c%ec%9e%84">7. <strong>저수지게임</strong></a>
                    <em>
                        
                        <span class="new">NEW</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%ed%83%9d%ec%8b%9c%ec%9a%b4%ec%a0%84%ec%82%ac">8. <strong>택시운전사</strong></a>
                    <em>
                        
                        <span class="new">NEW</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%ec%a2%8b%ec%95%84%ed%95%b4+%eb%84%88%eb%a5%bc">9. <strong>좋아해 너를</strong></a>
                    <em>
                        4
                        <span class="down">하락</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%ec%bd%94%ec%bd%94%eb%b0%8d">10. <strong>코코밍</strong></a>
                    <em>
                        1
                        <span class="down">하락</span>
                    </em>
                </li>
            
            </ol>
            <p class="date">2017.09.26기준</p>
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
	