var jehong2=jehong2 || {};

jehong2.main=(()=>{
   var init=(ctx)=>{
      alert('detail init!');
      jehong2.session.init(ctx);
      logic();
   };
   var logic=()=>{
	   $.ajax({
			url : sessionStorage.getItem('ctx')+'/get/movieDetail',
			method : 'POST',
			contentType : 'application/json',
			success : d=>{
				 
				$('#poster').append(
						'<img src="'+d.movieDetail.poster+'">'		 
				);
				$('#movie_title').text(d.movieDetail.name);
				$('#reserve_rate').text(d.movieDetail.reserve_rate+'%');
				$('#score_percent').text(d.movieDetail.score+'%');
				$('#people_count').text(d.movieDetail.people_count);
				$('#staff').text(d.movieDetail.staff);
				$('#genre').text('장르 : '+d.movieDetail.genre);
				$('#release_date').text('개봉날짜 : '+d.movieDetail.release_date);
				$('#like_count').text(d.movieDetail.like_count);
				$('#introduce_text').text(d.movieDetail.introduce);
			},
			error : (x,s,m)=>{
				alert('에러가발생');
			}
		});
	   
            
   };
   
   
   return {
      init : init,
      logic : logic
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