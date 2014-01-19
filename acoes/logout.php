<?php 
	session_start();
	unset($_SESSION['leitor']);
	session_destroy();
	
	header('Location: ../');
?>