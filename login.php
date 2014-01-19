<?php require_once	'includes/header.php'; ?>

<main>
	
	<section id="content">
		
        <section id="comentarios">
			<form action="acoes/loginLeitor.php" method="post">
            <table border="0" cellpadding="5" cellspacing="5" >
             <tr>
             	<td>Faça login...</td>
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
             	<td><input type="submit" value="Iniciar sessão" /></td>
             </tr>
            </table>            
            </form>            		
        </div>
			
	</section> <!-- Content -->
	
</main>

<?php require_once 'includes/footer.php'; ?>