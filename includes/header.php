<?php session_start();

@$leitor = $_SESSION['leitor'];
@$id_leitor = $_SESSION['idLeitor'];
@$emailLeitor = $_SESSION['emailLeitor'];

require_once "configuration.php"; ?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8" />	 
<title>Portal NEWS - A sua notícia está aqui.</title>
<link rel="stylesheet" type="text/css" href="css/default.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/screen.css" media="screen" />
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/easySlider1.7.js"></script>
<script type="text/javascript">

   $(function(){
				
				  $("#slider").easySlider({
							
							 auto: true,
								continuos: true
							
						});
				
			});

</script>

</head>

<body>
	<header>
		
		<div id="topo">
			  <div id="logo"><a href="index.php"><img src="imagens/logo.png" alt="Portal NEWS Logo" /></a></div>
					
					<div id="topo-right">
						<?php 
							if(!isset($leitor)){
						?>
						<p>Olá, Seja bem-vindo <a href="login.php">faça login</a> ou <a href="cadastrar.php">cadastre-se</a>.</p>
                        <?php 
							} else {
						?>
                        <p>Olá, <?php echo $leitor; ?>. <a href="acoes/logout.php">Sair da Conta</a>.</p>
                        <?php }?>
						
						<form action="buscar.php" method="GET">
							
							<input type="text" name="busca-organica" id="busca-organica" />
							
						</form>
						
					</div>
			
		</div>
		
	</header>

	<div id="menu">
		
		<nav>
			<ul id="menu-screen">
				<li>Categorias do Site
					<ul>
                    <?php 
					
					  $SQL = mysql_query("SELECT * FROM categoria");
					  
					  while($ln = mysql_fetch_assoc($SQL)){
					
					?>
                    <li><a href="categoria.php?id=<?php echo $ln['id_categoria']; ?>"><?php echo $ln['nome_categoria']; ?></a></li>
                    <?php } ?>
					</ul>
				</li>
				<li>Publicidade</li>
				<li>Quem Somos</li>
				<li>Parceiros</li>
				<li>Atendimento</li>
			</ul>
		</nav>
		
	</div>