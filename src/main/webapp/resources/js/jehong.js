var jehong=jehong || {};

jehong.main=(()=>{
   var init=(ctx)=>{
      alert('jehong_main_init!');
      alert('sessionStorage_getItem_movie_seq is '+sessionStorage.getItem('movie_seq'));
      jehong.session.init(ctx);
      logic();
      drawMovieChart();
   };
   var logic=()=>{
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
         context: this,
         success : d=>{
            var date
            /*var calDate=(x)=>{
               date=new Date(x);
               calDate=date.getFullYear()+'년'+(date.getMonth()+1)+'월'+date.getDate()+'일';
               return calDate; 
            };*/
             $('#movie_chart').append('<ol id="ol"></ol>');
              for(var i=0;i<4;i++){
                 date=new Date(d.movieChart[i].release_date);
                 releaseDate=date.getFullYear()+'년'+(date.getMonth()+1)+'월'+date.getDate()+'일';
                 $('#ol').append(
                       '<li><div class="box-image"><strong class="rank">No.'+(i+1)+'</strong><span class="thumb-image"><img class="movie_steelcut" src="'+d.movieChart[i].poster+'" name="'+d.movieChart[i].movie_seq+'"><span class="ico-grade grade-'+d.movieChart[i].age_limit+'">12세이상</span></span><span class="screentype"></span></div><div class="box-contents"><strong class="title">'+d.movieChart[i].name+'</strong><div class="score"><strong class="percent">예매율<span>'+d.movieChart[i].reserve_rate+'%</span></strong><!--[2015-12-10]에그포인트적용범위1~3위.start:add_mwpark--><div class="egg-gage small"><span class="egg great"></span><span class="percent">99%</span></div><!--[2015-12-10]에그포인트적용범위1~3위.end:add_mwpark--><!--[2015-12-11]무비차트평점개편별점UI삭제start:del_mwpark<div class="point"><em>102.0</em></div>[2015-12-11]무비차트평점개편별점UI삭제start:del_mwpark--></div><span class="txt-info"><strong>'+releaseDate+'<span> 개봉</span></strong></span><span class="like"><button class="btn-like"value="'+d.movieChart[i].like_count+'">영화찜하기</button><span class="count"><strong><i>'+d.movieChart[i].like_count+'</i><span>명이선택</span></strong><i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i></span><a class="link-reservation"href="/ticket/?MOVIE_CD=20013611&amp;MOVIE_CD_GROUP=20013611">예매</a></span></div></li>'      
                 );
              }
              
              $('#movie_chart').append('<ol id="ol2"></ol>');
              for(var i=4;i<8;i++){
                 date=new Date(d.movieChart[i].release_date);
                 releaseDate=date.getFullYear()+'년'+(date.getMonth()+1)+'월'+date.getDate()+'일';
                 $('#ol2').append(                       
                       '<li><div class="box-image"><strong class="rank">No.'+(i+1)+'</strong><span class="thumb-image"><img class="movie_steelcut" src="'+d.movieChart[i].poster+'" name="'+d.movieChart[i].movie_seq+'"><span class="ico-grade grade-'+d.movieChart[i].age_limit+'">12세이상</span></span><span class="screentype"></span></div><div class="box-contents"><strong class="title">'+d.movieChart[i].name+'</strong><div class="score"><strong class="percent">예매율<span>'+d.movieChart[i].reserve_rate+'%</span></strong><!--[2015-12-10]에그포인트적용범위1~3위.start:add_mwpark--><div class="egg-gage small"><span class="egg great"></span><span class="percent">99%</span></div><!--[2015-12-10]에그포인트적용범위1~3위.end:add_mwpark--><!--[2015-12-11]무비차트평점개편별점UI삭제start:del_mwpark<div class="point"><em>102.0</em></div>[2015-12-11]무비차트평점개편별점UI삭제start:del_mwpark--></div><span class="txt-info"><strong>'+releaseDate+'<span> 개봉</span></strong></span><span class="like"><button class="btn-like"value="'+d.movieChart[i].like_count+'">영화찜하기</button><span class="count"><strong><i>'+d.movieChart[i].like_count+'</i><span>명이선택</span></strong><i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i></span><a class="link-reservation"href="/ticket/?MOVIE_CD=20013611&amp;MOVIE_CD_GROUP=20013611">예매</a></span></div></li>'      
                 );
              }
              for(var i=0;i<d.movieChart.length;i++){
                 $('#searchList').append(
                       '<li><a href="/search/?query=%ea%b9%80%ea%b4%91%ec%84%9d">'+(i+1)+'. <strong>'+d.movieChart[i].name+'</strong></a><em><span class="new">NEW</span></em></li>'      
                 );
              }
              
              var date=new Date();
               today=date.getFullYear()+'년'+(date.getMonth()+1)+'월'+date.getDate()+'일';
              $('.searchrank').append('<p class="date">'+today+'</p>')
              
              
              
              /*$('.movie_steelcut').click(()=>{
                 alert('$_this is '+$(this).attr("name"));
                 sessionStorage.setItem('movie_seq',$(this).attr("name"));
                 location.href=sessionStorage.getItem('ctx')+'/movieDetail';
                 event.stopPropagation();
              });*/
              $(".movie_steelcut").on("click", function() {
                 alert($(this).attr("name"));
                 sessionStorage.setItem('movie_seq',$(this).attr("name"));
                 location.href=sessionStorage.getItem('ctx')+'/movieDetail';
                 event.stopPropagation();
              });
              
                $('.cols-rank').prepend(
                         '<div class="col-rank-trailer">'
                          +'<h3>인기 트레일러</h3>'
                          +'<div class="sect-popular-trailer">'
                              +'<div id="ctl00_PlaceHolderContent_ucListFooter_wrap_info_trailer" class="wrap-info-trailer">'
                                  +'<!-- 트레일러 이미지 -->'
                                  +'<div class="box-image trailer">'
                                      +'<a href="#" title="새창" class="movie_player_popup" data-gallery-idx="147895">'
                                          +'<span class="thumb-image" name="'+d.movieChart[0].movie_seq+'">'
                                              +'<img src="http://img.youtube.com/vi/'+d.movieChart[0].trailer+'/1.jpg">'
                                              +'<span class="ico-play">영상보기</span>'
                                          +'</span>'
                                      +'</a>'
                                  +'</div>'
                                  +'<div class="box-image">'
                                      +'<a href="/movies/detail-view/?midx=79949">'
                                          +'<span class="thumb-image">'
                                              +'<img src="'+d.movieChart[0].poster+'">'
                                              +'<span class="ico-grade grade-19">청소년 관람불가</span>'
                                          +'</span>'
                                      +'</a>'
                                  +'</div>'
                                  +'<div class="box-contents">'
                                      +'<a href="/movies/detail-view/?midx=79949">'
                                          +'<strong class="title">'+d.movieChart[0].name+'</strong>'
                                      +'</a>'
                                      +'<span class="txt-info">'
                                          +'<em class="genre">'+d.movieChart[0].genre+'</em>'
                                          +'<span>'
                                              +'<i>2017.09.25</i>'
                                              +'<strong>개봉</strong>'
                                              +'<em class="dday">D-1</em>'
                                          +'</span>'
                                      +'</span>'
                                      +'<span class="screentype">'
                                              +'<a class="imax" href="#" title="IMAX 상세정보 바로가기" data-regioncode="07">IMAX</a>'
                                              +'<a class="forDX" href="#" title="4DX 상세정보 바로가기" data-regioncode="4D14">4DX</a>'
                                      +'</span>'
                                  +'</div>'
                              +'</div>'
                              +'<ul>'
                                  +'<li>'
                                      +'<div class="box-image">'
                                          +'<a href="#" title="새창" class="movie_player_popup" data-gallery-idx="147896">'
                                              +'<span class="thumb-image" name ="'+d.movieChart[1].movie_seq+'">'
                                                  +'<img src="http://img.youtube.com/vi/'+d.movieChart[1].trailer+'/1.jpg" style="width:126px;height:71px;">'
                                                  +'<span class="ico-play">영상보기</span>'
                                              +'</span>'
                                          +'</a>'
                                      +'</div>'
                                      +'<div class="box-contents">'
                                          +'<a href="#" title="새창" class="movie_player_popup" data-gallery-idx="147896">'
                                              +'<strong class="title">'+d.movieChart[1].name+'</strong>'
                                          +'</a>'
                                          +'<span class="txt-info">'
                                          +'<em class="genre">'+d.movieChart[1].genre+'</em>'
                                          +'<span>'
                                              +'<i>2017.10.19</i>'
                                              +'<strong>개봉</strong>'
                                              +'<em class="dday">D-23</em>'
                                          +'</span>'
                                      +'</span>'
                                      +'</div>'
                                  +'</li>'
                                  +'<li>'
                                      +'<div class="box-image">'
                                          +'<a href="#" title="새창" class="movie_player_popup" data-gallery-idx="147923">'
                                              +'<span class="thumb-image" name ="'+d.movieChart[2].movie_seq+'">'
                                                  +'<img src="http://img.youtube.com/vi/'+d.movieChart[2].trailer+'/1.jpg" alt="[범죄도시]예고편-범죄도시" style="width:126px;height:71px;">'
                                                  +'<span class="ico-play">영상보기</span>'
                                              +'</span>'
                                          +'</a>'
                                      +'</div>'
                                      +'<div class="box-contents">'
                                          +'<a href="#" title="새창" class="movie_player_popup" data-gallery-idx="147923">'
                                              +'<strong class="title">'+d.movieChart[2].name+'</strong>'
                                          +'</a>'
                                          +'<span class="txt-info">'
                                          +'<em class="genre">'+d.movieChart[2].genre+'</em>'
                                          +'<span>'
                                              +'<i>2017.10.03</i>'
                                              +'<strong>개봉</strong>'
                                              +'<em class="dday">D-7</em>'
                                          +'</span>'
                                      +'</span>'
                                      +'</div>'
                                  +'</li>'
                                  +'<li>'
                                      +'<div class="box-image">'
                                          +'<a href="#" title="새창" class="movie_player_popup" data-gallery-idx="147907">'
                                              +'<span class="thumb-image" name ="'+d.movieChart[3].movie_seq+'">'
                                                  +'<img src="http://img.youtube.com/vi/'+d.movieChart[3].trailer+'/1.jpg" alt="[남한산성]설민석의 스페셜 역사 영상" style="width:126px;height:71px;">'
                                                  +'<span class="ico-play">영상보기</span>'
                                              +'</span>'
                                          +'</a>'
                                      +'</div>'
                                      +'<div class="box-contents">'
                                          +'<a href="#" title="새창" class="movie_player_popup" data-gallery-idx="147907">'
                                              +'<strong class="title">'+d.movieChart[3].name+'</strong>'
                                          +'</a>'
                                          +'<span class="txt-info">'
                                          +'<em class="genre">'+d.movieChart[3].genre+'</em>'
                                          +'<span>'
                                              +'<i>2017.10.03</i>'
                                              +'<strong>개봉</strong>'
                                              +'<em class="dday">D-7</em>'
                                          +'</span>'
                                      +'</span>'
                                      +'</div>'
                                  +'</li>'
                                  +'<li>'
                                      +'<div class="box-image">'
                                          +'<a href="#" title="새창" class="movie_player_popup" data-gallery-idx="147815">'
                                              +'<span class="thumb-image"  name ="'+d.movieChart[4].movie_seq+'">'
                                                  +'<img src="http://img.youtube.com/vi/'+d.movieChart[4].trailer+'/1.jpg" alt="[어 퍼펙트 데이]메인 예고편-어 퍼펙트 데이" style="width:126px;height:71px;">'
                                                  +'<span class="ico-play">영상보기</span>'
                                              +'</span>'
                                          +'</a>'
                                      +'</div>'
                                      +'<div class="box-contents">'
                                          +'<a href="#" title="새창" class="movie_player_popup" data-gallery-idx="147815">'
                                              +'<strong class="title">'+d.movieChart[4].name+'</strong>'
                                          +'</a>'
                                          +'<span class="txt-info">'
                                          +'<em class="genre">'+d.movieChart[4].genre+'</em>'
                                          +'<span>'
                                              +'<i>2017.09.21</i>'
                                              +'<strong>개봉</strong>'
                                          +'</span>'
                                      +'</span>'
                                      +'</div>'
                                  +'</li>'
                              +'</ul>'
                          +'</div><!-- .sect-popular-trailer -->'
                      +'</div><!-- .col-rank-trailer -->'
                      
                      
               
                );
                
                /*$(".movie_steelcut").on("click", function() {
                    alert($(this).attr("name"));
                    sessionStorage.setItem('movie_seq',$(this).attr("name"));
                    location.href=sessionStorage.getItem('ctx')+'/movieDetail';
                    event.stopPropagation();
                 });*/
                $('.thumb-image').on("click", function() {
                    alert($(this).attr("name"));
                    alert('clikck thumb-image !');
                       $('html').append(
                           '<div class="mask" style="position: fixed; left: 0px; top: 0px; width: 100%; height: 100%; z-index: 100; background-color: rgba(0, 0, 0, 0.8);"></div>'
                           +'<div class="layer-wrap" style="margin-top: -355px; margin-left: -510px; position: fixed;" tabindex="0"><div class="popwrap">'
                               +'<div class="sect-layerplayer">'
                                   +'<div class="cols-pop-player">'
                                       +'<h1 class="title" id="movie_player_popup_title"><span class="ico-trailer hd">HD</span>['+d.movieChart[0].name+'] 예고편</h1>'
                                       +'<div class="col-pop-player">'
                                           +'<div class="warp-pop-player" style="position: relative;">'
                                               +'<iframe id="ifrm_movie_player_popup" name="ifrm_movie_player_popup" src="http://www.youtube.com/embed/'+d.movieChart[0].trailer+'" style="width:750px;height:450px;" ameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>'
                                           +'</div><!-- .warp-pop-player -->'
                                           +'<div class="descri-trailer">'
                                               +'<strong class="title">영상설명</strong>'
                                               +'<textarea readonly="readonly" id="movie_player_popup_caption" style="width:750px">'+d.movieChart[0].introduce+'</textarea>'
                                           +'</div>'
                           +'</div><!-- .col-player -->'
                                       +'<div class="col-pop-playerinfo">'
                                           
                                           +'<div id="movie_player_popup_movie_info">'
                                               +'<div class="box-image">'
                                                   +'<a href="/movies/detail-view/?midx=80090" title="신과함께 상세보기 새창">'
                                                   +'<span class="thumb-image"><img src="'+d.movieChart[0].poster+'" alt="신과함께 포스터"><span class="ico-grade grade-none">미정</span></span></a>'
                                               +'</div>'
                                           +'<div class="box-contents">'
                                               +'<a href="/movies/detail-view/?midx=80090" title="신과함께 상세보기 새창"><strong class="title">'+d.movieChart[0].name+'</strong></a>'
                                           +'<span class="txt-info" style="margin-bottom:2px;"><em class="genre">'+d.movieChart[0].name+'</em><span><i>2017.12.20</i><strong>개봉</strong><em class="dday">D-64</em>'
                                           +'</span></span></div></div>'

                                           +'<div class="sect-trailer">'
                                               +'<strong class="title">신규영상</strong>'
                                               +'<ul>'
                                               +'</ul>'
                                           +'</div>'
                                       +'</div><!-- .col-playerinfo -->'
                                   +'</div><!-- .cols-player -->'
                                   +'<button type="button" class="btn-close">닫기</button>'
                           +'    </div>'
                           +'</div></div>'
                     );
                     $('.btn-close').click(()=>{
                         alert('btn-close');
                         $('.mask').remove();
                         $('.layer-wrap').remove();
                       });
                   });
         },
         error : (x,s,m)=>{
            alert('에러가발생');
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