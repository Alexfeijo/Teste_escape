<?php

  require_once '../includes/configuration.php';

  $nome  = $_POST["adm-name"];
  $email = $_POST["adm-email"];
  $user  = $_POST["adm-user"];  
  $pass  = $_POST["adm-pass"];
  $crypt = hash("whirlpool", $pass);
  $imgP  = "default.png";
  
  mysql_query("INSERT INTO administradores (id, Nome, imgPerfil, Email, Usuario, Senha) VALUES (0, '$nome', '$imgP', '$email', '$user', '$crypt')");
  
  header("Location: ../administracao-portal.php");

?>