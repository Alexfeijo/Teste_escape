<section id="publicidade-sidebar"></section>
<section id="widget-ultimas-noticias">
    
    <h1>Últimas Notícias do Portal</h1>
    
    <ul>
	<?php 
	
	   $SQL_UN = mysql_query("SELECT id_noticia, titulo FROM noticias ORDER BY id_noticia DESC LIMIT 5");
	   
	   while($un = mysql_fetch_array($SQL_UN)){
	
	?>
     <li><a href="noticia.php?id=<?php echo $un['id_noticia']; ?>"><?php echo $un['titulo']; ?></a></li>
    <?php }?>
    </ul>
    </ul>
    
</section>

<section id="widget-categorias-portal">
    
    <h1>Todas as Categorias</h1>
    
    <ul>
	<?php 
	
	   $SQL_TC = mysql_query("SELECT * FROM categoria");
	   
	   while($ct = mysql_fetch_array($SQL_TC)){
	
	?>
     <li><a href="categoria.php?id=<?php echo $ct['id_categoria']; ?>"><?php echo $ct['nome_categoria']; ?></a></li>
    <?php }?>
    </ul>
    
</section>