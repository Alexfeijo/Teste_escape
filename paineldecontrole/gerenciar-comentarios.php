<?php 

require_once "includes/header.php";

?>

	<main>
		<section id="wrapper">
			
			<section id="content">
			
			<section id="submenu">
                            
                               <?php 
                               
                               $SQL_CMD = mysql_query("SELECT status FROM comentarios WHERE status=1");
                               $SQL_CMA = mysql_query("SELECT status FROM comentarios WHERE status=0");
                               
                               $CNT_CMD = mysql_num_rows($SQL_CMD);
                               $CNT_CMA = mysql_num_rows($SQL_CMA);
                               
                               ?>
                            
				<ul>
					<li id="publicar-noticia-menu" class="activeColor">Comentários Aprovados</li>
					<li id="todas-noticias-menu">Comentários Novos <?php if($CNT_CMA != 0): echo "($CNT_CMA)"; endif; ?></li>
				</ul>
			</section>
			
			<section id="publicar-noticia">
            
            <table cellpadding="0" cellspacing="0" id="comentarios">
                	<tbody>
                    	<tr>
                            <td>Autor</td>
                            <td>Comentário</td>
                            <td>Excluir</td>
                        </tr>
                        <?php 
                        
                            $SQL_TDC = mysql_query("SELECT id_comentario, id_leitorcom, comentario, nome FROM comentarios INNER JOIN leitores ON (comentarios.id_leitorcom = leitores.id_leitor) WHERE status = 1");
                        
                            while($TDC = mysql_fetch_array($SQL_TDC)) {
                                                            
                        ?>
                        <tr>
                            <td><?php echo $TDC['nome']; ?></td>
                            <td><?php echo $TDC['comentario']; ?></td>
                            <td><a href="acoes/excluirComentario.php?idC=<?php echo $TDC['id_comentario']; ?>">Excluir</a></td>
                        </tr>
                        <?php } ?>
                    </tbody>
                </table>
					
				   
			</section> <!-- Publicar Notícia -->
            
            <section id="todas-as-noticias">
            
              	<table cellpadding="0" cellspacing="0">
                	<tbody>
                    	<tr>
                            <td>Autor</td>
                            <td>Comentário</td>
                            <td>Aprovar</td>
                            <td>Excluir</td>
                        </tr>
                        <?php 
                        
                            $SQL_TDC = mysql_query("SELECT id_comentario, id_leitorcom, comentario, nome FROM comentarios INNER JOIN leitores ON (comentarios.id_leitorcom = leitores.id_leitor) WHERE status = 0");
                        
                            while($TDC = mysql_fetch_array($SQL_TDC)) {
                                                            
                        ?>
                        <tr>
                            <td><?php echo $TDC['nome']; ?></td>
                            <td><?php echo $TDC['comentario']; ?></td>
                            <td><a href="acoes/aprovarComentario.php?idUpC=<?php echo $TDC['id_comentario']; ?>">Aprovar Comentario</a></td>
                            <td><a href="acoes/excluirComentario.php?idC=<?php echo $TDC['id_comentario']; ?>">Excluir</a></td>
                        </tr>
                        <?php } ?>
                    </tbody>
                </table>
            
            </section> <!-- Section Todas as Notícias -->
			
			</section> <!-- Content -->
				
		</section> <!-- Wrapper -->
		
	</main>

<?php require "includes/footer.php"; ?>