<?php require_once	'includes/header.php'; ?>

<main>
	
	<section id="content">
		
		<section id="conteudo">
        <?php 
		
		  $termo = $_GET["busca-organica"];
		  
		  $busca = mysql_query("SELECT * FROM noticias WHERE tags or titulo LIKE '%$termo%'");
		  
		  if(mysql_num_rows($busca) !=0){
			
		  while($src = mysql_fetch_array($busca)){
		
		?>
        <section id='buscar'>
        <h2><?php echo $src['titulo']; ?></h2>
        <section id="buscar-img"><img src="paineldecontrole/imagens/imgnoticia/<?php echo $src['imagem'];?>" alt="<?php echo $src['titulo']; ?>" /></section>
        <section id="buscar-conteudo"><?php echo substr($src['conteudo'], 0, 550)."..."; ?> <a href="noticia.php?id=<?php echo $src['id_noticia'];?>">Continue Lendo</a></section>
        </section>
        <?php } } else { ?>
        <section id='buscar'>
        <h1>Desculpe mais não foi encontrado nenhuma notícia. Faça sua busca novamente.</h1>
        </section>        
        <?php } ?>
            		
		</section> <!-- Conteudo -->
			
			<section id="sidebar"><?php require_once 'includes/sidebar.php'; ?></section>
			
	</section> <!-- Content -->
	
</main>

<?php require_once 'includes/footer.php'; ?>