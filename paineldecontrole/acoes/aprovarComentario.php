<?php 

    require_once '../includes/configuration.php';

	$idCom = $_GET['idUpC'];
	
	mysql_query("UPDATE comentarios SET status=1 WHERE id_comentario=$idCom");
	
	header("Location: ../gerenciar-comentarios.php");

?>