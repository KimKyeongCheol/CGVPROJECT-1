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
	

</head>
<body>
	
	
	<div id="contaniner" class=""><!-- ë²½ë ë°°ê²½ì´ë¯¸ì§ ì¬ì© ì class="bg-bricks" ì ì© / ë°°ê²½ì´ë¯¸ì§ê° ìì ê²½ì° class ì­ì   -->

        <!-- LineMap -->

        <div id="ctl00_navigation_line" class="linemap-wrap">
            <div class="sect-linemap">
                <div class="sect-bcrumb">
                    <ul>
                        <li><a href="/"><img alt="home" src="http://img.cgv.co.kr/R2014/images/common/btn/btn_home.png"></a></li>
                        
                            <li>
                                <a href="/movies/">ìí</a>
                            </li>
                        
                            <li class="last">
                                ìíìì¸
                            </li>
                        
                        
                    </ul>
                </div>
                <div class="sect-special">
                    <ul>
                       
                        <li><a href="/user/vip-lounge/">VIP LOUNGE</a></li>
                        <li><a href="/user/memberShip/ClubService.aspx" title="ìì°½" class="specialclub">Clubìë¹ì¤</a></li>
                        <li><a href="http://phototicket.cgv.co.kr/" title="ìì°½" class="photi" target="_blank">í¬í í°ì¼</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //LineMap -->

		<!-- Contents Area -->
		<div id="contents" class="">
            
            <!-- Contents Start -->
			

<!-- ì¤ì»¨íì¸  ìì -->
<div class="wrap-movie-detail" id="select_main">

    
<div class="tit-heading-wrap">
    <h3>ìíìì¸</h3>
</div>
<div class="sect-base-movie">
    <h3><strong>í¹ì¤ë§¨: ê³¨ë  ìí´</strong>ê¸°ë³¸ì ë³´</h3>
    <div class="box-image">
        <a href="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000079/79949/79949_1000.jpg" title="í¬ì¤í° í¬ê² ë³´ê¸° ìì°½" target="_blank">
            <span class="thumb-image"> 
                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000079/79949/79949_185.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´ í¬ì¤í° ìì°½" onerror="errorImage(this)">
                <span class="ico-posterdetail">í¬ì¤í° í¬ê² ë³´ê¸°</span>
                <span class="ico-grade grade-19"> ì²­ìë ê´ëë¶ê°</span>
            </span> 
        </a> 
    </div>
    <div class="box-contents">
        <div class="title"> 
            <strong>í¹ì¤ë§¨: ê³¨ë  ìí´</strong>
            
            <em class="round brown"><span>ìë§¤ì¤</span></em>
            <em class="round red"><span>D-1</span></em>
            <p>Kingsman: The Golden Circle</p>
        </div>
        <div class="score"> 
            <strong class="percent">ìë§¤ì¨&nbsp;<span>77.2%</span></strong>
          
            <div class="egg-gage small">
            <span class="egg good"></span>
            
            
				<span class="percent"> ? </span>
                                     
			</div>
            <!--
            <div class="point">
                <em>0.0</em>
            </div>
             -->
            <strong class="count">
                (<span class="view">ì¤ê´ëê° :&nbsp;<em>0ëª</em></span>) </strong> 
            </div>
            <!-- ë¨ì´ì§ë ì ì´ì  ììì class=onì ë£ëë¤ -->
        <div class="spec">
            <dl>
                <dt>ê°ë :&nbsp;</dt>
                <dd>
                    
                        
                        <a href="/movies/persons/?pidx=10709">ë§¤í ë³¸</a>                    
                        
                </dd>
                
                <dd>
                    
                </dd>

                <dt>&nbsp;/ ë°°ì° :&nbsp;</dt>
                <dd class="on">
                    
                        
                        <a href="/movies/persons/?pidx=1391">ì½ë¦° í¼ì¤</a>                    
                        
                        ,&nbsp;
                        <a href="/movies/persons/?pidx=656">ì¤ë¦¬ì ë¬´ì´</a>                    
                        
                        ,&nbsp;
                        <a href="/movies/persons/?pidx=115561">íë° ìì í¼</a>                    
                        
                        ,&nbsp;
                        <a href="/movies/persons/?pidx=32641">ë§í¬ ì¤í¸ë¡±</a>                    
                        
                </dd>

              


                <dt>ì¥ë¥´ :&nbsp;ì¡ì,&nbsp;ì½ë¯¸ë,&nbsp;ì´ëë²¤ì²</dt> 
                <dd></dd>
                <dt>&nbsp;/ ê¸°ë³¸ :&nbsp;</dt>
                <dd class="on">ì²­ìë ê´ëë¶ê°,&nbsp;141ë¶,&nbsp;ë¯¸êµ­, ìêµ­</dd>
                <dt>ê°ë´ :&nbsp;</dt>
                <dd class="on">2017.09.27</dd>


            

            </dl>
        </div>
        <span class="screentype">
        
                <a href="#" class="imax" title="IMAX ìì¸ì ë³´ ë°ë¡ê°ê¸°" data-regioncode="07">IMAX</a>
            
                <a href="#" class="forDX" title="4DX ìì¸ì ë³´ ë°ë¡ê°ê¸°" data-regioncode="4D14">4DX</a>
            
        </span>
        <span class="like">
            <button class="btn-like" value="79949">ìí ì°íê¸°</button>
            <span class="count">
                <strong><i>21,213</i><span>ëªì´ ì í</span></strong> 
                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
            </span>

        
            <a class="link-reservation" href="/ticket/?MOVIE_CD=20013728&amp;MOVIE_CD_GROUP=20013728">ìë§¤</a> 
        <a href="/culture-event/event/detail-view.aspx?idx=16813" class="round on brown"><span>ìë§¤ ì´ë²¤í¸</span></a>
        </span>
    </div>
</div><!-- .sect-base -->

<script type="text/javascript">
    _TRK_PNC = "79949";
    _TRK_PNC_NM = "í¹ì¤ë§¨: ê³¨ë  ìí´";
    _TRK_PNG = "ìí";
    _TRK_PI = "PDV";
    _TRK_CP = "/ìí/ìíìì¸/{0}/í¹ì¤ë§¨: ê³¨ë  ìí´";
</script>


    <div class="cols-content" id="menu">
        <div class="col-detail">
            <!-- ë©ë´ê° ì íëë©´ a ì title="ì í" ì´ë¼ê³  ë£ëë¤ -->
            <ul class="tab-menu">
                <li class="on"><a title="íì¬ ì íë¨" href="/movies/detail-view/?midx=79949#menu">ì£¼ìì ë³´ </a></li>
             <!--   <li><a href="/movies/detail-view/cast.aspx?midx=79949#menu">ê°ë/ì¶ì°</a></li>-->
                <li><a href="/movies/detail-view/trailer.aspx?midx=79949#menu">í¸ë ì¼ë¬</a></li>
                <li><a href="/movies/detail-view/still-cut.aspx?midx=79949#menu">ì¤í¸ì»·</a></li>
               
                <!--<li><a href="/movies/detail-view/point-review.aspx?midx=79949#menu">íì /ë¦¬ë·°</a></li>-->
                <li><a href="/movies/detail-view/?midx=79949#commentReg">íì /ë¦¬ë·°</a></li>
               
                <li class="last"><a href="/movies/detail-view/show-times.aspx?midx=79949#menu">ìììê°í</a></li>
            </ul>
            <div class="sect-story-movie">
                
                
            </div><!-- .sect-story -->
            <div id="ctl00_PlaceHolderContent_Section_Chart" class="sect-graph">
                <ul class="graph">
                    <li>
                        <strong>ë§¤ë ¥í¬ì¸í¸</strong>
						<div class="radar-graph" id="chart1">
							<!-- <canvas id="charmScore1" width="100" height="100"></canvas> -->
							<!-- ie8 ì´í ë¯¸ì§ìì
							<div class="sorry">
								<p>&lsquo;ì´ ìíì ë§¤ë ¥í¬ì¸í¸&rsquo; ì°¨í¸ë<br />ìµì¤íë¡ë¬9 ì´ììì ì§ì ê°ë¥í©ëë¤.</p>
							</div>
                             -->
                            <canvas id="charmScore1" width="221" height="221" style="width: 221px; height: 221px;"></canvas>
						</div>
                    </li>
                    <li>
                        <strong>ì±ë³ ìë§¤ ë¶í¬</strong>
                        <div id="jqplot_sex" class="chart jqplot-target" style="position: relative;"><canvas width="266" height="192" class="jqplot-base-canvas" style="position: absolute; left: 0px; top: 0px;"></canvas><div class="jqplot-title" style="height: 0px; width: 0px;"></div><canvas width="266" height="192" class="jqplot-grid-canvas" style="position: absolute; left: 0px; top: 0px;"></canvas><canvas width="246" height="159" class="jqplot-series-shadowCanvas" style="position: absolute; left: 10px; top: 10px;"></canvas><canvas width="246" height="159" class="jqplot-series-canvas" style="position: absolute; left: 10px; top: 10px;"></canvas><canvas width="246" height="159" class="jqplot-donutRenderer-highlight-canvas" style="position: absolute; left: 10px; top: 10px;"></canvas><span class="jqplot-donut-series jqplot-data-label" style="position: absolute; left: 48px; top: 145px;">ë¨ 41.1%</span><span class="jqplot-donut-series jqplot-data-label" style="position: absolute; left: 172px; top: 20px;">ì¬ 58.9%</span><canvas width="246" height="159" class="jqplot-event-canvas" style="position: absolute; left: 10px; top: 10px;"></canvas></div>
                    </li>
                    <li>
                        <strong>ì°ë ¹ë³ ìë§¤ ë¶í¬</strong>
                        <div id="jqplot_age" class="chart jqplot-target" style="position: relative;"><canvas width="266" height="192" class="jqplot-base-canvas" style="position: absolute; left: 0px; top: 0px;"></canvas><div class="jqplot-title" style="height: 0px; width: 0px;"></div><div class="jqplot-axis jqplot-xaxis" style="position: absolute; width: 266px; height: 14px; left: 0px; bottom: 0px;"><div class="jqplot-xaxis-tick" style="position: absolute; font-size: 12px; left: 28.25px;">10ë</div><div class="jqplot-xaxis-tick" style="position: absolute; font-size: 12px; left: 89.75px;">20ë</div><div class="jqplot-xaxis-tick" style="position: absolute; font-size: 12px; left: 151.25px;">30ë</div><div class="jqplot-xaxis-tick" style="position: absolute; font-size: 12px; left: 212.75px;">40ë</div></div><div class="jqplot-axis jqplot-yaxis" style="position: absolute; height: 192px; width: 0px; left: 0px; top: 0px;"></div><canvas width="266" height="192" class="jqplot-grid-canvas" style="position: absolute; left: 0px; top: 0px;"></canvas><canvas width="246" height="158" class="jqplot-series-shadowCanvas" style="position: absolute; left: 10px; display: block; top: 10px;"></canvas><canvas width="246" height="158" class="jqplot-series-canvas" style="position: absolute; left: 10px; display: block; top: 10px;"></canvas><div class="jqplot-point-label jqplot-series-0 jqplot-point-3" style="position: absolute; left: 215.75px; top: 115.24px; display: block;">13.2</div><div class="jqplot-point-label jqplot-series-0 jqplot-point-2" style="position: absolute; left: 154.25px; top: 60.2033px; display: block;">34.1</div><div class="jqplot-point-label jqplot-series-0 jqplot-point-1" style="position: absolute; left: 92.75px; top: 19.3867px; display: block;">49.6</div><div class="jqplot-point-label jqplot-series-0 jqplot-point-0" style="position: absolute; left: 33.75px; top: 141.837px; display: block;">3.1</div><canvas width="246" height="158" class="jqplot-barRenderer-highlight-canvas" style="position: absolute; left: 10px; top: 10px;"></canvas><canvas width="246" height="158" class="jqplot-event-canvas" style="position: absolute; left: 10px; top: 10px;"></canvas></div>
                    </li>
                </ul>
            </div>
            <!--
            <div id="ctl00_PlaceHolderContent_Section_Chart1" class="sect-graph">
                <ul class="graph">
                    <li>
                        <strong>ë§¤ë ¥í¬ì¸í¸</strong>
						<div class="radar-graph" id="chart1">
							<canvas id="charmScore1" width="221" height="221"></canvas>
						</div>
						</div>
                        <!--
                        <strong>ê¸°ê°ë³ íì </strong>
                        <div>
                            <div class="point">
                                <em>0.0</em>
                                <i>(ì´: 0ëª)</i>
                                
                                0
                            </div>
                            
                            <div class="chart" id="jqplot_period"></div>
                            
                        </div>
                        
                    </li>
                    <li>
                        <strong>ì±ë³ ìë§¤ ë¶í¬</strong>
                        <div id="jqplot_sex" class="chart"></div>
                    </li>
                    <li>
                        <strong>ì°ë ¹ë³ ìë§¤ ë¶í¬</strong>
                        <div id="jqplot_age" class="chart"></div>
                    </li>
                </ul>
            </div>
            -->
            <!-- .sect-graph -->

            <div class="movie-detail-ad">
                <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@SponsorBar_800" width="800" height="90" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="SponsorBar_800" id="SponsorBar_800" style="display: none !important;"></iframe>
            </div>
          <!--  <div class="sect-staff">
                <div class="heading">
                    <h4>ê°ë/ì¶ì°</h4><a class="link-more" href="cast.aspx?midx=79949">ëë³´ê¸°</a>
                </div>
                <ul>
                
                    <li>
                        <div class="box-image">
                            <a href="/movies/persons/?pidx=10709">
                                <span class="thumb-image">                            
                                    <img src="" alt="ë§¤í ë³¸" onerror="errorImage(this, {'type':'people'})"  />
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <dl>
                                <dt>ê°ë</dt>
                                <dd><a href="/movies/persons/?pidx=10709">ë§¤í ë³¸</a></dd>
                            </dl>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <a href="/movies/persons/?pidx=1391">
                                <span class="thumb-image">                            
                                    <img src="http://image.cine21.com/resize/cine21/person/2007/0528/P0000067_peo60537[X90,140].jpg" alt="ì½ë¦° í¼ì¤" onerror="errorImage(this, {'type':'people'})"  />
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <dl>
                                <dt>ì£¼ì°</dt>
                                <dd><a href="/movies/persons/?pidx=1391">ì½ë¦° í¼ì¤</a></dd>
                            </dl>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <a href="/movies/persons/?pidx=656">
                                <span class="thumb-image">                            
                                    <img src="http://image.cine21.com/resize/cine21/person/2005/1214/P0000015_peo53224[X90,140].jpg" alt="ì¤ë¦¬ì ë¬´ì´" onerror="errorImage(this, {'type':'people'})"  />
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <dl>
                                <dt>ì£¼ì°</dt>
                                <dd><a href="/movies/persons/?pidx=656">ì¤ë¦¬ì ë¬´ì´</a></dd>
                            </dl>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <a href="/movies/persons/?pidx=115561">
                                <span class="thumb-image">                            
                                    <img src="http://image.cine21.com/resize/cine21/still/2014/0807/10_47_11__53e2da9fc03ef[X90,140].jpg" alt="íë° ìì í¼" onerror="errorImage(this, {'type':'people'})"  />
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <dl>
                                <dt>ì£¼ì°</dt>
                                <dd><a href="/movies/persons/?pidx=115561">íë° ìì í¼</a></dd>
                            </dl>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <a href="/movies/persons/?pidx=32641">
                                <span class="thumb-image">                            
                                    <img src="http://image.cine21.com/resize/cine21/person/2013/0329/43752[X90,140].jpg" alt="ë§í¬ ì¤í¸ë¡±" onerror="errorImage(this, {'type':'people'})"  />
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <dl>
                                <dt>ì£¼ì°</dt>
                                <dd><a href="/movies/persons/?pidx=32641">ë§í¬ ì¤í¸ë¡±</a></dd>
                            </dl>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <a href="/movies/persons/?pidx=10365">
                                <span class="thumb-image">                            
                                    <img src="http://image.cine21.com/resize/cine21/person/2009/0224/P0000004_news69203[X90,140].jpg" alt="í ë¦¬ ë² ë¦¬" onerror="errorImage(this, {'type':'people'})"  />
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <dl>
                                <dt>ì¡°ì°</dt>
                                <dd><a href="/movies/persons/?pidx=10365">í ë¦¬ ë² ë¦¬</a></dd>
                            </dl>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <a href="/movies/persons/?pidx=15287">
                                <span class="thumb-image">                            
                                    <img src="" alt="ìí¼ ì¡´" onerror="errorImage(this, {'type':'people'})"  />
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <dl>
                                <dt>ì¡°ì°</dt>
                                <dd><a href="/movies/persons/?pidx=15287">ìí¼ ì¡´</a></dd>
                            </dl>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <a href="/movies/persons/?pidx=828">
                                <span class="thumb-image">                            
                                    <img src="http://image.cine21.com/resize/cine21/person/2010/0315/P0000012_05[X90,140].jpg" alt="ì í ë¸ë¦¬ì§ì¤" onerror="errorImage(this, {'type':'people'})"  />
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <dl>
                                <dt>ì¡°ì°</dt>
                                <dd><a href="/movies/persons/?pidx=828">ì í ë¸ë¦¬ì§ì¤</a></dd>
                            </dl>
                        </div>
                    </li>
                    
                </ul>
            </div>--><!-- .sect-staff -->
            <div id="ctl00_PlaceHolderContent_Section_Trailer" class="sect-trailer">
                <div class="heading">
                    <h4>í¸ë ì¼ë¬</h4><span id="ctl00_PlaceHolderContent_TrailerTotalCount" class="count">11ê±´</span><a class="link-more" href="trailer.aspx?midx=79949">ëë³´ê¸°</a>
                </div>
                <ul>
                <!-- ì¬ì§ ëìì ì¡°í -->
                
                    <li>
                        <div class="box-image">
                            <!-- TODO : ëìì íì ì°½ ìì í ë§í¬ ê±¸ì´ì¼ í¨ //-->
                            <a href="#" title="ìì°½" class="movie_player_popup" data-gallery-idx="148217">
                                <span class="thumb-image">
                                    <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/79949/79949148217_148.jpg" alt="[í¹ì¤ë§¨: ê³¨ë  ìí´]ScreenX ìê³ í¸" onerror="errorImage(this, {'type':'landscape'})">
                                    <span class="ico-play">ììë³´ê¸°</span>
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <a href="#" title="ìì°½" class="movie_player_popup" data-gallery-idx="148217">
                                <strong class="title">
                                    
                                    <span class="ico-trailer hd">HD</span>
                                    ScreenX ìê³ í¸
                                </strong>
                            </a>
                            <span class="txt-info">2017.09.21</span>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <!-- TODO : ëìì íì ì°½ ìì í ë§í¬ ê±¸ì´ì¼ í¨ //-->
                            <a href="#" title="ìì°½" class="movie_player_popup" data-gallery-idx="148145">
                                <span class="thumb-image">
                                    <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/79949/79949148145_148.jpg" alt="[í¹ì¤ë§¨: ê³¨ë  ìí´]í¹ì¤ë§¨ ìµíì ë  ìì" onerror="errorImage(this, {'type':'landscape'})">
                                    <span class="ico-play">ììë³´ê¸°</span>
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <a href="#" title="ìì°½" class="movie_player_popup" data-gallery-idx="148145">
                                <strong class="title">
                                    
                                    <span class="ico-trailer hd">HD</span>
                                    í¹ì¤ë§¨ ìµíì ë  ìì
                                </strong>
                            </a>
                            <span class="txt-info">2017.09.20</span>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <!-- TODO : ëìì íì ì°½ ìì í ë§í¬ ê±¸ì´ì¼ í¨ //-->
                            <a href="#" title="ìì°½" class="movie_player_popup" data-gallery-idx="148144">
                                <span class="thumb-image">
                                    <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/79949/79949148144_148.jpg" alt="[í¹ì¤ë§¨: ê³¨ë  ìí´]ê³¨ë  ìí´ ìì" onerror="errorImage(this, {'type':'landscape'})">
                                    <span class="ico-play">ììë³´ê¸°</span>
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <a href="#" title="ìì°½" class="movie_player_popup" data-gallery-idx="148144">
                                <strong class="title">
                                    
                                    <span class="ico-trailer hd">HD</span>
                                    ê³¨ë  ìí´ ìì
                                </strong>
                            </a>
                            <span class="txt-info">2017.09.20</span>
                        </div>
                    </li>
                    
                </ul>
            </div><!-- .sect-trailer -->
            <div id="ctl00_PlaceHolderContent_Section_Still_Cut" class="sect-stillcut">
                <div class="heading">
                    <h4>ì¤í¸ì»·</h4><span class="count"><strong id="stillcut_current">1</strong>/57ê±´</span><a class="link-more" href="still-cut.aspx?midx=79949">ëë³´ê¸°</a>
                </div>
                <div class="slider-wrap">
                    <div class="slider" id="still_motion">
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148391_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)" src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148391_727.jpg" style="margin-top: 22.5px;">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148390_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)" src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148390_727.jpg" style="margin-top: 22.5px;">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148389_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148388_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148387_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148386_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148385_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148384_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148383_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148382_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148381_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148146_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148143_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148142_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148141_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949148140_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147971_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147970_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147969_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147968_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147967_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147686_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147685_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147684_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147637_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147636_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147635_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147634_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147633_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147632_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147631_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147630_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147629_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147540_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147539_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147538_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147537_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147529_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147528_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147527_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147519_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147518_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147517_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147516_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147515_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147514_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147513_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147512_727.jpg" alt="í¹ì¤ë§¨: ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147386_727.jpg" alt="í¹ì¤ë§¨-ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147385_727.jpg" alt="í¹ì¤ë§¨-ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147384_727.jpg" alt="í¹ì¤ë§¨-ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147383_727.jpg" alt="í¹ì¤ë§¨-ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147382_727.jpg" alt="í¹ì¤ë§¨-ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147381_727.jpg" alt="í¹ì¤ë§¨-ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147380_727.jpg" alt="í¹ì¤ë§¨-ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147378_727.jpg" alt="í¹ì¤ë§¨-ê³¨ë  ìí´" onerror="errorImage(this)">
                            </div>
                        </div>
                        
                        <div class="item-wrap">
                            <div class="item" style="width: 800px; height: 450px; display: none;">
                                <img data-src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147377_727.jpg" alt="í¹ì¤ë§¨-ê³¨ë  ìí´" onerror="errorImage(this)" src="http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000079/79949/79949147377_727.jpg" style="height: 100%;">
                            </div>
                        </div>
                        
                        <button type="button" class="btn-prev">ì´ì  íì´ì§ ì´ë</button>
                        <button type="button" class="btn-next">ë¤ì íì´ì§ ì´ë</button>
                    </div>
                </div>
            </div><!-- .sect-stillcut -->


              
    
            <div class="sect-grade">
                <!-- dev_css
                <div class="heading">
                    <h4>íì </h4><a class="link-more" href="point-review.aspx?midx=79949">ëë³´ê¸°</a>
                    <p class="txt-write">ê´ëì¼ ì´í 14ì¼ ë´ ì¤ê´ëê° íì ì ë¨ê¸°ìë©´ <strong>CJ ONE 50í¬ì¸í¸</strong>ê° ì ë¦½ë©ëë¤. <a class="link-gradewrite" href="point-review.aspx?midx=79949"><span>íì ì°ê¸°</span></a></p>
                </div>
                <ul class="list-grade">
                    <li>
                        <div class="score">
                            <strong class="count"><span class="all">111ì´íì <em>(0ëª ì°¸ì¬)</em></span></strong>
                            <div class="point">
                                <em>0.0</em>
                            </div>
                        </div>
                    </li>
                    <li>
                        <strong class="count"><span class="view">ì¤ê´ëê°<em>(0ëª ì°¸ì¬)</em></span></strong>
                        <div class="point">
                            <em>0.0</em>
                        </div>
                    </li>
                   <li>
                  <!--       <strong class="count"><span class="critic">í¨ëíì<em>(0ëª ì°¸ì¬)</em></span></strong>
                        <div class="point">
                            <em>0.0</em>
                        </div>
                    </li>
                    <li><a href="/movies/point/my-list.aspx" class="link-mygrade required-login" data-url="/movies/point/my-list.aspx">ë´ê° ë±ë¡í íì  ë³´ê¸° &gt;</a></li>
                </ul>
                -->

            
           
             
                <div class="heading-new">
                    <a class="goto-link" name="commentReg"><h4>ì¤ê´ëê° íì </h4></a>
                    <p class="txt-write">ê´ëì¼ í¬í¨ 7ì¼ ì´ë´ ê´ëíì ë¨ê¸°ìë©´ <strong>CJ ONE 20P</strong>ê° ì ë¦½ë©ëë¤. <a class="link-gradewrite" href="javascript:void(0);"><span>íì ìì±</span></a><a class="link-reviewwrite" href="/movies/point/my-list.aspx"><span>ë´ íì </span></a></p>
                </div>

                <div class="egg-grade">
					<a class="info1" id="goldenEggAlert" href="javascript:void(0);">Golden EGGì§ì<br><img src="http://img.cgv.co.kr/R2014/images/common/ico/ico-question-mark.png" alt="?"></a>
					<!-- <a class="info2" href="#">ì´ ìíì ê°ìí¬ì¸í¸<br /><img src="images/common/ico/ico-question-mark.png" alt="?" /></a> -->

					<div class="massagebox">
						<p>
                            <span class="msg-em"><strong id="cgvEggCountTxt">0</strong>ëªì</span>
							<em>CGVì¤ê´ëê°ì´</em> íê°í´ì£¼ì¨ìµëë¤.
						</p>
					</div>
                    <!-- great , good-->
					<div class="egg-gage big" id="eggIconDiv">
						<span class="egg good"></span>
                        
						<span class="percent"><strong></strong>?</span>
					</div>

					<div class="radar-graph" id="chart2">
						<canvas id="charmScore2" width="200" height="200" style="width: 200px; height: 200px;"></canvas>
						<!-- ie8 ì´í ë¯¸ì§ìì
						<div class="sorry">
							<p>&lsquo;ì´ ìíì ë§¤ë ¥í¬ì¸í¸&rsquo; ì°¨í¸ë<br />ìµì¤íë¡ë¬9 ì´ììì ì§ì ê°ë¥í©ëë¤.</p>
						</div>
						 -->
					</div>
				</div>

                <ul class="sort" id="sortTab">
                      <li class="sortTab on" data-order-type="0" id="test"><a href="javascript:void(0);" title="íì¬ì í">ìµì ì<span class="arrow-down"></span></a></li>
                    <li class="sortTab" data-order-type="3"><a href="javascript:void(0);">ì¶ì²ì<span class="arrow-down"></span></a></li>
                </ul>


                
                <div class="wrap-persongrade">
                    <ul id="movie_point_list_container" class="point_col2"><li style="width: 100%; text-align: center; padding: 30px 0px; border-right: none;">í´ë¹ ì¡°ê±´ì ë°ì´í°ê° ì¡´ì¬íì§ ììµëë¤.</li></ul>
                </div>
            </div><!-- .sect-grade -->

            <!-- .sect-review -->
            <!-- add_css -->

            <div class="paging">
				<ul id="paging_point"></ul>
			</div>

             
            <div class="sect-eventlist">
                <h3><img src="http://img.cgv.co.kr/R2014/images/title/h3_relation_event.gif" alt="RELATED ENENT"></h3>
                <ul>
                    
                            <li>
                                <div class="box-image">
                                    <a href="../../culture-event/event/detail-view.aspx?idx=16806">
                                        <span class="thumb-image">
                                            <img src="http://img.cgv.co.kr/Event/Event/2017/0919/240X200_1_1.jpg">
                                        </span>
                                    </a>
                                </div>
                                <div class="box-contents">
                                    <a href="../../culture-event/event/detail-view.aspx?idx=16806"><em class="text-rightblue">ìí/ìë§¤</em><strong>&lt;í¹ì¤ë§¨: ê³¨ë  ìí´&gt;1+1 ìë§¤ê¶ ì´ë²¤í¸</strong></a>
                                    <p></p>
                                    <em class="date"><span>ê¸°ê°: </span>2017.09.20 ~ 2017.09.26</em>
                                </div>
                            </li>
                        
                            <li>
                                <div class="box-image">
                                    <a href="../../culture-event/event/detail-view.aspx?idx=16748">
                                        <span class="thumb-image">
                                            <img src="http://img.cgv.co.kr/Event/Event/2017/0912/ksms240X200.jpg">
                                        </span>
                                    </a>
                                </div>
                                <div class="box-contents">
                                    <a href="../../culture-event/event/detail-view.aspx?idx=16748"><em class="text-rightblue">ë©¤ë²ì­</em><strong>&lt;í¹ì¤ë§¨: ê³¨ë  ìí´&gt; ì¬ì  ìë§¤ ê²½í ì´ë²¤í¸</strong></a>
                                    <p></p>
                                    <em class="date"><span>ê¸°ê°: </span>2017.09.12 ~ 2017.09.30</em>
                                </div>
                            </li>
                        
                            <li>
                                <div class="box-image">
                                    <a href="../../culture-event/event/detail-view.aspx?idx=16757">
                                        <span class="thumb-image">
                                            <img src="http://img.cgv.co.kr/Event/Event/2017/0913/1709_010_wb.jpg" alt="CGVê·¹ì¥ë³ [CGVê´ì] ì  íë§¨ì ìí¸ë CGVê´ììì">
                                        </span>
                                    </a>
                                </div>
                                <div class="box-contents">
                                    <a href="../../culture-event/event/detail-view.aspx?idx=16757"><em class="text-rightblue">CGVê·¹ì¥ë³</em><strong>[CGVê´ì] ì  íë§¨ì ìí¸ë CGVê´ììì</strong></a>
                                    <p></p>
                                    <em class="date"><span>ê¸°ê°: </span>2017.09.13 ~ 2017.10.22</em>
                                </div>
                            </li>
                        
                </ul>
            </div><!-- .sect-eventlist -->
            
            
            <div class="sect-movielist" style="display :none">
                <h3><img src="http://img.cgv.co.kr/R2014/images/title/h3_relation_movie.gif" alt="RELATION MOVIE"></h3>
                <ul>
                
                    <li>
                        <div class="box-image">
                            <a href="/movies/detail-view/?midx=80080">
                                <span class="thumb-image">
                                    <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80080/80080_126.jpg" alt="ì ê¹ë§ íì¬ ì¢ ê´ëê³  ì¬ê² í¬ì¤í°">
                                    <span class="ico-grade grade-none">ë¯¸ì </span>
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <a href="/movies/detail-view/?midx=80080"><strong>ì ê¹ë§ íì¬ ì¢ ê´ëê³  ì¬ê²</strong></a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <a href="/movies/detail-view/?midx=80070">
                                <span class="thumb-image">
                                    <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80070/80070_126.jpg" alt="ë¡í¤ í¬ì¤í°">
                                    <span class="ico-grade grade-12">12ì¸ ì´ì</span>
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <a href="/movies/detail-view/?midx=80070"><strong>ë¡í¤</strong></a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <a href="/movies/detail-view/?midx=80069">
                                <span class="thumb-image">
                                    <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80069/80069_126.jpg" alt="ì­ëª¨-ë°ëì ìë í¬ì¤í°">
                                    <span class="ico-grade grade-15">15ì¸ ì´ì</span>
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <a href="/movies/detail-view/?midx=80069"><strong>ì­ëª¨-ë°ëì ìë</strong></a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <a href="/movies/detail-view/?midx=80065">
                                <span class="thumb-image">
                                    <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80065/80065_126.jpg" alt="ì´ìì -ë ë¹ê¸°ë í¬ì¤í°">
                                    <span class="ico-grade grade-none">ë¯¸ì </span>
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <a href="/movies/detail-view/?midx=80065"><strong>ì´ìì -ë ë¹ê¸°ë</strong></a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <a href="/movies/detail-view/?midx=80062">
                                <span class="thumb-image">
                                    <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80062/80062_126.jpg" alt="ìë ë¦¬ë²-ê°ëí í¬ì¤í°">
                                    <span class="ico-grade grade-19">ì²­ìë ê´ëë¶ê°</span>
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <a href="/movies/detail-view/?midx=80062"><strong>ìë ë¦¬ë²-ê°ëí</strong></a>
                        </div>
                    </li>
                    
                    <li>
                        <div class="box-image">
                            <a href="/movies/detail-view/?midx=80060">
                                <span class="thumb-image">
                                    <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80060/80060_126.jpg" alt="ì§ì¤ì¤í° í¬ì¤í°">
                                    <span class="ico-grade grade-12">12ì¸ ì´ì</span>
                                </span>
                            </a>
                        </div>
                        <div class="box-contents">
                            <a href="/movies/detail-view/?midx=80060"><strong>ì§ì¤ì¤í°</strong></a>
                        </div>
                    </li>
                    
                </ul>
            </div><!-- .sect-movielist -->
        </div><!-- .col-detail -->
        <iframe class="layer-wrap review_pop" name="ifrm_movie_time_table1" id="ifrm_movie_time_table1" style="display:none" title="ìì¸ë¦¬ì¤í¸" height="993px" width="849px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no" allowtransparency="true"></iframe><!--íì íì  ëª¨ìë³´ê¸° iframe. mwpark_RR2015-->
        <form method="post" id="frmPointPopup" action="/movies/point/default-irm.aspx" novalidate="novalidate">
            <input type="hidden" name="userid" id="frmPointUserId">
            <input type="hidden" name="nick" id="frmPointNick">
        </form>

        
<div class="col-aside">
    <div class="ad-partner01">
        <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@M_Rectangle" width="160" height="300" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="M_Rectangle" id="M_Rectangle" style="display: none !important;"></iframe>
    </div>
    <div class="ad-external01">
        <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@C_Rectangle" width="160" height="300" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="C_Rectangle" id="C_Rectangle" style="display: none !important;"></iframe>
    </div>
    <div class="sect-moviesearch">
        <div class="searchrank">
            <h3>ì¸ê¸° ìí ê²ìì´</h3>
            <ol>
                
                        <li>
                            <a href="/search/?query=%ea%b9%80%ea%b4%91%ec%84%9d">1. <strong>ê¹ê´ì</strong></a>
                        </li>
                    
                        <li>
                            <a href="/search/?query=%eb%82%a8%ed%95%9c%ec%82%b0%ec%84%b1">2. <strong>ë¨íì°ì±</strong></a>
                        </li>
                    
                        <li>
                            <a href="/search/?query=%ed%82%b9%ec%8a%a4%eb%a7%a8">3. <strong>í¹ì¤ë§¨</strong></a>
                        </li>
                    
                        <li>
                            <a href="/search/?query=%eb%b6%80%ec%82%b0%ed%96%89">4. <strong>ë¶ì°í</strong></a>
                        </li>
                    
                        <li>
                            <a href="/search/?query=%ea%b7%b8%ea%b2%83">5. <strong>ê·¸ê²</strong></a>
                        </li>
                    
                        <li>
                            <a href="/search/?query=%eb%b2%94%ec%a3%84%eb%8f%84%ec%8b%9c">6. <strong>ë²ì£ëì</strong></a>
                        </li>
                    
                        <li>
                            <a href="/search/?query=%ec%a0%80%ec%88%98%ec%a7%80%ea%b2%8c%ec%9e%84">7. <strong>ì ìì§ê²ì</strong></a>
                        </li>
                    
                        <li>
                            <a href="/search/?query=%ed%83%9d%ec%8b%9c%ec%9a%b4%ec%a0%84%ec%82%ac">8. <strong>íìì´ì ì¬</strong></a>
                        </li>
                    
                        <li>
                            <a href="/search/?query=%ec%a2%8b%ec%95%84%ed%95%b4+%eb%84%88%eb%a5%bc">9. <strong>ì¢ìí´ ëë¥¼</strong></a>
                        </li>
                    
                        <li>
                            <a href="/search/?query=%ec%bd%94%ec%bd%94%eb%b0%8d">10. <strong>ì½ì½ë°</strong></a>
                        </li>
                    
            </ol>
        </div>
    </div>
</div>

      
</div>

    </div>
    <span style="display:none" class="modifyCommentDummy"></span>
</div>
<!-- ì¤ì»¨íì¸  ë -->

            <!--/ Contents End -->
		</div>
		</body>
		</html>