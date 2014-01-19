<?php 

	require_once ('../includes/configuration.php');
	
	// Variaveis de informacoes do leitor
	
	$nomeleitor  = $_POST["nomeLeitor"];
	$emaileitor  = $_POST["emailLeitor"];
	$senhaleitor = hash('Whirlpool', $_POST["senhaLeitor"]);
	
	mysql_query("INSERT INTO leitores (nome, email, senha) VALUES ('$nomeleitor', '$emaileitor', '$senhaleitor')");
	
	header('Location: ../login.php');

?>