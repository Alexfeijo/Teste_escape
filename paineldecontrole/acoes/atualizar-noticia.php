<?php

 require_once '../includes/configuration.php';

 $id_nt = $_GET["id_nt_up"];
 
 $titulo     = $_POST["titulo-noticia"];
 $conteudo   = $_POST["conteudo-noticia"];
 $tagsSear   = $_POST["tags-pesquisa"];
 $categoria  = $_POST["categoria-noticia"];
 

 $imagem  = $_FILES["imagem-noticia"];
 $destino = "../imagens/imgnoticia/".$imagem['name'];

 if(isset($_POST["salvar-rascunho"])){
      
     mysql_query("UPDATE noticias SET titulo='$titulo', conteudo='$conteudo', tags='$tagsSear', categoria=$categoria, imagem='".$imagem['name']."' WHERE id_noticia=$id_nt");
     mysql_query("UPDATE noticias SET status=0 WHERE id_noticia=$id_nt");
     if($imagem['type'] == "image/jpeg"){

        move_uploaded_file($imagem['tmp_name'] , $destino);

     }
     
     header ("Location: ../gerenciar-noticia.php");
     
} else {
     
 mysql_query("UPDATE noticias SET titulo='$titulo', conteudo='$conteudo', tags='$tagsSear', categoria=$categoria, imagem='".$imagem['name']."' WHERE id_noticia=$id_nt");   
 mysql_query("UPDATE noticias SET status=1 WHERE id_noticia=$id_nt");   
 if($imagem['type'] == "image/jpeg"){
     
    move_uploaded_file($imagem['tmp_name'] , $destino);
    
 } 
 
 header ("Location: ../gerenciar-noticia.php");
 
}

?>