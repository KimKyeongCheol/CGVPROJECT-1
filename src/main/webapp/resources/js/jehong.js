var jehong=jehong || {};

jehong.main=(()=>{
   var init=(ctx)=>{
      alert('JS init!');
      jehong.session.init(ctx);
      logic();
      drawMovieChart();
   };
   var logic=()=>{
      $('.box-image').click(()=>{
         alert('go Movie Detail !');
         $('#content').empty();
         location.href=sessionStorage.getItem('ctx')+"/movieDetail";
      });
      $('.link-reservation').click(()=>{
         alert('go Movie Reservation !');
         $('#content').empty();
         location.href=sessionStorage.getItem('ctx')+"/reservation";
      });
            
   };
   var drawMovieChart=()=>{
	   $.ajax({
			url : sessionStorage.getItem('ctx')+'/get/movieChart',
			method : 'POST',
			contentType : 'application/json',
			success : d=>{
				 $('#movie_chart').append('<ol id="ol"></ol>');
				  
				  for(var i=0;i<4;i++){
					  $('#ol').append(
							  '<li><div class="box-image"><strong class="rank">No.'+(i+1)+'</strong><span class="thumb-image"><a href="'+sessionStorage.getItem('ctx')+'/parameter?movieNum='+(i+1)+'"><img src="'+d.movieChart[i].poster+'"alt="아이 캔 스피크 포스터"onerror="errorImage(this)"></a><span class="ico-grade grade-'+d.movieChart[i].age_limit+'">12세이상</span></span><span class="screentype"></span></div><div class="box-contents"><strong class="title">'+d.movieChart[i].name+'</strong><div class="score"><strong class="percent">예매율<span>'+d.movieChart[i].reserve_rate+'%</span></strong><!--[2015-12-10]에그포인트적용범위1~3위.start:add_mwpark--><div class="egg-gage small"><span class="egg great"></span><span class="percent">99%</span></div><!--[2015-12-10]에그포인트적용범위1~3위.end:add_mwpark--><!--[2015-12-11]무비차트평점개편별점UI삭제start:del_mwpark<div class="point"><em>102.0</em></div>[2015-12-11]무비차트평점개편별점UI삭제start:del_mwpark--></div><span class="txt-info"><strong>2017.09.21<span>개봉</span></strong></span><span class="like"><button class="btn-like"value="'+d.movieChart[i].like_count+'">영화찜하기</button><span class="count"><strong><i>'+d.movieChart[i].like_count+'</i><span>명이선택</span></strong><i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i></span><a class="link-reservation"href="/ticket/?MOVIE_CD=20013611&amp;MOVIE_CD_GROUP=20013611">예매</a></span></div></li>'	   
					  );
				  }
				  
				  $('#movie_chart').append('<ol id="ol2"></ol>');
				  
				  for(var i=4;i<7;i++){
					  $('#ol2').append(
							  '<li><div class="box-image"><strong class="rank">No.'+(i+1)+'</strong><span class="thumb-image"><a href="'+sessionStorage.getItem('ctx')+'/parameter?movieNum='+(i+1)+'"><img src="'+d.movieChart[i].poster+'"alt="아이 캔 스피크 포스터"onerror="errorImage(this)"></a><span class="ico-grade grade-'+d.movieChart[i].age_limit+'">12세이상</span></span><span class="screentype"></span></div><div class="box-contents"><strong class="title">'+d.movieChart[i].name+'</strong><div class="score"><strong class="percent">예매율<span>'+d.movieChart[i].reserve_rate+'%</span></strong><!--[2015-12-10]에그포인트적용범위1~3위.start:add_mwpark--><div class="egg-gage small"><span class="egg great"></span><span class="percent">99%</span></div><!--[2015-12-10]에그포인트적용범위1~3위.end:add_mwpark--><!--[2015-12-11]무비차트평점개편별점UI삭제start:del_mwpark<div class="point"><em>102.0</em></div>[2015-12-11]무비차트평점개편별점UI삭제start:del_mwpark--></div><span class="txt-info"><strong>2017.09.21<span>개봉</span></strong></span><span class="like"><button class="btn-like"value="'+d.movieChart[i].like_count+'">영화찜하기</button><span class="count"><strong><i>'+d.movieChart[i].like_count+'</i><span>명이선택</span></strong><i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i></span><a class="link-reservation"href="/ticket/?MOVIE_CD=20013611&amp;MOVIE_CD_GROUP=20013611">예매</a></span></div></li>'	   
					  );
				  }
			},
			error : (x,s,m)=>{
				alert('에러발생');
			}
		});
		
   }
	 
   
   var data = {
            period: [
                  ["5주전", 0],["4주전", 0],["3주전", 0.000000],["2주전", 0.000000],["1주전", 0.000000]
                  ],
            age: [
               ["10대", 2.7],["20대", 49.3],["30대", 33.7],["40대", 14.3]
               ],
            sex: [
                ["남 45.2%", 45.2],["여 54.8%", 54.8]
                ]

        };


   
/*   //$('#jqplot_period').graphChart({ 'type': 'line', 'data': data.period });
   $('#jqplot_sex').graphChart({ 'type': 'donut', 'data': data.sex });
   $('#jqplot_age').graphChart({ 'type': 'bar', 'data': data.age });
*/
   
   var charmRadarChartData = {
            labels: ["감독연출", "스토리", "영상미", "배우연기", "OST"],/*20160204 5대지수 항목 수정. mwpark*/
            datasets: [
                {
                    fillColor: "rgba(218,215,204,0.2)",
                    strokeColor: "rgba(204,192,184,1)",
                    pointColor: "rgba(151,187,205,1)",
                    pointColorList: ["rgba(253,148,135,1)", "rgba(254,196,69,1)", "rgba(143,189,16664,1)", "rgba(100,169,178,1)", "rgba(178,103,183,1)"],            
                    pointStrokeColor: "#fff",
                    pointHighlightFill: "#fff",
                    pointHighlightStroke: "rgba(151,187,205,1)",
                    data: [46, 38, 62, 65, 39 ]
                }
            ]
        };
    
    if(document.getElementById("charmScore1") != null) {
        window.charmRadar1 = new Chart(document.getElementById("charmScore1").getContext("2d")).Radar(charmRadarChartData, {
                                            pointDot: true,
                                            datasetStrokeWidth: 1,
                                            scaleLabelsPaddingX: 15,
                                            scaleLabelsPaddingY: 3,
                                            pointLabelsPadding: 7,
                                            centerPointPadding: 7,
                                            responsive: false,
                                            animation: false,         
                                            showTooltips: false,
                                            scaleShowLabels: true,
                                            showScale: true,
                                            pointLabelFontFamily: "'Trebuchet MS', Arial, Helvetica, sans-serif",
                                            pointLabelFontSize : 11,
                                            //pointLabelFontColor : "rgba(100,100,100,1)",
                                            pointLabelFontColor : "#000000",
                                            scaleFontFamily: "'Trebuchet MS', Arial, Helvetica, sans-serif",
                                            scaleFontSize: 8,
                                            scaleFontColor: "#777777",
                                            scaleOverride: true,
                                            scaleSteps: 4,
                                            scaleStepWidth: 25,
                                            scaleStartValue: 0});
    }

    //charmScore2       
    if(document.getElementById("charmScore2") != null) {                 
        window.charmRadar2 = new Chart(document.getElementById("charmScore2").getContext("2d")).Radar(charmRadarChartData, {
                                            pointDot: true,
                                            datasetStrokeWidth: 1,
                                            scaleLabelsPaddingX: 15,
                                            scaleLabelsPaddingY: 3,
                                            pointLabelsPadding: 7,
                                            centerPointPadding: 7,
                                            responsive: false,
                                            animation: false,         
                                            showTooltips: false,
                                            scaleShowLabels: true,
                                            showScale: true,
                                            pointLabelFontFamily: "'Trebuchet MS', Arial, Helvetica, sans-serif",
                                            pointLabelFontSize : 11,
                                            //pointLabelFontColor : "rgba(100,100,100,1)",
                                            pointLabelFontColor : "#000000",
                                            scaleFontFamily: "'Trebuchet MS', Arial, Helvetica, sans-serif",
                                            scaleFontSize: 8,
                                            scaleFontColor: "#777777",
                                            scaleOverride: true,
                                            scaleSteps: 4,
                                            scaleStepWidth: 25,
                                            scaleStartValue: 0});
    }

   
   return {
      init : init,
      logic : logic
   };
})();

jehong.session=
{
   init : function(ctx){
      sessionStorage.setItem('ctx',ctx);
      sessionStorage.setItem('js',ctx+"/resources/js");
      sessionStorage.setItem('css',ctx+"/resources/css");
      sessionStorage.setItem('img',ctx+"/resources/img");
   },
   getPath : function(x){
      return sessionStorage.getItem(x);
   }
}