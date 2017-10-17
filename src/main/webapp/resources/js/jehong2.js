var jehong2=jehong || {};

jehong2.main=(()=>{
   var init=(ctx)=>{
      alert('detail init!');
      jehong2.session.init(ctx);
      logic();
   };
   var logic=()=>{
     
            
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