$(function(){
    
   
   var boxImg = $("#imagem-noticia-carregar");
   var imgCar = $("#imagem-carregada");
   
   $(boxImg).click(function(){
      
      $(imgCar).click();
      
   });
   
   $(imgCar).change(function(){
      
    document.getElementById("imagem-noticia-carregar").value = document.getElementById("imagem-carregada").value;
      
   });
   
   var linkPublicar    = $("#publicar-noticia-menu");
   var linkTodasNot    = $("#todas-noticias-menu");
   var linkRascunho    = $("#rascunhos-menu");
   var linkLixeira     = $("#lixeira-menu");
   
   var publicarNoticia = $("#publicar-noticia");
   var todasasNoticias = $("#todas-as-noticias");
   var noticiasRascunh = $("#noticias-rascunhos");
   var noticiasLixeira = $("#noticias-lixeira");
   
   $(todasasNoticias).hide();
   $(noticiasRascunh).hide();
   $(noticiasLixeira).hide();
   
   $(linkPublicar).click(function(){
       
       $(linkTodasNot).removeClass("activeColor");
       $(linkRascunho).removeClass("activeColor");
       $(linkLixeira).removeClass("activeColor");
       $(linkPublicar).addClass("activeColor");
       
       $(todasasNoticias).hide();
	   $(noticiasRascunh).hide();
       $(noticiasLixeira).hide();
       $(publicarNoticia).slideDown(500);
       
   });
   
   $(linkTodasNot).click(function(){
       
       $(linkRascunho).removeClass("activeColor");
       $(linkLixeira).removeClass("activeColor");
       $(linkPublicar).removeClass("activeColor"); 
       $(linkTodasNot).addClass("activeColor");      
       
       $(publicarNoticia).slideUp(300, function(){
           
           $(publicarNoticia).hide();
		   $(noticiasRascunh).hide();
	       $(noticiasLixeira).hide();
           
       });
       $(todasasNoticias).slideDown(500);
       
   });
   
   $(linkRascunho).click(function(){
       
       $(linkTodasNot).removeClass("activeColor");
       $(linkPublicar).removeClass("activeColor");
       $(linkLixeira).removeClass("activeColor");
       $(linkRascunho).addClass("activeColor");
       
       $(todasasNoticias).hide();
       $(publicarNoticia).hide();
       $(noticiasLixeira).hide();
	   $(noticiasRascunh).slideDown(500);
       
   });
   
   $(linkLixeira).click(function(){
       
       $(linkTodasNot).removeClass("activeColor");
       $(linkPublicar).removeClass("activeColor");
       $(linkRascunho).removeClass("activeColor");
       $(linkLixeira).addClass("activeColor");
       
       $(todasasNoticias).hide();
       $(publicarNoticia).hide();
	   $(noticiasRascunh).hide();
       $(noticiasLixeira).slideDown(500);
       
   });
   
});