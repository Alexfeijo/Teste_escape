<?php 

	require_once('../includes/configuration.php');
	
	$idN         = $_GET['idN'];
	$idL         = $_GET['idL'];
	$comentario = $_POST['mensagem_comentario'];
	
	mysql_query("INSERT INTO comentarios (id_leitorcom, id_noticiacom, comentario, status) VALUES ($idL, $idN, '$comentario', 0) ") or die(mysql_error());
	
	header("Location: ../");
	
?>