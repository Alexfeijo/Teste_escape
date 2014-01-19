<?php require_once	'includes/header.php'; ?>

<main>
	
	<section id="content">
		
        <section id="comentarios">
			<form action="acoes/cadastrarLeitor.php" method="post">
            <table border="0" cellpadding="5" cellspacing="5" >
             <tr>
             	<td>Cadastre-se...</td>
             </tr>
             <tr>
             	<td>Nome</td>
             </tr>
             <tr>
             	<td><input type="text" name="nomeLeitor" placeholder="Digite seu nome completo..." /></td>
             </tr>
             <tr>
             	<td>Email</td>
             </tr>
             <tr>
             	<td><input type="email" name="emailLeitor" placeholder="seuemail@email.com" /></td>
             </tr>
             <tr>
             	<td>Senha</td>
             </tr>
             <tr>
             	<td><input type="password" name="senhaLeitor" placeholder="**********" /></td>
             </tr>
             <tr>
             	<td><input type="submit" value="Completar cadatro" /></td>
             </tr>
            </table>            
            </form>            		
        </div>
			
	</section> <!-- Content -->
	
</main>

<?php require_once 'includes/footer.php'; ?>