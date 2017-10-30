<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
<meta id="ctl00_og_title" property="og:title" content="로그인 &lt; 회원서비스 | 영화 그 이상의 감동. CGV"></meta>    
<meta id="ctl00_og_image" property="og:image" content="http://img.cgv.co.kr/common/cgv_200x200.jpg"></meta>
<link rel="alternate" href="http://m.cgv.co.kr" />
<link rel="shortcut icon" href="http://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon" />
<title id="ctl00_headerTitle">로그인 &lt; 회원서비스 | 영화 그 이상의 감동. CGV</title>
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
<link rel="stylesheet" href="${path.ctx}/resources/css/soohyung.css"/> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="${path.js}/soohyung.js"></script>
   
</head>
<html>
<body class="">
<div class="skipnaiv">
<a href="#contents" id="skipHeader">메인 컨텐츠 바로가기</a>
</div>
<div id="cgvwrap">
<!-- Contaniner -->
<div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
<!-- LineMap -->
<div id="ctl00_navigation_line" class="linemap-wrap">
<div id="ctl00_navigation_line" class="linemap-wrap">
            <div class="sect-linemap">
                <div class="sect-bcrumb">
                    <ul>
                        <li><a href="${path.ctx}/home"><img alt="home" src="http://img.cgv.co.kr/R2014/images/common/btn/btn_home.png"/></a></li>
                        <li><a>영화</a></li>
                        <li class="last">로그인</li>
                    </ul>
                </div>
                
            </div>
        </div>
</div>
</div>
<!-- //LineMap -->
<!-- Contents Area -->
<div id="contents" class="">
<!-- Contents Start -->
<!-- 실컨텐츠 시작 -->
<div class="wrap-login" id="login_content">
<div class="sect-login">
<ul class="tab-menu-round">
<li class="on">
<a href="/user/login/">로그인</a>
</li>       
</ul>
<div class="box-login login_1408">
<h3 class="hidden">회원 로그인</h3>                                    
<!-- ********************* 비밀번호 5회 오류시 캡챠 포함된 form#form2_capcha 시작 ********************* -->
<form id="form2_capcha" method="post" action="#" novalidate="novalidate" onsubmit="return false" style="display:block;">
<fieldset>
<legend>회원 로그인</legend>
<div id="login_txt_wrap" class="txt_wrap">
<h3></h3>
<!-- <p>정보보호를 위해 아이디, 비밀번호와 함께 <br />자동 입력 방지 문자를 입력하셔야 합니다.</p>-->
<p>귀하의 정보보호를 위해 실제 사용자가<br />요청을 보내고 있는지 <br />확인하는 절차를 거치고 있습니다.</p>
</div>
<div id="login-form" class="login">
<input type="text" title="아이디" id="txtUserId" name="txtUserId" data-title="아이디를 " data-message="입력하세요." required="required" value="" />
<input type="password" title="패스워드" id="txtPwd1" name="txtPwd1" data-title="패스워드를 " data-message="입력하세요." required="required" />
</div>
<!-- 캡차 영역-->   
<button type="submit" id="submit" title="로그인"><span id="login_btn">로그인</span></button>                                    
<div class="login-option">
<button id="join">회원가입하기</button>
<button id="findId_btn">아이디 찾기</button>
<button id="findPw_btn">비밀번호 찾기</button>
</div>
</fieldset>
</form>
<!-- ********************* 비밀번호 5회 오류시 캡챠 포함된 form#form2_capcha 끝 ********************* -->
</div>
</div>                  
<div class="sect-loginad" style="background:#d2cbbe;">
<div>
<iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Login_bigbanner" width="350" height="300" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Login_bigbanner" id="Login_bigbanner"></iframe>
</div>
</div>
</div>
<!-- 실컨텐츠 끝 -->
<form name="loginform" id="loginform" method="post" action="https://www.cgv.co.kr/user/login/login.aspx" novalidate="novalidate">
<input type="hidden" name="id" id="id" />
<input type="hidden" name="password" id="password" />
<input type="hidden" name="id_save" id="id_save" />
<input type="hidden" name="returnURL" value="http://www.cgv.co.kr/default.aspx" />
</form>
<script type="text/javascript" src="http://img.cgv.co.kr/R2014//js/system/crypto.js"></script>
<!--/ Contents End -->
</div>
<!-- /Contents Area -->
</div>
<!-- /Contaniner -->   
<script>
soohyung.main.init('${path.ctx}');
</script>
</body>
</html>