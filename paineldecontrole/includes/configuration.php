<?php

// Propriedades BD

define("HOST", "localhost");
define("USER", "root");
define("PASS", "");
define("BDNAME", "portalnews");

@mysql_connect(HOST, USER, PASS) or die("Erro no Bando de Dados, contate o administrador");
mysql_select_db(BDNAME) or die("Banco de Dados desconhecido, contate o administrador") ;

?>