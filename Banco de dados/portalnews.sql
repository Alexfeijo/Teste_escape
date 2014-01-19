-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 
-- Versão do Servidor: 5.6.12-log
-- Versão do PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `portalnews`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administradores`
--

CREATE TABLE IF NOT EXISTS `administradores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(125) CHARACTER SET utf8 NOT NULL,
  `imgPerfil` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(125) CHARACTER SET utf8 NOT NULL,
  `Usuario` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Senha` varchar(128) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `administradores`
--

INSERT INTO `administradores` (`id`, `Nome`, `imgPerfil`, `Email`, `Usuario`, `Senha`) VALUES
(4, 'Alexandro Flores FeijÃ³', 'Perfil.jpg', 'nenikis@gmail.com', 'nenikis', 'fd9d94340dbd72c11b37ebb0d2a19b4d05e00fd78e4e2ce8923b9ea3a54e900df181cfb112a8a73228d1f3551680e2ad9701a4fcfb248fa7fa77b95180628bb2'),
(5, 'Administrador', 'default.png', 'adm@adm.com.br', 'admin', '6a4e012bd9583858a5a6fa15f58bd86a25af266d3a4344f1ec2018b778f29ba83be86eb45e6dc204e11276f4a99eff4e2144fbe15e756c2c88e999649aae7d94');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome_categoria` varchar(30) NOT NULL,
  PRIMARY KEY (`id_categoria`,`nome_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome_categoria`) VALUES
(1, 'Futebol'),
(2, 'Cinema & Teatro'),
(9, 'EcÃ´nomia'),
(11, 'Mundo dos games');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE IF NOT EXISTS `comentarios` (
  `id_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `id_leitorcom` int(11) DEFAULT NULL,
  `id_noticiacom` int(11) DEFAULT NULL,
  `comentario` text,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id_comentario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id_comentario`, `id_leitorcom`, `id_noticiacom`, `comentario`, `status`) VALUES
(2, 3, 9, 'iUHAIuhaiUSHAIaus\r\nASOIHAoisuhaiSUHUAs\r\nASOUHAisuhaISUHsua\r\naOSHAsiuhaISUAs\r\nASUHAsiuhaSIUHAisu', 1),
(3, 4, 9, 'uhiudhuhuhuihduhadhahshdias', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `leitores`
--

CREATE TABLE IF NOT EXISTS `leitores` (
  `id_leitor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(125) DEFAULT NULL,
  `email` varchar(125) DEFAULT NULL,
  `senha` char(128) DEFAULT NULL,
  PRIMARY KEY (`id_leitor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `leitores`
--

INSERT INTO `leitores` (`id_leitor`, `nome`, `email`, `senha`) VALUES
(3, 'Alexandro Flores', 'nenikis@gmail.com', 'cfd6db2d5800215f84c2455945c233c6f8404554960771a0d444a9905edcaa3aeffa0c32b1ba34bc4156580123f540a412d7822cb07abd164607149850fcc1e6'),
(4, 'ALINE FLORES FEIJO', 'aline.ffeijo@yahoo.com.br', 'fd9d94340dbd72c11b37ebb0d2a19b4d05e00fd78e4e2ce8923b9ea3a54e900df181cfb112a8a73228d1f3551680e2ad9701a4fcfb248fa7fa77b95180628bb2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE IF NOT EXISTS `noticias` (
  `id_noticia` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(125) NOT NULL,
  `conteudo` text NOT NULL,
  `dataPub` date DEFAULT NULL,
  `autorPub` varchar(50) NOT NULL,
  `id_autor` int(11) DEFAULT NULL,
  `tags` text,
  `categoria` int(11) NOT NULL,
  `imagem` varchar(125) DEFAULT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id_noticia`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id_noticia`, `titulo`, `conteudo`, `dataPub`, `autorPub`, `id_autor`, `tags`, `categoria`, `imagem`, `status`) VALUES
(9, 'Com mÃ­ssil de Cristiano Ronaldo, Real atropela o BÃ©tis e se iguala aos lÃ­deres', '<p style="text-align: justify;"><span style="color: #000000;"><strong><span class="example2" style="font-family: tahoma,arial,helvetica,sans-serif; font-size: small;">Gola&ccedil;o do melhor do mundo abre triunfo por 5 a 0 fora de casa. Time de Gareth Bale, Benzema e Di Mar&iacute;a torce agora contra Barcelona e Atl&eacute;tico de Madrid no domingo.</span></strong></span></p>\r\n<p style="text-align: justify;">&nbsp;</p>\r\n<p style="background-color: #ffffff; font-family: arial,helvetica,freesans,sans-serif; font-size: 16px; margin: 0px; outline: 0px none; padding: 0px 0px 1.5em; color: #555555; letter-spacing: normal; line-height: 25px; word-wrap: break-word; font-style: normal; font-variant: normal; font-weight: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; text-align: justify;"><span style="font-family: tahoma,arial,helvetica,sans-serif; font-size: small; color: #000000;"><span style="font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 25px; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: #ffffff; display: inline ! important; float: none;">Para destruir a retranca do Real B&eacute;tis, uma bomba do melhor do mundo. Do p&eacute; direito de Cristiano Ronaldo</span><span style="font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 25px; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: #ffffff; display: inline ! important; float: none;">saiu um m&iacute;ssil que superou 113 km/h e abriu cedo a goleada do Real Madrid por 5 a 0, em pleno Est&aacute;dio Benito Villamar&iacute;n, neste s&aacute;bado, pela 20&ordf; rodada do Campeonato Espanhol. Gareth Bale, Karim Benzema</span>, &Aacute;ngel Di Mar&iacute;a <span style="font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 25px; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: #ffffff; display: inline ! important; float: none;">e Morata, outros destaques do setor ofensivo merengue, completaram o placar.</span><br style="background-color: #ffffff; font-family: arial, helvetica, freesans, sans-serif; font-size: 16px; margin: 0px; outline: 0px; padding: 0px; -webkit-font-smoothing: antialiased; color: #555555; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-position: initial initial; background-repeat: initial initial;" /><span style="font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 25px; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: #ffffff; display: inline ! important; float: none;">O resultado joga o time do t&eacute;cnico Carlo Ancelotti para o alto da tabela, com 50 pontos. Ao menos por um dia, j&aacute; que Barcelona e Atl&eacute;tico de Madrid s&oacute; entrar&atilde;o em campo no domingo, contra Levante e Sevilla, respectivamente. O Bar&ccedil;a tem 41 gols de saldo, contra 36 dos rivais da capital. Para quem era dado como fora da disputa h&aacute; algumas semanas, trata-se de uma rea&ccedil;&atilde;o e tanto. O B&eacute;tis &eacute; o lanterna, com apenas 11 pontos. </span>Eleito o melhor do mundo na &uacute;ltima segunda-feira, Cristiano Ronaldo brilhou com grande atua&ccedil;&atilde;o. N&atilde;o participou de todos os gols, mas estava a todo o momento com a bola, chamando a responsabilidade e abrindo espa&ccedil;o para seus companheiros. Quando ele contou com liberdade, aos 10 minutos, n&atilde;o perdoou: um chuta&ccedil;o de fora da &aacute;rea deixou o goleiro dinamarqu&ecirc;s Anderson im&oacute;vel. O camisa 7 ainda sofreu a falta que Gareth Bale cobrou com perfei&ccedil;&atilde;o, aos 25. </span><span style="font-family: tahoma,arial,helvetica,sans-serif; font-size: small; color: #000000;">A tarde tamb&eacute;m foi especial para Benzema. O centroavante franc&ecirc;s enfim chegou &agrave; marca dos 100 gols pelo clube ao completar bela jogada de Modric, aos 46 minutos da etapa inicial. O argentino Di Mar&iacute;a, com um chuta&ccedil;o de fora da &aacute;rea aos 17 do segundo tempo, anotou o quarto. O caix&atilde;o foi fechado j&aacute; nos acr&eacute;scimos, com Morata aproveitando uma bicicleta sem dire&ccedil;&atilde;o de Cristiano Ronaldo. Tr&ecirc;s brasileiros estiveram em campo: o lateral-esquerdo Marcelo, pelos visitantes, e o zagueiro Paul&atilde;o e o atacante L&eacute;o Baptist&atilde;o pelos mandantes.</span><span style="font-family: tahoma,arial,helvetica,sans-serif; font-size: small; color: #000000;">O Real Madrid volta a campo j&aacute; na pr&oacute;xima ter&ccedil;a-feira. Enfrentar&aacute; o Espanyol, &agrave;s 18h (de Bras&iacute;lia), em Barcelona, pelo jogo de ida das quartas de final da Copa do Rei. No fim de semana seguinte, receber&aacute; o Granada no primeiro jogo no Santiago Bernab&eacute;u ap&oacute;s a premia&ccedil;&atilde;o de Cristiano Ronaldo. Ind&iacute;cios de mais festa.</span></p>\r\n<p style="text-align: justify;">&nbsp;</p>', '2014-01-18', 'Alexandro Flores FeijÃ³', 4, 'golaÃ§o golaco cr7 cristiano ronaldo', 1, 'cristianoronaldo2-reu.jpg', 1),
(10, 'Bovespa fecha em queda nesta sexta e alcanÃ§a menor nÃ­vel em 5 meses', '<p style="text-align: justify;"><span class="example2" style="font-family: tahoma, arial, helvetica, sans-serif; font-size: small;">Bovespa caiu 1,04%, para 49.181 pontos, menor n&iacute;vel desde agosto.</span><br /><span class="example2" style="font-family: tahoma, arial, helvetica, sans-serif; font-size: small;">No ano, bolsa acumula queda de 4,5%.</span></p>\r\n<p style="text-align: justify;"><span class="example2" style="font-family: tahoma, arial, helvetica, sans-serif; font-size: small;">O mercado brasileiro fechou em queda nesta sexta-feira (17), e alcan&ccedil;ou a menor cota&ccedil;&atilde;o desde agosto de 2013, puxado por a&ccedil;&otilde;es de construtoras e de bancos, e com o resultado pior que o esperado da "pr&eacute;via do PIB", o IBC-Br.</span></p>\r\n<p class="saibamais componente_materia" style="text-align: justify;"><span class="example2" style="font-family: tahoma, arial, helvetica, sans-serif; font-size: small;">O Ibovespa caiu 1,04%, para 49.181 pontos. &Eacute; o menor n&iacute;vel em cinco meses, desde 8 de agosto do ano passado, quando fechou em 48.928 pontos.</span></p>\r\n<p style="text-align: justify;"><span class="example2" style="font-family: tahoma, arial, helvetica, sans-serif; font-size: small;">Na semana, a bolsa acumula queda de 1,04% e desde o come&ccedil;o do ano j&aacute; caiu 4,52%.</span></p>\r\n<p style="text-align: justify;"><span class="example2" style="font-family: tahoma, arial, helvetica, sans-serif; font-size: small;">O giro financeiro da bolsa no preg&atilde;o totalizou R$ 5,2 bilh&otilde;es.</span></p>\r\n<p style="text-align: justify;"><span class="example2" style="font-family: tahoma, arial, helvetica, sans-serif; font-size: small;">Pr&eacute;via do PIB</span><br /><span class="example2" style="font-family: tahoma, arial, helvetica, sans-serif; font-size: small;">O &Iacute;ndice de Atividade Econ&ocirc;mica do Banco Central&nbsp;(IBC-Br) registrou queda de 0,31%&nbsp;em novembro em rela&ccedil;&atilde;o ao m&ecirc;s anterior. O resultado foi pior que o esperado pelo mercado, que era um recuo de 0,10%. No resultado parcial de 2013, indicador registrou alta de 2,68%.</span></p>\r\n<p style="text-align: justify;"><span class="example2" style="font-family: tahoma, arial, helvetica, sans-serif; font-size: small;">"O resultado (do IBC-Br) ficou bem abaixo do esperado, frustrando assim algumas apostas de alta na atividade do pa&iacute;s, formadas depois do relat&oacute;rio do Banco Mundial, divulgado no in&iacute;cio da semana", afirmou a H.Commcor em boletim matinal, citado pela Reuters. Na ter&ccedil;a-feira, o Banco Mundial projetou crescimento de 2,4% para o Brasil em 2014.</span></p>\r\n<p style="text-align: justify;"><span class="example2" style="font-family: tahoma, arial, helvetica, sans-serif; font-size: small;">O resultado mais fraco que o esperado do IBC-Br mostra que a economia est&aacute; tendo dificuldades para crescer, o que puxou para baixo as a&ccedil;&otilde;es de construtoras, tamb&eacute;m desfavorecidas pelo cen&aacute;rio de alta do juro b&aacute;sico, disse &agrave; Reuters o estrategista-chefe do Banco Mizuho, Luciano Rostagno.</span></p>\r\n<p style="text-align: justify;"><span class="example2" style="font-family: tahoma, arial, helvetica, sans-serif; font-size: small;">"A bolsa rompeu os 50 mil pontos, teve uma queda consider&aacute;vel, e estabilizou abaixo deste patamar, esperando outras not&iacute;cias. No n&iacute;vel em que est&aacute;, qualquer not&iacute;cia negativa tem um efeito forte", afirmou &agrave; Reuters o analista Leandro Silvestrini, da Intrader.</span></p>\r\n<p style="text-align: justify;"><span class="example2" style="font-family: tahoma, arial, helvetica, sans-serif; font-size: small;">A&ccedil;&otilde;es</span><br /><span class="example2" style="font-family: tahoma, arial, helvetica, sans-serif; font-size: small;">A Vale e&nbsp;Ita&uacute; Unibanco, que t&ecirc;m grande peso no Ibovespa, foram as maiores influ&ecirc;ncias de queda do dia.</span></p>\r\n<p style="text-align: justify;"><span class="example2" style="font-family: tahoma, arial, helvetica, sans-serif; font-size: small;">As empresas do setor imobili&aacute;rio&nbsp;PDG Realty&nbsp;e Brookfield apareceram entre as maiores quedas, ao lado da companhia de bens de consumo&nbsp;Hypermarcas&nbsp;e da petroqu&iacute;micaBraskem.</span></p>', '2014-01-18', 'Alexandro Flores FeijÃ³', 4, 'bovespa', 9, 'bovespa.jpg', 1),
(11, '"GTA V" foi o jogo mais vendido no Brasil em 2013; "FIFA" superou "PES"', '<p>Recordista sem compara&ccedil;&otilde;es na ind&uacute;stria do entretenimento,&nbsp;"Grand Theft Auto V"&nbsp;foi o game mais vendido de 2013 no Brasil, superando t&iacute;tulos tradicionais como"God of War",&nbsp;"FIFA"&nbsp;e&nbsp;"Call of Duty".</p>\r\n<p>A informa&ccedil;&atilde;o &eacute; do instituto GfK, que monitora as vendas de games no varejo brasileiro.</p>\r\n<p>Segundo o GfK, 2013 foi um bom ano para o mercado do pa&iacute;s: os f&atilde;s consumiram 12,2% mais jogos do que em 2012. J&aacute; o gasto com os games aumentou em 28,7% na compara&ccedil;&atilde;o com o mesmo per&iacute;odo.</p>\r\n<p>Para o GfK, a explica&ccedil;&atilde;o para o gasto maior est&aacute; no interesse dos consumidores por grandes lan&ccedil;amentos, como "Grand Theft Auto V", "Call of Duty: Ghosts" ou "The Last of Us" ao inv&eacute;s de jogos de cat&aacute;logo, que costumam ter o pre&ccedil;o reduzido.</p>\r\n<p>Outro dado relevante &eacute; que a disputa entre "PES" e "FIFA" se inverteu em 2013: a franquia de futebol da EA vendeu mais do que o concorrente "Pro Evolution Soccer", da Konami. Ainda assim, ambas est&atilde;o presentes entre os mais vendidos, com dois jogos de cada: "FIFA 13" e "PES 2013", lan&ccedil;ados no ano passado, e os recentes "FIFA 14" e "PES 2014".</p>', '2014-01-18', 'Alexandro Flores FeijÃ³', 4, 'gtaV games fifa pes', 11, 'gatv.jpg', 1),
(12, 'Batman vs Superman tem lanÃ§amento adiado em quase um ano', '<p><span>Filme que marcar&aacute; o encontro dos dois super-her&oacute;is da DC Comics agora apenas ser&aacute; lan&ccedil;ado em 2016.</span></p>\r\n<p><span>Se voc&ecirc; est&aacute; ansioso em ver o quanto antes o primeiro encontro entre Batman e Superman nas telonas, esta &eacute; uma p&eacute;ssima not&iacute;cia. A Warner Bros anunciou o adiamento em quase um ano de&nbsp;</span>Batman vs Superman<span>, a sequ&ecirc;ncia do sucesso&nbsp;</span>O Homem de A&ccedil;o<span>. O filme, que inicialmente seria lan&ccedil;ado em 17 de julho de 2015, agora chegar&aacute; aos cinemas em 6 de maio de 2016.</span><br /><br /><span>O motivo inicial para o adiamento &eacute; para que o diretor&nbsp;</span>Zack Snyder<span>&nbsp;e sua equipe tenham um tempo maior para desenvolver os necess&aacute;rios efeitos especiais da produ&ccedil;&atilde;o. Entretanto, rumores apontam que um dos motivos tenha sido uma contus&atilde;o sofrida por&nbsp;</span>Ben Affleck<span>&nbsp;na perna, que obrigou o adiamento das filmagens em seis semanas. Inicialmente&nbsp;</span><span>Batman vs Superman</span><span>&nbsp;come&ccedil;aria a ser rodado em fevereiro deste ano.</span><br /><br /><span>Com a mudan&ccedil;a, maio de 2016 ficar&aacute; marcado por dois lan&ccedil;amentos de peso envolvendo super-her&oacute;is dos quadrinhos, j&aacute; que&nbsp;</span>X-Men: Apocalypse<span>&nbsp;est&aacute; agendado para o dia 27 do mesmo m&ecirc;s. Devido &agrave; mudan&ccedil;a no calend&aacute;rio, a Warner adiou em um m&ecirc;s o lan&ccedil;amento de&nbsp;</span>Pan<span>&nbsp;(t&iacute;tulo provis&oacute;rio), recria&ccedil;&atilde;o da cl&aacute;ssica hist&oacute;ria de Peter Pan dirigida por&nbsp;</span>Joe Wright<span>, que seria lan&ccedil;ado em 26 de junho de 2015 e agora ocupar&aacute; a data antes reservada para</span><span>Batman vs Superman</span><span>.</span></p>', '2014-01-18', 'Alexandro Flores FeijÃ³', 4, 'batman superman', 2, 'batvssuperman.jpg', 1),
(13, 'Novo Ã­ndice mostra desemprego em 7,4% no 2Â° trimestre de 2013, diz IBGE', '<p>Os primeiros resultados da nova Pesquisa Nacional por Amostra de Domic&iacute;lios (Pnad) Cont&iacute;nua, que substituir&aacute; a tradicional Pnad anual e a Pesquisa Mensal de Emprego (PME) do Instituto Brasileiro de Geografia e Estat&iacute;stica (IBGE), indicam que o desemprego no pa&iacute;s ficou em 7,4% no segundo trimestre de 2013. O novo indicador mostra um desemprego maior que o calculado pela PME, que&nbsp;fechou junho daquele ano em 6%.</p>\r\n<p>Na compara&ccedil;&atilde;o da taxa m&eacute;dia anual, os resultados tamb&eacute;m s&atilde;o diferentes. Os dados da Pnad mostraram uma taxa m&eacute;dia de desocupa&ccedil;&atilde;o em 2012 de 7,35%. A PME, que pesquisa a popula&ccedil;&atilde;o acima de dez anos em cinco regi&otilde;es metropolitanas, apontou em 2012 um &iacute;ndice m&eacute;dio menor, de 5,5%.</p>\r\n<p>Na an&aacute;lise trimestral, o desemprego nos tr&ecirc;s primeiros meses de 2013 ficou em 8% &ndash; a PME mostrava taxa de 5,7%.</p>\r\n<p>A diferen&ccedil;a na taxa de desemprego registrada pelas duas pesquisas acontece porque a Pnad Cont&iacute;nua abrange 3,5 mil munic&iacute;pios, enquanto a PME coleta dados apenas em seis regi&otilde;es metropolitanas &ndash; onde o desemprego tende a ser menor.</p>\r\n<p>Para Wasm&aacute;lia Bivar, presidente do&nbsp;IBGE,&nbsp; a Pnad Cont&iacute;nua vai&nbsp; possibilitar &agrave; pol&iacute;tica macroecon&ocirc;mica dispor de informa&ccedil;&otilde;es sobre o mercado de trabalho de todo o territ&oacute;rio nacional e sobre como evoluem os mercados locais.</p>\r\n<p>"A&nbsp; cada tr&ecirc;s meses poderemos divulgar indicadores sobre o trabalho por idade, sexo, n&iacute;vel de instru&ccedil;&atilde;o referentes ao Brasil e &agrave;s 27 unidades da federa&ccedil;&atilde;o", disse, ressaltando que os resultados da Pnad Cont&iacute;nua e da PME n&atilde;o podem ser comparados por usarem metodologia e abrang&ecirc;ncia diferentes.</p>\r\n<p><strong>Mais dados</strong><br />Na an&aacute;lise regional pela Pnad Cont&iacute;nua, as taxas variaram de 4,3%, na Regi&atilde;o Sul, a 10%, no Nordeste. A popula&ccedil;&atilde;o desocupada no Brasil somou 7,3 milh&otilde;es de pessoas no segundo semestre do ano passado, uma queda em rela&ccedil;&atilde;o ao trimestre anterior, quando havia 7,8 milh&otilde;es de desempregados. Na compara&ccedil;&atilde;o com o segundo trimestre de 2012, houve estabilidade.&nbsp;</p>\r\n<p>J&aacute; a popula&ccedil;&atilde;o ocupada passou de 89,4 milh&otilde;es no primeiro trimestre de 2013 para 90,6 milh&otilde;es no segundo trimestre, acima dos 89,6 milh&otilde;es do segundo trimestre de 2012.</p>\r\n<p>No segundo trimestre do ano passado, 76,4% dos empregados do setor privado tinham carteira de trabalho assinada, uma alta frente ao mesmo per&iacute;odo de 2012 (75,5%).</p>\r\n<p>Das 159,1 milh&otilde;es de pessoas com 14 anos ou mais de idade, 61,3 milh&otilde;es (38,5%) estavam fora da for&ccedil;a de trabalho, ou seja, n&atilde;o estavam desocupadas nem ocupadas. O maior percentual foi registrado na Regi&atilde;o Nordeste (43,9%) e o menor, no Centro-Oeste (34,8%).</p>\r\n<div class="saibamais componente_materia"><span data-mce-mark="1"><strong style="font-size: 10px;">Homens e mulheres</strong></span></div>\r\n<p>De abril a junho de 2013, a taxa de desemprego foi de 6% para os homens e de 9,3% para as mulheres. Entre os jovens de 18 a 24 anos, ficou em 15,4%.</p>\r\n<p>Na an&aacute;lise de acordo com a escolaridade, o &iacute;ndice para os trabalhadores com ensino m&eacute;dio incompleto chegou a 12,7% e para os com superior incompleto, a 7,8%. Para aqueles com n&iacute;vel superior completo, o desemprego ficou em 4%.</p>\r\n<p>Conhe&ccedil;a o novo &iacute;ndice<br />Enquanto a PME pesquisa a cada m&ecirc;s a situa&ccedil;&atilde;o do mercado de trabalho em seis regi&otilde;es metropolitanas (Porto Alegre, Belo Horizonte, S&atilde;o Paulo, Rio de Janeiro, Recife e Salvador), a Pnad Cont&iacute;nua vai mostrar o cen&aacute;rio do emprego a cada tr&ecirc;s meses em 3.500 munic&iacute;pios de todas as regi&otilde;es do pa&iacute;s, incluindo &aacute;reas rurais, em um total de 211.344 domic&iacute;lios visitados.</p>\r\n<div id="3084099" class="video componente_materia" data-height="200" data-width="320">\r\n<div class="wm-poster-wrapper">\r\n<div class="wm-poster-inner-wrapper">\r\n<div class="wm-poster-play">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>J&aacute; Pnad (anual, a antiga) pesquisa por ano 1.100 munic&iacute;pios, com 147.203 entrevistas. Ela apresenta as caracter&iacute;sticas demogr&aacute;ficas e socioecon&ocirc;micas da popula&ccedil;&atilde;o (sexo, idade, educa&ccedil;&atilde;o, trabalho e rendimento, e caracter&iacute;sticas dos domic&iacute;lios). Com a amplia&ccedil;&atilde;o da pesquisa sobre emprego para as &aacute;reas rurais, segundo o instituto, a Pnad Cont&iacute;nua vai oferecer resultados in&eacute;ditos.</p>\r\n<p>Com metodologias, escopos e enfoques diferentes, os resultados da Pnad Cont&iacute;nua, da Pnad &ndash; que come&ccedil;ou em 1992 &ndash;, e da PME &ndash; que teve in&iacute;cio em 2002 &ndash; n&atilde;o poder&atilde;o ser comparados.</p>\r\n<p>Ao contr&aacute;rio da PME, que considera a popula&ccedil;&atilde;o em idade ativa acima de 10 anos, a Pnad Cont&iacute;nua leva em conta a for&ccedil;a de trabalho dos indiv&iacute;duos acima de 14 anos, idade permitida pela lei para o trabalho. Cada domic&iacute;lio &eacute; visitado pelos pesquisadores cinco vezes, com visitas a cada dois meses.</p>\r\n<p>J&aacute; a PME vai ao mesmo domic&iacute;lio quatro vezes consecutivas. Entre os 3.500 munic&iacute;pios pesquisados, est&atilde;o as 26 capitais e o Distrito Federal. As principais caracter&iacute;sticas investigadas se referem ao trabalho na semana em que a pesquisa &eacute; feita. Os entrevistadores perguntam sobre ocupa&ccedil;&atilde;o, atividade, posi&ccedil;&atilde;o e categoria de emprego, rendimento mensal do trabalho, horas trabalhadas, local, contribui&ccedil;&atilde;o para o INSS e caracter&iacute;sticas de trabalhos secund&aacute;rios. S&atilde;o questionadas, ainda, as caracter&iacute;sticas do trabalho no per&iacute;odo do ano, a procura por vagas e o rendimento de outras fontes.</p>\r\n<p>Na primeira visita, os pesquisadores ainda fazem questionamentos sobre cuidados pessoais, trabalho volunt&aacute;rio, afazeres dom&eacute;sticos e trabalho para o pr&oacute;prio consumo.</p>\r\n<p>A PME ser&aacute; realizada somente at&eacute; dezembro deste ano, quando ser&aacute; extinta e substitu&iacute;da de vez pela Pnad Cont&iacute;nua.</p>', '2014-01-18', 'Alexandro Flores FeijÃ³', 4, 'desemprego', 9, 'desemprego.jpg', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
