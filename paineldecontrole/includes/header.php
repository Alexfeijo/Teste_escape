<?php session_start(); 

require_once "includes/configuration.php";

require "includes/verificar.php";

@$Usuario = $_SESSION["Usuario"];
@$Senha   = $_SESSION["Senha"];

$SQL = mysql_query("SELECT Nome, imgPerfil FROM administradores WHERE Usuario='$Usuario' AND Senha = '$Senha' ");

?>
<html lang="pt_br">
	<head>
		<meta charset="utf-8" />
		<title>Painel de Controle - Portal NEWS</title>
		<link rel="stylesheet" type="text/css" href="css/default.css" media="screen" />
		<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
		<script type="text/javascript" src="js/default.js"></script>
		<script type="text/javascript" src="js/validacoes.js"></script>

		
	</head>
	
	<body>
		
		<header>
			<div id="topo">
				
				<div id="logo"><img src="imagens/logo.png" alt="Painel de Controle - Portal NEWS" /></div>
				
				<div id="right">
				
					<div id="mensagem">
						<?php 
						
						while($linha = mysql_fetch_assoc($SQL)){
							
							@$nomeUser = $linha['Nome'];
							@$imgpUser = $linha['imgPerfil'];
							
						}
						
						?>
						Olá, <?php echo @$nomeUser; ?> <br />
						<a href="gerenciar-noticia.php">Postar Notícia</a> - <a href="alterar-perfil.php">Alterar Perfil</a> - <a href="logout.php">Sair da Conta</a>
					</div>
					
					<div id="foto-perfil"><img src="imagens/perfil/<?php echo @$imgpUser; ?>" alt="Imagem de Perfil" width="85" height="85" /></div>
					
				</div>
				
			</div>
		</header>
		
		<div id="menu">
			
			<nav>
				<ul>
					<li><a href='index.php'>Página Inicial</a></li>
					<li><a href='gerenciar-noticia.php'>Gerenciar Notícias</a></li>
					<li><a href="gerenciar-comentarios.php">Gerenciar Comentários</a></li>
					<li><a href='gerenciar-categoria.php'>Gerenciar Categorias</a></li>
					<li><a href="administracao-portal.php">Administração do Portal</a></li>
					<li><a href='logout.php'>Sair da Conta</a></li>
				</ul>
			</nav>
			
		</div>
		
