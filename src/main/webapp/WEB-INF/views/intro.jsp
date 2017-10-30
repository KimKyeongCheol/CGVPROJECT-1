<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Lee Ja Hun Portfolio Page</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="${path.ctx}/intro.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${path.ctx}/intro2.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#page-top">Lee Ja Hun</a>
            </div>

           
        </div>
    </nav>
    <!-- Header -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive" src="img/profile.png" alt="">
                    <div class="intro-text">
                        <span class="name">안녕하세요! 개발자 이자훈입니다.</span>
                        <hr class="star-light">
                        <span class="skills">Java, JavaScript, Oracle, MySQL, HTML5, CSS를 활용한<br> 반응형 웹페이지 구축 및 데이터베이스 구축, 관리 가능</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Portfolio Grid Section -->
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Portfolio</h2>
                    <hr class="star-primary">
                </div>
            </div>
            
        </div>
    </section>

    <!-- About Section -->
    <section class="success" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Skill Detail</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
            <div style="float:left; margin-left:5%;"><img src="http://hongs890.com/img/portfolio/icon/java.png" style="width:150px; height:150px;"><h4 style="color:white; margin-left:35%;">Java</h4></div>
             <div style="float:left; margin-left:5%;"><img src="http://hongs890.com/img/portfolio/icon/javascript.png" style="width:150px; height:150px;"> <h4 style="color:white; margin-left:12%;">JavaScript<br>Ajax<br>jQuery<br>JSON</h4></div>
             <div style="float:left; margin-left:5%;"><img src="http://hongs890.com/img/portfolio/icon/database.png" style="width:150px; height:150px;"> <h4 style="color:white; margin-left:14%">DataBase<br>ORACLE<br>MySQL<br>SQLite3</h4></div>
             <div style="float:left; margin-left:5%;"><img src="http://hongs890.com/img/portfolio/icon/html5.png" style="width:150px; height:150px;"> <h4 style="color:white; margin-left:20%">HTML5<br>CSS<br>BootStrap</h4></div>
             <div style="float:left; margin-left:5%;"><img src="http://hongs890.com/img/portfolio/icon/spring.png" style="width:150px; height:150px;"> <h4 style="color:white; margin-left:17%;">Tools<br>Eclipse<br>Spring Tool Suite<br>Tiles<br>MyBatis<br>Maven<br>Git</h4></div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Contact</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row" style="text-align:center"><br><br>
                <h3 class="skills" style="color:#5D5D5D">Phone : 010-3441-4148</h3>
                <h3 class="skills" style="color:#5D5D5D">E-mail : jahun135@hanmail.net</h3>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>About</h3>
                        <h4>1988-04-19<br>Lee Ja Hun<br>Web Developer<br>2016~</h4>
                    </div>
                            <div class="footer-col col-md-4">
                   
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    <!-- Portfolio Modals -->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <hr class="star-primary">
							<h1>프로젝트 기간<h1><h4>2016.09.15 ~ 2016.10.30</h4><br>
							<h1>프로젝트 인원<h1><h4>총 5명 (PL(1), 영화정보(1), 예약(1), 로그인 및 회원가입(1), 회원정보수정(1)) </h4><br>
                       		<h1>담당 기능</h1><h4>Hosting 및 Hosting 관리 기능 전체</h4><br>
                            <h1>사용 스킬</h1><h4>Java, JavaScript(jQuery,JSON), Ajax, Tiles, MyBatis, MariaDB, HTML5, CSS</h4><br>
                            <a target="_blank" href="${path.ctx}/home">포트폴리오 페이지 바로가기</a><br>
							<h5>로그인 ID : jahun<br>로그인 PW : 1111<br>혹은 회원가입하여 사용 가능<br><br>
                           <h5 style="color:red">위 사이트는 Chrome Browser에 최적화 되어 있으며 Explorer에서는 다소 불안정할 수 있습니다.<br></h5>
                          <br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    


</body>

</html>
