<?php 

   require_once '../includes/configuration.php';

	$idCom = $_GET['idC'];
	
	mysql_query("DELETE FROM comentarios WHERE id_comentario=$idCom");
	
	header("Location: ../gerenciar-comentarios.php");

?>