var jehong2=jehong2 || {};

jehong2.main=(()=>{
   var init=(ctx)=>{
      alert('detail init!');
      alert(sessionStorage.getItem('movie_seq'));
      
      var today=''; 
    
      jehong2.session.init(ctx);
      logic();
      drawPicture();
      
   };
   
   var drawPicture=()=>{

	   var data = {
	           period: [
	       ["5주전", 0.000000],["4주전", 0.000000],["3주전", 0.000000],["2주전", 0.000000],["1주전", 0.000000]
	           ],
	           age: [
	       ["10대", 2],["20대", 47.1],["30대", 34.8],["40대", 16.1]
	           ],
	           sex: [
	        ["남 10%", 10],["여 90%", 90]
	           ]

	       };

	   var charmRadarChartData = {
	           labels: ["감독연출", "스토리", "영상미", "배우연기", "OST"],
	           datasets: [
	               {
	                   fillColor: "rgba(218,215,204,0.2)",
	                   strokeColor: "rgba(204,192,184,1)",
	                   pointColor: "rgba(151,187,205,1)",
	                   pointColorList: ["rgba(253,148,135,1)", "rgba(254,196,69,1)", "rgba(143,189,16664,1)", "rgba(100,169,178,1)", "rgba(178,103,183,1)"],            
	                   pointStrokeColor: "#fff",
	                   pointHighlightFill: "#fff",
	                   pointHighlightStroke: "rgba(151,187,205,1)",
	                   data: [41, 48, 24, 93, 12 ]
	               }
	           ]
	       };

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
	   	
	   	
	   	
	   	
	   //donut chart	
	   var htmlBackgroundColor = $('#contaniner').css('background-color');
	   $.jqplot('jqplot_sex', [data.sex], {
	   	  grid: {
	             drawGridLines: false,
	             gridLineColor: htmlBackgroundColor,
	             background: htmlBackgroundColor,
	             borderColor: htmlBackgroundColor,
	             shadow: false
	         },
	   	  seriesDefaults: {
	         renderer:$.jqplot.DonutRenderer,
	         rendererOptions:{
	       	  padding: 18,
	             innerDiameter : 30,
	             sliceMargin: 4,
	             ringMargin : 0,
	             startAngle: 45,
	             shadowOffset : 2,
	             shadowDepth : 3,
	             highlightMouseOver : false,
	             dataLabels : 'label',
	             dataLabelFormatString : '%s',
	             dataLabelNudge : 50,
	             scaleFontFamily: "'Trebuchet MS', Arial, Helvetica, sans-serif",
	             scaleFontSize: 8,
	             scaleFontColor: "#777777",
	             scaleOverride: true,
	             showDataLabels: true
	         }
	       }
	     });
	     
	     
	   //age chart  
	   $.jqplot('jqplot_age', [data.age], {
	   	  grid: {
	           drawGridLines: false,
	           gridLineColor: htmlBackgroundColor,
	           background: htmlBackgroundColor,
	           borderColor: htmlBackgroundColor,
	           shadow: false
	       },
	   	  seriesDefaults: {
	   		  renderer: $.jqplot.BarRenderer,
	             marginTop : '20px',
	             rendererOptions: {
	                 padding : 50,
	                 barPadding : 50,
	                 barMargin : 50,
	                 varyBarColor: true,
	                 highlightMouseOver : false,
	                 barWidth : 30,
	                 marginBottom : 20
	   	    }
	     },
	     axes: {
	         xaxis: {
	             renderer: $.jqplot.CategoryAxisRenderer,
	             rendererOptions : {fontSize : '12px'},
	             labelOptions : {fontSize : '12px'},
	             tickOptions : {formatString: "%s", fontSize : '12px' }
	         },
	         yaxis: {show: false, showTicks : false, tickOptions : {formatString: "%s", fontSize : '12px' }}
	     }
	   });  
	     

   };
   
   var logic=()=>{
	   
      $.ajax({
         url : sessionStorage.getItem('ctx')+'/get/movieDetail',
         method : 'POST',
         data : JSON.stringify({
               'movie_seq' : sessionStorage.getItem('movie_seq'),
            }),
         contentType : 'application/json',
         success : d=>{
             alert(d.movieDetail.name);
             var calDate = function(x){
				  var date= new Date(x);
				  date=date.getFullYear()+'년'+(date.getMonth()+1)+'월'+date.getDate()+'일';
				  return date;
			  };
            $('#poster').append('<img src="'+d.movieDetail.poster+'">');
            $('#movie_title').text(d.movieDetail.name);
            $('#reserve_rate').text(d.movieDetail.reserve_rate+'%');
            $('#score_percent').text(d.movieDetail.score+'%');
            $('#people_count').text(d.movieDetail.people_count);
            $('#staff').text(d.movieDetail.staff);
            $('#genre').text('장르 : '+d.movieDetail.genre);
            $('#release_date').text('개봉날짜 : '+calDate(d.movieDetail.release_date));
            $('#like_count').text(d.movieDetail.like_count);
            $('#introduce_text').text(d.movieDetail.introduce);
            
            $('#poster_img').attr("src",d.movieDetail.poster);
            
            comment(1);         
         },
         error : (x,s,m)=>{
            alert('에러가발생');
         }
      });
      var door='true';
      $('#assessment').click(()=>{
         if(door=='true'){
            $('#comment_content').append(
                  '<div style="height: auto; width: 100%; border:1px solid black;"><textarea rows="5"cols="126"id="content"></textarea></div><button id="comment_submit" class="btn btn-warning">후기등록</button>"'      
            );
            door='false';
            $('#comment_submit').click(()=>{
            	if(sessionStorage.getItem('member_id')==null){
            		location.href=sessionStorage.getItem('ctx')+"/loginpage";
            	}
            	
               var content=$('#content').val();
               
               $.ajax({
                  url : sessionStorage.getItem('ctx')+'/post/comment',
                  method : 'POST',
                  data : JSON.stringify({
                        'member_id' : sessionStorage.getItem('member_id'),
                        'content' : content,
                        'movie_seq' : sessionStorage.getItem('movie_seq')
                     }),
                  contentType : 'application/json',
                  success : d=>{
                      if(d.msg=='success'){
                         alert('후기등록 성공 !');
                         comment(1);
                      }else{
                         alert('후기등록 실패 !');
                      }
                      
                      $('#comment_content').empty();
                      door='true';
                      
                  },
                  error : (x,s,m)=>{
                     alert('에러가발생');
                  }
               });
            });
         }
         
         
      });
      
   };
   
   var comment=(page)=>{
      $('#currentPage').val(page);
      $('#commentDiv').empty();
      page=page*1;
      var startNum=6*page-6;
      var endNum=startNum+5;
      $.ajax({
         url : sessionStorage.getItem('ctx')+'/get/movieDetail',
         method : 'POST',
         data : JSON.stringify({
               'movie_seq' : sessionStorage.getItem('movie_seq')
            }),
         contentType : 'application/json',
         success : d=>{
            if(endNum>d.comment.length){
               endNum=d.comment.length;
            }
            
            var pageCount=parseInt(d.comment.length/6)+1;
            var j=startNum;
            var date='';
            var regdate='';
            var end_ul=(endNum-startNum+1)/2+1;
            for(var i=0;i<end_ul;i++){
               $('#commentDiv').append('<ul id="movie_point_list_container'+i+'" class="point_col2"></ul>');
               regdate=new Date(d.comment[j].regdate);
               date=regdate.getFullYear()+'-'+(regdate.getMonth()+1)+'-'+regdate.getDate();
               if(j<=endNum){
                  $('#movie_point_list_container'+i+'').append(
'<li class=""id="liCommentFirst19394033"data-spoilercnt="0"data-reportcnt="0"><a href="javascript:return false;"class="screen_spoiler">&nbsp;</a><div class="box-image"><span class="thumb-image"><img src="http://img.cgv.co.kr/R2014/images/common/default_profile.gif"alt="사용자 프로필"><span class="profile-mask"></span><div class="theater-sticker"></div></span></div><div class="box-contents"><ul class="writerinfo"><li class="writer-name"><a href="#select_main"class="commentMore"><span class=" egg-icon "></span><span id="member_id'+j+'"></span></a></li><li class="writer-etc"><span class="day">2017.10.03</span></li><li class="point_notify"><div class="notify_wrap"><ul><li><a href="javascript:return false;"class="ico_spoiler"data-commentidx="19394033"data-ismyspoiler="false"data-spoilercnt="0"><span>스포일러신고</span></a></li><li><a href="javascript:return false;"class="ico_swearword"data-commentidx="19394033"data-ismyreport="false"data-reportcnt="0"><span>욕설/비방신고</span></a></li></ul></div></li></ul></div><div class="box-comment"><p id="comment_content'+j+'"></p></div><span class="day">'+date+'</span><span class="like point_like"id="leess9219666900"data-ismygood="false"data-commentidx="19666900"><a id="like_'+d.comment[j].comment_seq+'" onclick="jehong2.main.like('+d.comment[j].comment_seq+')"class="btn_point_like"><span><img id="img_'+d.comment[j].comment_seq+'" src="http://img.cgv.co.kr/R2014/images/point/ico_point_default.png"alt="like"class="like_red"></span><span id="'+d.comment[j].comment_seq+'">'+d.comment[j].comment_like+'</span></a></span></li>'      
                  );
                  $('#member_id'+j).text(d.comment[j].member_id);
                  $('#comment_content'+j).text(d.comment[j].content);
                  j++;
               }
               
               regdate=new Date(d.comment[j].regdate);
               date=regdate.getFullYear()+'-'+(regdate.getMonth()+1)+'-'+regdate.getDate();
               if(j<=endNum){
                  $('#movie_point_list_container'+i+'').append(
'<li class=""id="liCommentFirst19394033"data-spoilercnt="0"data-reportcnt="0"><a href="javascript:return false;"class="screen_spoiler">&nbsp;</a><div class="box-image"><span class="thumb-image"><img src="http://img.cgv.co.kr/R2014/images/common/default_profile.gif"alt="사용자 프로필"><span class="profile-mask"></span><div class="theater-sticker"></div></span></div><div class="box-contents"><ul class="writerinfo"><li class="writer-name"><a href="#select_main"class="commentMore"><span class=" egg-icon "></span><span id="member_id'+j+'"></span></a></li><li class="writer-etc"><span class="day">2017.10.03</span></li><li class="point_notify"><div class="notify_wrap"><ul><li><a href="javascript:return false;"class="ico_spoiler"data-commentidx="19394033"data-ismyspoiler="false"data-spoilercnt="0"><span>스포일러신고</span></a></li><li><a href="javascript:return false;"class="ico_swearword"data-commentidx="19394033"data-ismyreport="false"data-reportcnt="0"><span>욕설/비방신고</span></a></li></ul></div></li></ul></div><div class="box-comment"><p id="comment_content'+j+'"></p></div><span class="day">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+date+'</span><span class="like point_like"id="leess9219666900"data-ismygood="false"data-commentidx="19666900"><a id="like_'+d.comment[j].comment_seq+'" onclick="jehong2.main.like('+d.comment[j].comment_seq+')"class="btn_point_like"><span><img id="img_'+d.comment[j].comment_seq+'" src="http://img.cgv.co.kr/R2014/images/point/ico_point_default.png"alt="like"class="like_red"></span><span id="'+d.comment[j].comment_seq+'">'+d.comment[j].comment_like+'</span></a></span></li>'      
                  );
                  $('#member_id'+j).text(d.comment[j].member_id);
                  $('#comment_content'+j).text(d.comment[j].content);
                  j++;
               }
               
               
            }
            $('#paging_point').empty();
            paging(page,pageCount);
            
            
         },
         error : (x,s,m)=>{
            alert('에러가발생');
         }
      });
      
      
   };
   
   var like=(comment_seq)=>{
      var likeNum=$('#'+comment_seq+'').text()*1+1;
      $('#'+comment_seq+'').text(likeNum);
      $('#like_'+comment_seq+'').removeAttr("onclick");
      $('#img_'+comment_seq+'').attr("src","http://img.cgv.co.kr/R2014/images/point/ico_point_like.png");
      
      $.ajax({
             url : sessionStorage.getItem('ctx')+'/put/like',
             method : 'POST',
             data : JSON.stringify({
               'comment_like' : likeNum,
               'comment_seq' : comment_seq
            }),
             contentType : 'application/json',
             success : d=>{
                
             },
             error : (x,s,m)=>{
                alert('에러가발생');
             }
          });  
     
      
      
      
   };
   var paging=(startPage,pageCount)=>{
      var currentPage=startPage;
      if(startPage%5==0){
         startPage=parseInt(startPage/5-1)*5+1;
      }else{
         startPage=parseInt(startPage/5)*5+1;
      }
      var endPage=startPage*1+4;
      if(endPage>=pageCount*1){
         endPage=pageCount;
      }
      if($('#currentPage').val()*1>=6){
         $('#paging_point').append(
               '<li class="paging-side"><button id="prefPaging" class="btn-paging prev" type="button">이전 5개</button></li>'      
               );
      }
      for(var i=startPage*1;i<=endPage;i++){
         $('#paging_point').append(
         '<li id="li_'+i+'"><a onclick="jehong2.main.comment('+i+')">'+i+'</a></li>'      
         );
      }
      if(startPage+4<pageCount){
         $('#paging_point').append(
               '<li class="paging-side"><button id="nextPaging" class="btn-paging next" type="button">다음 5개</button></li><li class="paging-side"><button class="btn-paging end" type="button">끝</button></li>'      
         );
      }
      
      $('#li_'+currentPage).attr("class","on");
      
      $('#nextPaging').click(()=>{
        var currentPage=$('#currentPage').val()*1;
         var nextPage=$('#currentPage').val()*1;
         if(nextPage%5==0){
            nextPage=nextPage+1;
         }else{
            nextPage=parseInt(nextPage/5)*5+6;
         }
         if(currentPage!=pageCount){
            comment(nextPage);
            $('#paging_point').empty();
            
            paging(nextPage,pageCount);
         }
      });
      
      $('#prefPaging').click(()=>{
           var currentPage=$('#currentPage').val()*1;
            var prefPage=$('#currentPage').val()*1;
            if(prefPage%5==1){
               prefPage=prefPage-5;
            }else{
               prefPage=parseInt(prefPage/5-1)*5+1;
            }
            if(currentPage>=6){
               comment(prefPage);
               $('#paging_point').empty();
               paging(prefPage,pageCount);
            }
         });
      
   };
   
   return {
      init : init,
      logic : logic,
      comment : comment,
      like : like,
      drawPicture : drawPicture
   };
})();

jehong2.session=
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