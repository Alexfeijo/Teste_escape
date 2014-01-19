<?php require_once	'includes/header.php'; ?>

<main>
	
	<section id="content">
		
		<section id="conteudo">
			
			<section id="slider" class="banner">
				<ul>
                <?php 
				
				   $SQL_B = mysql_query("SELECT id_noticia, imagem FROM noticias ORDER BY id_noticia DESC LIMIT 5");
				   
				   while($bn = mysql_fetch_array($SQL_B)){
				
				?>
                <li><a href="noticia.php?id=<?php echo $bn['id_noticia']; ?>"><img src="paineldecontrole/imagens/imgnoticia/<?php echo $bn['imagem'];?>" alt="Postagem 1" /></a></li>
                <?php } ?>
				</ul>
			</section> <!-- Banner -->
			
			<section id="artigos">
				
                <?php 
				
				  $SQL_F = mysql_query("SELECT * FROM categoria WHERE nome_categoria='Futebol'");
				  
				  while($ft = mysql_fetch_array($SQL_F)){
					  $id_ft = $ft['id_categoria'];
				  }
				  
				  $SQL_FN = mysql_query("SELECT * FROM noticias WHERE categoria='$id_ft' ORDER BY id_noticia DESC LIMIT 3");
				  while($ftn = mysql_fetch_array($SQL_FN)){
				
				?>
				<article>
					<h1><a href="categoria.php?id=<?php echo $id_ft; ?>">Futebol</a></h1>
					<img src="paineldecontrole/imagens/imgnoticia/<?php echo $ftn['imagem'];?>" alt="<?php echo $ftn['titulo']; ?>" />
					<h2><a href="noticia.php?id=<?php echo $ftn['id_noticia']; ?>"><?php echo $ftn['titulo']; ?></a></h2>
				</article>                
                <?php } ?>
				
                <?php 
				
				  $SQL_E = mysql_query("SELECT * FROM categoria WHERE nome_categoria='Ecônomia'");
				  
				  while($ec = mysql_fetch_array($SQL_E)){
					  $id_ec = $ec['id_categoria'];
				  }
				  
				  $SQL_EC = mysql_query("SELECT * FROM noticias WHERE categoria='$id_ec' ORDER BY id_noticia DESC LIMIT 3");
				  while($ecn = mysql_fetch_array($SQL_EC)){
				
				?>
				<article>
					<h1><a href="categoria.php?id=<?php echo $id_ec; ?>">Economia</a></h1>
					<img src="paineldecontrole/imagens/imgnoticia/<?php echo $ecn['imagem'];?>" alt="<?php echo $ecn['titulo']; ?>" />
					<h2><a href="noticia.php?id=<?php echo $ecn['id_noticia']; ?>"><?php echo $ecn['titulo']; ?></a></h2>
				</article>                
                <?php } ?>

                <?php 
				
				  $SQL_MG = mysql_query("SELECT * FROM categoria WHERE nome_categoria='Mundo dos games'");
				  
				  while($mg = mysql_fetch_array($SQL_MG)){
					  $id_mg = $mg['id_categoria'];
				  }
				  
				  $SQL_MG = mysql_query("SELECT * FROM noticias WHERE categoria='$id_mg' ORDER BY id_noticia DESC LIMIT 3");
				  while($MGn = mysql_fetch_array($SQL_MG)){
				
				?>
				<article>
					<h1><a href="categoria.php?id=<?php echo $id_mg; ?>">Mundo dos Games</a></h1>
					<img src="paineldecontrole/imagens/imgnoticia/<?php echo $MGn['imagem'];?>" alt="<?php echo $MGn['titulo']; ?>" />
					<h2><a href="noticia.php?id=<?php echo $MGn['id_noticia']; ?>"><?php echo $MGn['titulo']; ?></a></h2>
				</article>                
                <?php } ?>

                <?php 
				
				  $SQL_CT = mysql_query("SELECT * FROM categoria WHERE nome_categoria='Cinema & Teatro'");
				  
				  while($CT = mysql_fetch_array($SQL_CT)){
					  $id_CT = $CT['id_categoria'];
				  }
				  
				  $SQL_CT = mysql_query("SELECT * FROM noticias WHERE categoria='$id_CT' ORDER BY id_noticia DESC LIMIT 3");
				  while($CTn = mysql_fetch_array($SQL_CT)){
				
				?>
				<article>
					<h1><a href="categoria.php?id=<?php echo $id_CT; ?>">Cinema & Teatro</a></h1>
					<img src="paineldecontrole/imagens/imgnoticia/<?php echo $CTn['imagem'];?>" alt="<?php echo $CTn['titulo']; ?>" />
					<h2><a href="noticia.php?id=<?php echo $CTn['id_noticia']; ?>"><?php echo $CTn['titulo']; ?></a></h2>
				</article>                
                <?php } ?>
				
			</section> <!-- Artigos --> 
			
			<section id="publicidade-conteudo"></section> <!-- Publicidade Conteudo -->
		
		</section> <!-- Conteudo -->
			
			<section id="sidebar"><?php require_once 'includes/sidebar.php'; ?></section>
			
	</section> <!-- Content -->
	
</main>

<?php require_once 'includes/footer.php'; ?>