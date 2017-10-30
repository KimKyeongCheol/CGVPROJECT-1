<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko"><head>
    <meta charset="utf-8">
    <title>회원정보 입력 </title>
	
	<link rel="stylesheet" href="${path.ctx}/resources/css/base.css">
	<link rel="stylesheet" href="${path.ctx}/resources/css/member.css"> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="${path.js}/soohyung2.js"></script>
</head>

<a href="${path.ctx}/home"><img width="100px" height="100px" alt="home" src="http://img.cgv.co.kr/R2014/images/common/btn/btn_home.png"/></a>
<body>
<!--skip navigation-->
<div class="skipNavi">
	<a href="#contentsWrap">본문으로 바로가기</a>
</div>
<!--//skip navigation-->
<div id="bodyWrap">
	
	<!--header-->
<form id="headerFrm" method="get">
	<input type="hidden" name="h_search_keyword" id="h_search_keyword">
</form>
	<!-- 참여사 관련 판단 로직 변경 2016-06-20 pjh0416 -->
    
	<div id="headerWrap">
	<!-- on시 height:313px 로 해주세요. css 에 넣어서 important 를 넣을 경우 animation 이 안일어납니다.-->
		<!--header inner-->
		<div class="header_wrap">
			<!-- 20160315 -->
			<div class="bg_dim">
			<!-- //20160315 -->
				<div id="navi" class="hide">
					<h2 class="mobile">메뉴 전체보기</h2>
					<!-- //20160315 -->
					<!-- 20160315 -->
					<!-- //20160315 -->				
				</div>
			<!-- 20160315 -->
			</div>
			<!-- //20160315 -->
			<dl class="myInfo">
				<dt class="haze">개인화 컨텐츠</dt>
				<dd class="viewNavi"><a href="#navi" data-control="smallGnbButton"><img src="/cjmweb/images/common/btn_gnb_open.png" alt="메뉴보기" data-handler="toggleText"></a></dd>
				<dd class="tSearch" data-handler="searchTag"><!-- 클릭 시, 클래스 on 추가 -->
					<span class="btn_open"><a href="#global_search" class="open" data-control="toggleSearch" data-submit-text="검색입력서식 보내기" data-close-text="검색입력서식 열기" data-open-text="검색입력서식 닫기" title="검색입력서식 열기">검색입력서식 열기</a></span>
				</dd>
				<dd class="onester">
					<span class="btn_open">
						<a href="#personalInfo" data-control="personalInfo" data-close-text="나의정보 열기" data-open-text="나의정보 닫기">
                            <!-- 최초 진입 시 -->
                            <span class="img_wrap nowload" data-file-url="/cjmweb/images/common/onester/appear_[number].png" data-start-num="00000" data-end-num="00056">
                                <img src="/cjmweb/images/common/onester/appear_00056.png" alt=""><!-- appear_00000 ~ appear_00056 -->
                            </span>
                            <!-- 평상 시 -->
                            <span class="img_wrap normal hide" data-file-url="/cjmweb/images/common/onester/loop_[number].png" data-start-num="00000" data-end-num="00081">
                                <img src="/cjmweb/images/common/onester/loop_00000.png" alt=""><!-- loop_00000 ~ loop_00081 -->
                            </span>
                            <!-- 대시보드 오픈 시 -->
                            <span class="img_wrap dash_open hide" data-file-url="/cjmweb/images/common/onester/myIn_[number].png" data-start-num="00000" data-end-num="00016">
                                <img src="/cjmweb/images/common/onester/myIn_00000.png" alt=""><!-- myIn_00000 ~ myIn_00016 -->
                            </span>
                            <!-- 대시보드 닫기 시 -->
                            <span class="img_wrap dash_close hide" data-file-url="/cjmweb/images/common/onester/myOut_[number].png" data-start-num="00000" data-end-num="00015">
                                <img src="/cjmweb/images/common/onester/myOut_00000.png" alt=""><!-- myOut_00000 ~ myOut_00015 -->
                            </span>
							<span class="haze">나의정보 열기</span>
						</a>
					</span>
				</dd>
			</dl>
		</div>
		<!--//header inner-->
		<!-- global search -->
		<div id="global_search" class="global_search"><!-- 활성화 시, 클래스 on 추가 -->
			<div class="search_sec">
				<div class="search_box">
					<span class="input_txt"><input type="text" id="search_keyword" maxlength="200" class="text" value="" name="search_keyword" title="검색어 입력란" placeholder="검색어를 입력해주세요." onkeypress="if(event.keyCode==13){ search(); return false; };"></span>
					<button type="button" class="btn btn_search" onclick="search();"><span>검색</span></button>
				</div>
			</div>
		</div>		
		<!-- //global search -->
		
		<!-- personal + alarm notice -->
		<div id="personalInfo" name="personalInfo" class="personalInfo">
			<h2 class="haze">나의 정보</h2>
		</div>
		<!-- //personal + alarm notice -->
		
	</div>


	<!--//header-->

	<!--contents-->
	<div id="contentsWrap">
		<div id="contents">
			<!--title-->
			
			<div class="location_wrap">
				<div class="location"><a href="http://www.cjone.com/cjmweb/main.do" class="home"><span class="haze">홈</span></a><a href="https://www.cjone.com/cjmweb/join.do" class="now"><span>회원가입</span></a></div>
			</div>
			
			<div class="cont_header">
				<h1 class="h1_tit">회원가입</h1>
				<p class="h_desc">라이프스타일 멤버십 CJ ONE! 외식, 쇼핑, 엔터테인먼트 서비스를 한 장의 카드로 즐기세요~</p>
			</div>
			<!--title-->
			<div class="cont_area">
				<div class="member_join">
					<!--step-->
					<!--//step-->
					<div class="member_data">
						<h2 class="haze">회원정보 입력</h2>
						<!-- <p class="msg_emph">
							CJ ONE 회원가입을 위해 <em>회원정보를 입력</em>해주세요.
						</p> -->

						<div class="member_info">
							<form id="form1" method="post" action="">
							    <input type="hidden" id="coopco_cd" name="coopco_cd" value="">
							    <input type="hidden" id="brnd_cd" name="brnd_cd" value="">
							    <input type="hidden" id="mcht_no" name="mcht_no" value="">
							    <input type="hidden" name="coop_return_url" id="coop_return_url" value="">
							    <input type="hidden" id="sub_type" name="sub_type" value="">
							    <input type="hidden" id="ipin_use_yn" name="ipin_use_yn" value="">
							    <input type="hidden" id="hg_nm" name="hg_nm" value="">
							    <input type="hidden" id="vno" name="vno" value="">
							    <!-- ####주민번호미보유#### 주민번호삭제 -->
							    <input type="hidden" id="ipin_ci" name="ipin_ci" value="">
							    <input type="hidden" id="ssn1" name="ssn1" value="">
    							<input type="hidden" id="ssn2" name="ssn2" value="">
							    <input type="hidden" id="ipin_di" name="ipin_di" value="">
							    <input type="hidden" id="gender" name="gender" value="">
							    <input type="hidden" id="legl_birth_dy" name="legl_birth_dy" value="">
							    <input type="hidden" id="frgnr_yn" name="frgnr_yn" value="">
							    <input type="hidden" id="under_14" name="under_14" value="">
							    <input type="hidden" id="id_validate" name="id_validate" value="">
							    <input type="hidden" id="agr_dy" name="agr_dy" value="">
							    <input type="hidden" id="agr_tm" name="agr_tm" value="">
							    <input type="hidden" id="agr_yn" name="agr_yn" value="">
							    <input type="hidden" name="svcuse_agr_typ_cd" value="">
							    <input type="hidden" name="agr_sub_yn99" id="agr_sub_yn99" value=""> <!-- 3자 동의파라메터   -->
							    <input type="hidden" id="mbr_no" name="mbr_no" value="">
							    <input type="hidden" id="mbr_typ_cd" name="mbr_typ_cd" value="">
							    <input type="hidden" id="legl_rep_nm" name="legl_rep_nm" value="">
							    <input type="hidden" id="legl_birth_day" name="legl_birth_day" value="">
							    <input type="hidden" id="legl_ipin_ci" name="legl_ipin_ci" value="">
							    <input type="hidden" id="legl_cert" name="legl_cert" value="">
							    <input type="hidden" id="legl_typ_cd" name="legl_typ_cd" value="">
							    <input type="hidden" id="legl_rep_agr_yn" name="legl_rep_agr_yn" value="">
							    <input type="hidden" id="join_coopco_list" name="join_coopco_list" value="">
							    <input type="hidden" id="rejoin_yn" name="rejoin_yn" value="">
							    <input type="hidden" id="actionUrl" name="actionUrl" value="">
							    <input type="hidden" id="nm_cnfm_yn" name="nm_cnfm_yn" value="">
							    <input type="hidden" id="coopco_hg_nm" name="coopco_hg_nm" value="">
							    <input type="hidden" name="agr_typ_onln" value="">
							    <input type="hidden" id="card_chk" name="card_chk" value="N">
							    <input type="hidden" name="evt_typ" id="evt_typ" value="">
							    <input type="hidden" id="clndr_typ_cd" name="clndr_typ_cd" value="S">
							    <input type="hidden" id="upd_coopco_id" name="upd_coopco_id" value="">
							    <!-- 2010.12.21 가입출처 제휴사 정보 추가.(오쇼핑,온마트의 다음온, 링크프라이스를 통한 회원가입시 가입출처 정보) -->
							    
								    
							
								<div class="table_header">
									<h3 class="h3_tit">기본정보</h3>
									<div class="info"><p class="msg_mandatory"><span class="haze">"필수"</span> 표시는 필수 입력 항목입니다.</p></div>
								</div>
								<div class="table_col">
									<table>
										<caption>회원기본정보 입력 표로 회원정보 이름, 아이디, 비밀번호, 비밀번호 확인, 생년월일, 휴대전화, 이메일을 나타냅니다.</caption>
										<colgroup>
											<col class="title">
											<col class="body">
										</colgroup>
										<tbody>
											<tr class="input">
												<th scope="row" class="mandatory">
													<label for="input_member_name"><span class="haze">"필수"</span> 이름</label>
												</th>
												<td>
													<span class="input_txt"><input type="text" value="" id="name" class="text"></span>
												</td>
											</tr>
											<tr class="input">
												<th scope="row" class="mandatory">
													<label for="mbr_id"><span class="haze">"필수"</span> 아이디</label>
												</th>
												<td>
													<div class="input_group">
														<span class="input_txt w250"><input type="text" class="text" title="사용 할 영문 아이디 명 입력"  name="member_id" id="member_id" maxlength="12"><!-- 에러시 .error 클래스 추가 --></span>
														
															<button type="button" class="btn btn_search" id="idCheck">중복확인</button>
														
														
														<span id="idCheckMsg" style="color: red;"></span>
													</div>
													<p class="msg_desc">CGV,CJmall, Mnet 등 기존의 CJ ONE  제휴 브랜드 회원님의 경우는 기존에 사용하고 계신 아이디가 새롭게 생성하신 <br>통합 아이디로 변경됩니다.</p>
												</td>
											</tr>
											<tr class="input">
												<th scope="row" class="mandatory">
													<label for="pwd"><span class="haze">"필수"</span> 비밀번호</label>
												</th>
												<td>
													<div class="input_group">
														<span class="input_txt w250"><input type="password" class="text" placeholder="비밀번호를 입력해주세요." name="pass1" id="pass1" maxlength="12"></span>
														<span id="passCheckMsg" style="color: red;"></span>
														<p class="msg_info em hide" id="msg_pwd">비밀번호는 영문자, 숫자, 특수문자 모두 최소 1가지 이상 조합한 8~12자리이어야 합니다.</p>
													</div>
												</td>
											</tr>
											<tr class="input">
												<th scope="row" class="mandatory">
													<label for="pwd_check"><span class="haze">"필수"</span> 비밀번호 확인</label>
												</th>
												<td>
													<div class="input_group">
														<span class="input_txt"><input type="password" class="text" placeholder="비밀번호를 재입력해주세요." name="pass2" id="pass2" maxlength="12"></span>
														<span id="passCheckMsg2" style="color: red;"></span>
													</div>
												</td>
											</tr>
											<tr class="input">
												<th scope="row" class="mandatory">
													<label for="birth_yy">
													<span class="haze">"필수"</span> 성별</label>
												</th>
												<td>
													<div class="gender_select">
														<span class="select w120" data-skin="form">
															<select title="성별 중 선택" id="gender" name="gender">
																
															<option value="male">남자</option><option value="female">여자</option></select>
														</span>
														
													</div>
													
												</td>
											</tr>
											
											<tr class="input">
												<th scope="row" class="mandatory">
													<label for="birth_yy">
													<span class="haze">"필수"</span> 생년월일</label>
												</th>
												<td>
													<div class="birthday_select">
														<span class="select w120" data-skin="form">
															<select title="생년월일 중 년 선택" id="birth_year" name="birth_year">
																
															</select>
														</span>
														<span class="symbol">년</span>
														<span class="select w70" data-skin="form">
															<select title="생년월일 중 월 선택" class="narrow" id="birth_month" name="birth_month">
																
															</select>
														</span>
														<span class="symbol">월</span>
														<span class="select w70" data-skin="form">
															<select title="생년월일 중 일 선택" class="narrow" id="birth_day" name="birth_day">
																
															</select>
														</span>
														<span class="symbol">일</span>
													</div>
													<p class="msg_desc">설정하신 생일을 기준으로 <em>15일 전</em> 생일쿠폰이 발행됩니다.</p>
												</td>
											</tr>
											<tr class="input">
												<th scope="row" class="mandatory">
													<label for="mob_no_1"><span class="haze">"필수"</span> 휴대전화</label>
												</th>
												<td>
													<div class="phon_write">
														<span class="select w100" data-skin="form">
															<select title="휴대전화 앞자리 선택" id="phone_first" name="phone_first">
																
															</select>
														</span>
														<span class="symbol">-</span>
														<span class="input_txt w100">
															<input type="text" class="text narrow" title="휴대전화 중간자리 입력" data-format="num" id="phone_mid" name="phone_mid" maxlength="4" value="">
														</span>
														<span class="symbol">-</span>
														<span class="input_txt w100">
															<input type="text" class="text narrow" title="휴대전화 끝자리 입력" data-format="num" id="phone_last" name="phone_last" maxlength="4" value="">
														</span>
														<p class="msg_info em hide" id="alert_mob_no"></p>
													</div>
													<p class="msg_desc">주문 및 배송, 쿠폰, 이벤트 정보 등을 제공 받으실 수 있습니다.</p>
												</td>
											</tr>
											<tr class="input">
												<th scope="row" class="mandatory">
													<label for="email_addr1"><span class="haze">"필수"</span> 이메일</label>
												</th>
												<td>
													<div class="email_write">
														<span class="input_txt w110" data-skin="form">
															<input type="text" class="text small" title="이메일 아이디 입력" name="email_first" id="email_first" value="" placeholder="이메일 아이디" data-format="email">
														</span>
														<span class="symbol">@</span>
														<span class="input_txt w110">
															<input type="text" class="text small" title="이메일 도메인 입력" name="email_input" id="email_input" value="naver.com" data-format="email">
														</span>
														<span class="select w100" data-skin="form">
														<select title="이메일 도메인 선택" name="email_last" id="email_last">
														<option value="naver.com">naver.com</option><option value="gmail.com">gmail.com</option><option value="nate.com">nate.com</option>
														<option value="hanmail.net">hanmail.net</option><option value="inputEmail">직접입력</option>
														</select>
														</span>
														<p class="msg_info em hide" id="alert_email_addr">이메일 주소를 다시 확인해주세요.</p>
													</div>
													<p class="msg_desc">이메일 주소 입력 시 사용 가능 특수 문자 : - . _</p>
												</td>
											</tr>
											
											
											<tr class="input">
												<th scope="row" class="mandatory">
													<label for="email_addr1"><span class="haze">"필수"</span> 주소</label>
												</th>
												<td>
													<div class="email_write">
														<input type="text" id="sample4_postcode" placeholder="우편번호">
														<input type="button" onclick="soohyung2.logic.sample4_execDaumPostcode()" value="우편번호 찾기"><br>
														<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
														<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
														<span id="guide" style="color:#999"></span>
													</div>
													
												</td>
											</tr>	
											
										</tbody>
									</table>
								</div>
														
									<div class="btn_sec">
									<button type="button" class="btn" id="cancel">취소</button>
									<button type="button" class="btn btn_em" id="submit">등록</button>
								</div>
								
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--//contents-->

	<!-- footer -->
	
	<!-- //footer -->
</div>
<!-- //160203 수정 -->    
<!--//script 영역-->
	<form method="post" name="form2" id="form2">
	<input type="hidden" id="coopco_cd" name="coopco_cd" value="">
	<input type="hidden" id="brnd_cd" name="brnd_cd" value="">
	<input type="hidden" id="mcht_no" name="mcht_no" value="">
	<input type="hidden" name="coop_return_url" id="coop_return_url" value="">
	<input type="hidden" id="return_func" name="return_func" value="">
	<input type="hidden" id="mbr_id" name="mbr_id" value="">
	<input type="hidden" id="sub_type" name="sub_type" value="">
	<input type="hidden" id="ipin_use_yn" name="ipin_use_yn" value="">
	<input type="hidden" id="hg_nm" name="hg_nm" value="">
	<input type="hidden" id="vno" name="vno" value="">
	<input type="hidden" id="ssn1" name="ssn1" value="">
	<input type="hidden" id="ssn2" name="ssn2" value="">
	<input type="hidden" id="ipin_ci" name="ipin_ci" value="">
	<input type="hidden" id="ipin_di" name="ipin_di" value="">
	<input type="hidden" id="gender" name="gender" value="">
	<input type="hidden" id="frgnr_yn" name="frgnr_yn" value="">
	<input type="hidden" id="under_14" name="under_14" value="">
	<input type="hidden" id="id_validate" name="id_validate" value="">
	<input type="hidden" id="agr_dy" name="agr_dy" value="">
	<input type="hidden" id="agr_tm" name="agr_tm" value="">
	<input type="hidden" id="agr_yn" name="agr_yn" value="">
	
	<input type="hidden" name="agr_sub_yn99" id="agr_sub_yn99" value=""><!-- 3자 동의파라메터   -->
	<input type="hidden" id="mbr_no" name="mbr_no" value="">
	<input type="hidden" id="mbr_typ_cd" name="mbr_typ_cd" value="">
	<input type="hidden" id="legl_rep_nm" name="legl_rep_nm" value="">
	<input type="hidden" id="legl_birth_day" name="legl_birth_day" value="">
	<input type="hidden" id="legl_ipin_ci" name="legl_ipin_ci" value="">
	<input type="hidden" id="legl_cert" name="legl_cert" value="">
	<input type="hidden" id="legl_typ_cd" name="legl_typ_cd" value="">
	<input type="hidden" id="legl_rep_agr_yn" name="legl_rep_agr_yn" value="">
	<input type="hidden" id="join_coopco_list" name="join_coopco_list" value="">
	
	<input type="hidden" id="rejoin_yn" name="rejoin_yn" value="">
	<input type="hidden" id="action_url" name="action_url" value="">
	
	<input type="hidden" name="evt_typ" id="evt_typ" value="">
	<input type="hidden" name="strEvtCode" id="strEvtCode" value="">
	<input type="hidden" name="evt_coopco_cd" id="evt_coopco_cd" value="">
	<input type="hidden" name="evt_brnd_cd" id="evt_brnd_cd" value="">
	<input type="hidden" name="evt_mcht_no" id="evt_mcht_no" value="">
	<input type="hidden" name="evt_mbr_no" id="evt_mbr_no" value="">
	<input type="hidden" name="card_register_error" id="card_register_error" value="">
	<input type="hidden" name="upd_coopco_id" id="upd_coopco_id" value="">
	<input type="hidden" name="card_chk" id="card_chk" value="">
	</form>
<script>
soohyung2.main.init('${path.ctx}');
</script>


</body></html>