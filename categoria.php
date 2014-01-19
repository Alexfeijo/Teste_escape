<?php require_once	'includes/header.php'; ?>

<main>
	
	<section id="content">
		
		<section id="conteudo">
			
            <?php 
			
			$id_cat = $_GET["id"];
			
			$SQL_NC = mysql_query("SELECT id_noticia, titulo, conteudo, imagem FROM noticias WHERE categoria=$id_cat");
			
			if(mysql_num_rows($SQL_NC) != 0){
			
			while($nc = mysql_fetch_array($SQL_NC)){
			
				$id_news 	   = $nc["id_noticia"];
				$titulo_news   = $nc["titulo"];
				$conteudo_news = $nc["conteudo"];
				$imagem_news   = $nc["imagem"];
			
			?>
            
           <section id="categoria-news">
            <h1><a href="noticia.php?id=<?php echo $id_news;?>"><?php echo $titulo_news; ?></a></h1>
            <section id="imagem-noticia"><img src="paineldecontrole/imagens/imgnoticia/<?php echo $imagem_news;?>" alt="Titulo da Noticia" /></section>
            <p><?php 
			
			echo substr($conteudo_news, 0, 550);
			
			 ?><a href="noticia.php?id=<?php echo $id_news;?>">...Continue Lendo</a></p>
            </section>
            
            <?php }  } else {?>
            
            <section id="categoria-news-error">
            <h1>Não há notícias para essa categoria!</h1>
            </section>
            
            <?php } ?>
            		
		</section> <!-- Conteudo -->
			
			<section id="sidebar"><?php require_once 'includes/sidebar.php'; ?></section>
			
	</section> <!-- Content -->
	
</main>

<?php require_once 'includes/footer.php'; ?>