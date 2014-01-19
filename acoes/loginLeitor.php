<?php 

	require_once('../includes/configuration.php');
	
	
	$emaileitor  = $_POST["emailLeitor"];
	$senhaleitor = hash('Whirlpool', $_POST["senhaLeitor"]);
	
	$logar = mysql_query("SELECT id_leitor, nome, email, senha FROM leitores WHERE email='$emaileitor' AND senha='$senhaleitor'");
	
	while($ln = mysql_fetch_array($logar)){
		$nomeLeitor = $ln['nome'];	
		$id_leitor  = $ln['id_leitor'];
	}
	
	if($logar !=false){
		
		session_start();
		
		$_SESSION['leitor']      = $nomeLeitor;
		$_SESSION['idLeitor']    = $id_leitor;
		$_SESSION['emailLeitor']  = $emaileitor;
		
		header('Location: ../index.php');	
	} else {
	
		include('../login.php');
		
		echo "<script type='text/javascript'>
			alert('Erro ao logar, email ou senha incorretos!');
			location.href='../login.php';
		</script>";
		
	}
	
?>