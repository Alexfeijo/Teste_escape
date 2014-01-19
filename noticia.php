<?php require_once	'includes/header.php'; ?>

<main>
	
	<section id="content">
		
		<section id="conteudo">
			<?php 
			   
			  @$id_rn = ($_GET["id"] != "") ? $_GET["id"] : "";
			  
			  if($id_rn != ""){
			  
			  $SQL_RN = mysql_query("SELECT * FROM noticias INNER JOIN categoria ON (noticias.categoria = categoria.id_categoria) WHERE id_noticia='$id_rn'");
			  
			   while($rn = mysql_fetch_array($SQL_RN)){
				   $data = explode("-", $rn["dataPub"]);
				   $dataEx = $data[2]."/".$data[1]."/".$data[0];
			
			?>
          <section id="info-noticias">
          <h1><?php echo $rn["titulo"]; ?></h1>
          <p>Data publicação: <?php echo $dataEx; ?> Autor: <?php echo $rn["autorPub"]; ?> Categoria: <?php echo $rn["nome_categoria"]; ?></p>
          </section>
          <section id="banner-noticia"><img src="paineldecontrole/imagens/imgnoticia/<?php echo $rn["imagem"];?>" alt="<?php echo $rn["titulo"];?>" /></section>
          <section id="conteudo-noticia"><?php echo $rn["conteudo"];?></section>
          <section id="tags"><strong>Tags:</strong> <?php echo $rn["tags"];?></section>
          <?php 
		  
		  	if(isset($leitor)){
		  	
		  ?>
          <section id="comentarios">
          <form action="acoes/comentar.php?idN=<?php echo $id_rn; ?>&&idL=<?php echo $id_leitor;?>" method="POST">
          <table border="0" cellpadding="0" cellspacing="0">
          <tr>
          	<td>Deixe seu comentário</td>
          </tr>
          <tr>
          	<td>Nome</td>
          </tr>
          <tr>
          	<td><input type="text" required name="nome_comentario" value="<?php echo $leitor; ?>" readonly /></td>
          </tr>
          <tr>
          	<td>Email</td>
          </tr>
          <tr>
          	<td><input type="email" required name="email_comentario" value="<?php echo $emailLeitor; ?>" readonly /></td>
          </tr>
          <tr>
          	<td>Comentário</td>
          </tr>
          <tr>
          	<td><textarea name="mensagem_comentario" required></textarea></td>
          </tr>
          <tr>
          	<td><input type="submit" value="Postar Comentário" /></td>
          </tr>
          </table>
          </form>
          </section>
          <?php } else { ?>
			  
          <section id="comentarios">Deixe seu comentário, <a href="login.php">faça login</a> para comentar.</section>
		  <?php  }
		  
		  $SQL_COM = mysql_query("SELECT * FROM comentarios INNER JOIN leitores ON (comentarios.id_leitorcom = leitores.id_leitor) WHERE id_noticiacom=$id_rn AND status=1");
		  
		  $count 	= mysql_num_rows($SQL_COM);
		  
		  if($count > 0){
		  
		  while($lnc = mysql_fetch_array($SQL_COM)){
		  
		  ?>
          
          <section id="exibircomentarios">
          <h1><?php echo $lnc['nome']; ?></h1>
          <p><?php echo $lnc['comentario']; ?></p>
          </section>
          
          <?php } } else { ?>
			  
              <h3>Não há comentários para esse artigo ainda... Seja o primeiro a comentar.</h3>
			  
		 <?php } } } else { ?>
			
			<h1>A página que você procura não existe!!</h1>
			  
		  <?php }?>
            		
		</section> <!-- Conteudo -->
			
			<section id="sidebar"><?php require_once 'includes/sidebar.php'; ?></section>
			
	</section> <!-- Content -->
	
</main>

<?php require_once 'includes/footer.php'; ?>