var sangyoon2=sangyoon2 || {};

sangyoon2.main=(()=>{
   var init=(ctx)=>{
      sangyoon2.session.init(ctx);
      sangyoon2.logic.findRoad();
   };
   return {
      init : init,
   };
})();

sangyoon2.logic=(()=>{
	
	var findRoad=()=>{
		$('#gangnam').click(()=>{
			 window.open("http://map.daum.net/link/to/대한민국 서울특별시 서초구 역삼1동 강남대로 438,37.5015650,127.0263130",
			"영화관길찾기", "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
		});
		$('#gangbook').click(()=>{
			 window.open("http://map.daum.net/link/to/대한민국 서울특별시 강북구 송중동 도봉로 34 트레지오 쇼핑몰,37.6120540,127.0307200",
			"영화관길찾기", "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
		});
		$('#hongde').click(()=>{
			 window.open("http://map.daum.net/link/to/대한민국 서울특별시 마포구 동교동 양화로 153,37.5564410,126.9226100",
			"영화관길찾기", "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
		});
		$('#shinchon').click(()=>{
			 window.open("http://map.daum.net/link/to/대한민국 서울특별시 서대문구 신촌동 신촌로 129,37.5564820,126.9403270",
			"영화관길찾기", "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
		});
		$('#myungdong').click(()=>{
			 window.open("http://map.daum.net/link/to/대한민국 서울특별시 중구 명동2가 83-5,37.5633410,126.9828580",
			"영화관길찾기", "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
		});
	};
  
     
   return {
	   	findRoad : findRoad
	   }
})();


sangyoon2.session=
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




       
                           
      
   
      