<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"><html lang="sv" xml:lang="sv" xmlns="http://www.w3.org/1999/xhtml">


<!--  Validating the login session and returning to the index page otherwise -->

<%@ include file="include/validateSession.inc" %>


<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Ragga.nu</title>
			<link href="/css/main.css" media="screen" rel="stylesheet" type="text/css" />	<!--[if lt IE 7 ]> <link href="/css/main.css" media="screen" rel="stylesheet" type="text/css" />
<link href="/css/ie.css" media="screen" rel="stylesheet" type="text/css" /> <![endif]-->
	<!--[if IE 7 ]>    <link href="/css/main.css" media="screen" rel="stylesheet" type="text/css" />
<link href="/css/ie.css" media="screen" rel="stylesheet" type="text/css" />
<link href="/css/ie7.css" media="screen" rel="stylesheet" type="text/css" /><![endif]-->
	<!--[if IE 8 ]>    <link href="/css/main.css" media="screen" rel="stylesheet" type="text/css" />
<link href="/css/ie.css" media="screen" rel="stylesheet" type="text/css" />
<link href="/css/ie7.css" media="screen" rel="stylesheet" type="text/css" />
<link href="/css/ie8.css" media="screen" rel="stylesheet" type="text/css" /><![endif]-->
	<link rel="shortcut icon" href="/favicon.ico"/>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="scripts/swedish.js"></script>
    <script type="text/javascript" src="scripts/ragga.js"></script>
    <script type="text/javascript" src="scripts/profile.js"></script>

</head>
<body class="nojs page-2-1-3">
<script type="text/javascript">document.body.className = document.body.className.replace('nojs','js');</script>
<div class="inner-body">

<div class="page">

    <div class="page-head">

           <%@ include file="include/logo.inc" %>

           <%@ include file="include/nav-main.inc" %>

           <div class="nav-dashboard">

               <%@ include file="include/user-options.inc" %>

   	        </div>
    </div>

	<div class="page-body">

											<div class="base">

	<div id="left_menu">
		<div class="mod-inner mod-fill mod-border" id="settings_leftmenu">
			<div id="raggfaktor">
				<h3>Nuvarande raggfaktor</h3>
				<span class="rf60">60%</span>
				<div class="clear"></div>
				<a href="#" id="help_ragg_factor" class="poptip" title="Ju bättre du fyller i din profil, desto högre raggfaktor får du. Ju högre raggfaktor du har, desto mer attraktiv blir du. Sikta på 100 procent.">Vad är raggfaktor <span class="poptip"><img alt="?" src="/img/questionmark.png" class="questionmark"></span></a>
			</div>
			<div class="clear"></div>
			<ul id="mailbox-menu">
				<li><a class="help support-mail" href="#">Hjälp &amp; Support</a></li>
			</ul>
			<div class="clear"></div>
		</div>
	</div>

	<div id="signup">
		<div class="box padding">
			<div class="column_left">
				<span class="h1">Redigera profil</span>
			</div>
			<div class="column_right">
				<div class="profile-form-navigation numbers">
					<div class="first">
						<a href="/profile/edit/step/1" class="active">1</a>
					</div>
					<div>
						<a href="/profile/edit/step/2" class="">2</a>
					</div>
					<div>
						<a href="/profile/edit/step/3" class="">3</a>
					</div>
					<div>
						<a href="/profile/edit/step/4" class="">4</a>
					</div>

					<div class="last">
						<span>5</span>
					</div>
				</div>
				<div class="clear"></div>
				<div class="chart">
					<div class="bar length_25"></div>
				</div>
				<div class="clear"></div>
				<div class="profile-form-navigation">
					<div class="first">
						<a href="/profile/edit/step/1" class="active">Profilinfo</a>
					</div>
					<div>
						<a href="/profile/edit/step/2" class="">Profiltext</a>
					</div>
					<div>
						<a href="/profile/edit/step/3" class="">Profilbild</a>
					</div>
					<div>
						<a href="/profile/edit/step/4" class="">Mer om mig</a>
					</div>
					<div class="last">
						Börja ragga
					</div>
				</div>
			</div>
			<div class="horizontal-divider line"></div>
										<div>Alla fält är obligatoriska!</div>

			<div class="right_info">
				<img src="/img/info_i.png" alt="" />
				<br />
				<div class="step-1">
								</div>
			</div>

						<form id="basic" enctype="application/x-www-form-urlencoded" action="/profile/process" method="post" class="form-profile"><dl class="zend_form">
<dt id="base-label">&#160;</dt><dd id="base-element"><fieldset id="fieldset-base"><legend>Personligt</legend>
<dl>
<div class="element"><div id="gender-label"><label for="gender" class="form-lbl required">Profiltyp</label></div>
<div>
<select name="gender" id="gender">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Man">Man</option>
    <option value="2" label="Kvinna" selected="selected">Kvinna</option>
    <option value="3" label="Par">Par</option>
</select></div></div>
<div class="element"><div id="sexualOrientation-label"><label for="sexualOrientation" class="form-lbl required">Läggning</label></div>
<div>
<select name="sexualOrientation" id="sexualOrientation">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Hetero" selected="selected">Hetero</option>
    <option value="2" label="Bi">Bi</option>
    <option value="3" label="Gay">Gay</option>
    <option value="4" label="Transvestit">Transvestit</option>
    <option value="5" label="Transsexuell">Transsexuell</option>
</select></div></div>
<div class="element"><div id="status-label"><label for="status" class="form-lbl required">Status</label></div>
<div>
<select name="status" id="status">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Singel" selected="selected">Singel</option>
    <option value="2" label="I förhållande">I förhållande</option>
    <option value="3" label="Förlovad">Förlovad</option>
    <option value="4" label="Gift">Gift</option>
    <option value="5" label="Separerad">Separerad</option>
    <option value="6" label="Skild">Skild</option>
    <option value="7" label="Änka/Änkeman">Änka/Änkeman</option>
</select></div></div>
<div class="element"><div id="born-label"><label for="born" class="form-lbl required">Född</label></div>
<div>
<select name="born[year]" id="born-year">
    <option value="" label="Välj...">Välj...</option>
    <option value="1996" label="1996">1996</option>
    <option value="1995" label="1995">1995</option>
    <option value="1994" label="1994">1994</option>
    <option value="1993" label="1993">1993</option>
    <option value="1992" label="1992">1992</option>
    <option value="1991" label="1991">1991</option>
    <option value="1990" label="1990">1990</option>
    <option value="1989" label="1989">1989</option>
    <option value="1988" label="1988">1988</option>
    <option value="1987" label="1987">1987</option>
    <option value="1986" label="1986">1986</option>
    <option value="1985" label="1985">1985</option>
    <option value="1984" label="1984">1984</option>
    <option value="1983" label="1983">1983</option>
    <option value="1982" label="1982">1982</option>
    <option value="1981" label="1981">1981</option>
    <option value="1980" label="1980">1980</option>
    <option value="1979" label="1979">1979</option>
    <option value="1978" label="1978">1978</option>
    <option value="1977" label="1977" selected="selected">1977</option>
    <option value="1976" label="1976">1976</option>
    <option value="1975" label="1975">1975</option>
    <option value="1974" label="1974">1974</option>
    <option value="1973" label="1973">1973</option>
    <option value="1972" label="1972">1972</option>
    <option value="1971" label="1971">1971</option>
    <option value="1970" label="1970">1970</option>
    <option value="1969" label="1969">1969</option>
    <option value="1968" label="1968">1968</option>
    <option value="1967" label="1967">1967</option>
    <option value="1966" label="1966">1966</option>
    <option value="1965" label="1965">1965</option>
    <option value="1964" label="1964">1964</option>
    <option value="1963" label="1963">1963</option>
    <option value="1962" label="1962">1962</option>
    <option value="1961" label="1961">1961</option>
    <option value="1960" label="1960">1960</option>
    <option value="1959" label="1959">1959</option>
    <option value="1958" label="1958">1958</option>
    <option value="1957" label="1957">1957</option>
    <option value="1956" label="1956">1956</option>
    <option value="1955" label="1955">1955</option>
    <option value="1954" label="1954">1954</option>
    <option value="1953" label="1953">1953</option>
    <option value="1952" label="1952">1952</option>
    <option value="1951" label="1951">1951</option>
    <option value="1950" label="1950">1950</option>
    <option value="1949" label="1949">1949</option>
    <option value="1948" label="1948">1948</option>
    <option value="1947" label="1947">1947</option>
    <option value="1946" label="1946">1946</option>
    <option value="1945" label="1945">1945</option>
    <option value="1944" label="1944">1944</option>
    <option value="1943" label="1943">1943</option>
    <option value="1942" label="1942">1942</option>
    <option value="1941" label="1941">1941</option>
    <option value="1940" label="1940">1940</option>
    <option value="1939" label="1939">1939</option>
    <option value="1938" label="1938">1938</option>
    <option value="1937" label="1937">1937</option>
    <option value="1936" label="1936">1936</option>
    <option value="1935" label="1935">1935</option>
    <option value="1934" label="1934">1934</option>
    <option value="1933" label="1933">1933</option>
    <option value="1932" label="1932">1932</option>
    <option value="1931" label="1931">1931</option>
    <option value="1930" label="1930">1930</option>
    <option value="1929" label="1929">1929</option>
    <option value="1928" label="1928">1928</option>
    <option value="1927" label="1927">1927</option>
    <option value="1926" label="1926">1926</option>
    <option value="1925" label="1925">1925</option>
    <option value="1924" label="1924">1924</option>
    <option value="1923" label="1923">1923</option>
    <option value="1922" label="1922">1922</option>
    <option value="1921" label="1921">1921</option>
    <option value="1920" label="1920">1920</option>
    <option value="1919" label="1919">1919</option>
    <option value="1918" label="1918">1918</option>
    <option value="1917" label="1917">1917</option>
    <option value="1916" label="1916">1916</option>
    <option value="1915" label="1915">1915</option>
</select><select name="born[month]" id="born-month">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="1">1</option>
    <option value="2" label="2">2</option>
    <option value="3" label="3">3</option>
    <option value="4" label="4">4</option>
    <option value="5" label="5">5</option>
    <option value="6" label="6">6</option>
    <option value="7" label="7">7</option>
    <option value="8" label="8">8</option>
    <option value="9" label="9">9</option>
    <option value="10" label="10">10</option>
    <option value="11" label="11">11</option>
    <option value="12" label="12" selected="selected">12</option>
</select><select name="born[day]" id="born-day">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="1">1</option>
    <option value="2" label="2">2</option>
    <option value="3" label="3">3</option>
    <option value="4" label="4">4</option>
    <option value="5" label="5">5</option>
    <option value="6" label="6">6</option>
    <option value="7" label="7">7</option>
    <option value="8" label="8">8</option>
    <option value="9" label="9">9</option>
    <option value="10" label="10" selected="selected">10</option>
    <option value="11" label="11">11</option>
    <option value="12" label="12">12</option>
    <option value="13" label="13">13</option>
    <option value="14" label="14">14</option>
    <option value="15" label="15">15</option>
    <option value="16" label="16">16</option>
    <option value="17" label="17">17</option>
    <option value="18" label="18">18</option>
    <option value="19" label="19">19</option>
    <option value="20" label="20">20</option>
    <option value="21" label="21">21</option>
    <option value="22" label="22">22</option>
    <option value="23" label="23">23</option>
    <option value="24" label="24">24</option>
    <option value="25" label="25">25</option>
    <option value="26" label="26">26</option>
    <option value="27" label="27">27</option>
    <option value="28" label="28">28</option>
    <option value="29" label="29">29</option>
    <option value="30" label="30">30</option>
    <option value="31" label="31">31</option>
</select></div></div></dl></fieldset></dd>
<dt id="location-label">&#160;</dt><dd id="location-element"><fieldset id="fieldset-location"><dl>
<div class="element"><div id="province-label"><label for="province" class="form-lbl required">Län</label></div>
<div>
<select name="province" id="province">
    <option value="" label="Välj...">Välj...</option>
    <option value="9" label="Blekinge">Blekinge</option>
    <option value="16" label="Dalarna">Dalarna</option>
    <option value="8" label="Gotland">Gotland</option>
    <option value="17" label="Gävleborg">Gävleborg</option>
    <option value="11" label="Halland">Halland</option>
    <option value="19" label="Jämtland">Jämtland</option>
    <option value="5" label="Jönköping">Jönköping</option>
    <option value="7" label="Kalmar">Kalmar</option>
    <option value="6" label="Kronoberg">Kronoberg</option>
    <option value="21" label="Norrbotten">Norrbotten</option>
    <option value="10" label="Skåne">Skåne</option>
    <option value="1" label="Stockholm" selected="selected">Stockholm</option>
    <option value="3" label="Södermanland">Södermanland</option>
    <option value="2" label="Uppsala">Uppsala</option>
    <option value="13" label="Värmland">Värmland</option>
    <option value="20" label="Västerbotten">Västerbotten</option>
    <option value="18" label="Västernorrland">Västernorrland</option>
    <option value="15" label="Västmanland">Västmanland</option>
    <option value="12" label="Västra Götaland">Västra Götaland</option>
    <option value="14" label="Örebro">Örebro</option>
    <option value="4" label="Östergötland">Östergötland</option>
</select></div></div>
<div class="element"><div id="county-label"><label for="county" class="form-lbl required">Kommun</label></div>
<div>
<select name="county" id="county">
    <option value="144" label="Ale">Ale</option>
    <option value="170" label="Alingsås">Alingsås</option>
    <option value="71" label="Alvesta">Alvesta</option>
    <option value="55" label="Aneby">Aneby</option>
    <option value="219" label="Arboga">Arboga</option>
    <option value="276" label="Arjeplog">Arjeplog</option>
    <option value="275" label="Arvidsjaur">Arvidsjaur</option>
    <option value="195" label="Arvika">Arvika</option>
    <option value="205" label="Askersund">Askersund</option>
    <option value="233" label="Avesta">Avesta</option>
    <option value="153" label="Bengtsfors">Bengtsfors</option>
    <option value="257" label="Berg">Berg</option>
    <option value="261" label="Bjurholm">Bjurholm</option>
    <option value="100" label="Bjuv">Bjuv</option>
    <option value="286" label="Boden">Boden</option>
    <option value="147" label="Bollebygd">Bollebygd</option>
    <option value="243" label="Bollnäs">Bollnäs</option>
    <option value="87" label="Borgholm">Borgholm</option>
    <option value="230" label="Borlänge">Borlänge</option>
    <option value="171" label="Borås">Borås</option>
    <option value="8" label="Botkyrka">Botkyrka</option>
    <option value="45" label="Boxholm">Boxholm</option>
    <option value="109" label="Bromölla">Bromölla</option>
    <option value="253" label="Bräcke">Bräcke</option>
    <option value="96" label="Burlöv">Burlöv</option>
    <option value="114" label="Båstad">Båstad</option>
    <option value="142" label="Dals-Ed">Dals-Ed</option>
    <option value="15" label="Danderyd">Danderyd</option>
    <option value="200" label="Degerfors">Degerfors</option>
    <option value="268" label="Dorotea">Dorotea</option>
    <option value="182" label="Eda">Eda</option>
    <option value="6" label="Ekerö">Ekerö</option>
    <option value="66" label="Eksjö">Eksjö</option>
    <option value="81" label="Emmaboda">Emmaboda</option>
    <option value="31" label="Enköping">Enköping</option>
    <option value="39" label="Eskilstuna">Eskilstuna</option>
    <option value="120" label="Eslöv">Eslöv</option>
    <option value="149" label="Essunga">Essunga</option>
    <option value="217" label="Fagersta">Fagersta</option>
    <option value="130" label="Falkenberg">Falkenberg</option>
    <option value="180" label="Falköping">Falköping</option>
    <option value="229" label="Falun">Falun</option>
    <option value="193" label="Filipstad">Filipstad</option>
    <option value="47" label="Finspång">Finspång</option>
    <option value="37" label="Flen">Flen</option>
    <option value="187" label="Forshaga">Forshaga</option>
    <option value="143" label="Färgelanda">Färgelanda</option>
    <option value="222" label="Gagnef">Gagnef</option>
    <option value="59" label="Gislaved">Gislaved</option>
    <option value="34" label="Gnesta">Gnesta</option>
    <option value="56" label="Gnosjö">Gnosjö</option>
    <option value="88" label="Gotland">Gotland</option>
    <option value="188" label="Grums">Grums</option>
    <option value="148" label="Grästorp">Grästorp</option>
    <option value="151" label="Gullspång">Gullspång</option>
    <option value="282" label="Gällivare">Gällivare</option>
    <option value="240" label="Gävle">Gävle</option>
    <option value="162" label="Göteborg">Göteborg</option>
    <option value="159" label="Götene">Götene</option>
    <option value="58" label="Habo">Habo</option>
    <option value="194" label="Hagfors">Hagfors</option>
    <option value="199" label="Hallsberg">Hallsberg</option>
    <option value="213" label="Hallstahammar">Hallstahammar</option>
    <option value="128" label="Halmstad">Halmstad</option>
    <option value="185" label="Hammarö">Hammarö</option>
    <option value="10" label="Haninge">Haninge</option>
    <option value="287" label="Haparanda">Haparanda</option>
    <option value="211" label="Heby">Heby</option>
    <option value="232" label="Hedemora">Hedemora</option>
    <option value="118" label="Helsingborg">Helsingborg</option>
    <option value="157" label="Herrljunga">Herrljunga</option>
    <option value="178" label="Hjo">Hjo</option>
    <option value="236" label="Hofors">Hofors</option>
    <option value="7" label="Huddinge">Huddinge</option>
    <option value="244" label="Hudiksvall">Hudiksvall</option>
    <option value="79" label="Hultsfred">Hultsfred</option>
    <option value="127" label="Hylte">Hylte</option>
    <option value="26" label="Håbo">Håbo</option>
    <option value="201" label="Hällefors">Hällefors</option>
    <option value="258" label="Härjedalen">Härjedalen</option>
    <option value="247" label="Härnösand">Härnösand</option>
    <option value="133" label="Härryda">Härryda</option>
    <option value="126" label="Hässleholm">Hässleholm</option>
    <option value="119" label="Höganäs">Höganäs</option>
    <option value="76" label="Högsby">Högsby</option>
    <option value="106" label="Hörby">Hörby</option>
    <option value="107" label="Höör">Höör</option>
    <option value="277" label="Jokkmokk">Jokkmokk</option>
    <option value="5" label="Järfälla">Järfälla</option>
    <option value="61" label="Jönköping">Jönköping</option>
    <option value="279" label="Kalix">Kalix</option>
    <option value="82" label="Kalmar">Kalmar</option>
    <option value="150" label="Karlsborg">Karlsborg</option>
    <option value="92" label="Karlshamn">Karlshamn</option>
    <option value="206" label="Karlskoga">Karlskoga</option>
    <option value="90" label="Karlskrona">Karlskrona</option>
    <option value="191" label="Karlstad">Karlstad</option>
    <option value="38" label="Katrineholm">Katrineholm</option>
    <option value="181" label="Kil">Kil</option>
    <option value="44" label="Kinda">Kinda</option>
    <option value="288" label="Kiruna">Kiruna</option>
    <option value="112" label="Klippan">Klippan</option>
    <option value="28" label="Knivsta">Knivsta</option>
    <option value="249" label="Kramfors">Kramfors</option>
    <option value="123" label="Kristianstad">Kristianstad</option>
    <option value="192" label="Kristinehamn">Kristinehamn</option>
    <option value="254" label="Krokom">Krokom</option>
    <option value="204" label="Kumla">Kumla</option>
    <option value="132" label="Kungsbacka">Kungsbacka</option>
    <option value="212" label="Kungsör">Kungsör</option>
    <option value="164" label="Kungälv">Kungälv</option>
    <option value="101" label="Kävlinge">Kävlinge</option>
    <option value="218" label="Köping">Köping</option>
    <option value="129" label="Laholm">Laholm</option>
    <option value="117" label="Landskrona">Landskrona</option>
    <option value="198" label="Laxå">Laxå</option>
    <option value="197" label="Lekeberg">Lekeberg</option>
    <option value="223" label="Leksand">Leksand</option>
    <option value="145" label="Lerum">Lerum</option>
    <option value="69" label="Lessebo">Lessebo</option>
    <option value="21" label="Lidingö">Lidingö</option>
    <option value="175" label="Lidköping">Lidköping</option>
    <option value="155" label="Lilla Edet">Lilla Edet</option>
    <option value="208" label="Lindesberg">Lindesberg</option>
    <option value="49" label="Linköping">Linköping</option>
    <option value="75" label="Ljungby">Ljungby</option>
    <option value="239" label="Ljusdal">Ljusdal</option>
    <option value="202" label="Ljusnarsberg">Ljusnarsberg</option>
    <option value="102" label="Lomma">Lomma</option>
    <option value="234" label="Ludvika">Ludvika</option>
    <option value="284" label="Luleå">Luleå</option>
    <option value="116" label="Lund">Lund</option>
    <option value="273" label="Lycksele">Lycksele</option>
    <option value="165" label="Lysekil">Lysekil</option>
    <option value="115" label="Malmö">Malmö</option>
    <option value="221" label="Malung">Malung</option>
    <option value="265" label="Malå">Malå</option>
    <option value="174" label="Mariestad">Mariestad</option>
    <option value="73" label="Markaryd">Markaryd</option>
    <option value="154" label="Mellerud">Mellerud</option>
    <option value="54" label="Mjölby">Mjölby</option>
    <option value="228" label="Mora">Mora</option>
    <option value="52" label="Motala">Motala</option>
    <option value="57" label="Mullsjö">Mullsjö</option>
    <option value="140" label="Munkedal">Munkedal</option>
    <option value="186" label="Munkfors">Munkfors</option>
    <option value="163" label="Mölndal">Mölndal</option>
    <option value="80" label="Mönsterås">Mönsterås</option>
    <option value="78" label="Mörbylånga">Mörbylånga</option>
    <option value="19" label="Nacka">Nacka</option>
    <option value="207" label="Nora">Nora</option>
    <option value="214" label="Norberg">Norberg</option>
    <option value="238" label="Nordanstig">Nordanstig</option>
    <option value="260" label="Nordmaling">Nordmaling</option>
    <option value="50" label="Norrköping">Norrköping</option>
    <option value="23" label="Norrtälje">Norrtälje</option>
    <option value="264" label="Norsjö">Norsjö</option>
    <option value="83" label="Nybro">Nybro</option>
    <option value="13" label="Nykvarn">Nykvarn</option>
    <option value="35" label="Nyköping">Nyköping</option>
    <option value="25" label="Nynäshamn">Nynäshamn</option>
    <option value="62" label="Nässjö">Nässjö</option>
    <option value="235" label="Ockelbo">Ockelbo</option>
    <option value="89" label="Olofström">Olofström</option>
    <option value="225" label="Orsa">Orsa</option>
    <option value="138" label="Orust">Orust</option>
    <option value="110" label="Osby">Osby</option>
    <option value="84" label="Oskarshamn">Oskarshamn</option>
    <option value="237" label="Ovanåker">Ovanåker</option>
    <option value="36" label="Oxelösund">Oxelösund</option>
    <option value="281" label="Pajala">Pajala</option>
    <option value="134" label="Partille">Partille</option>
    <option value="111" label="Perstorp">Perstorp</option>
    <option value="285" label="Piteå">Piteå</option>
    <option value="252" label="Ragunda">Ragunda</option>
    <option value="263" label="Robertsfors">Robertsfors</option>
    <option value="91" label="Ronneby">Ronneby</option>
    <option value="224" label="Rättvik">Rättvik</option>
    <option value="216" label="Sala">Sala</option>
    <option value="9" label="Salem">Salem</option>
    <option value="241" label="Sandviken">Sandviken</option>
    <option value="24" label="Sigtuna">Sigtuna</option>
    <option value="124" label="Simrishamn">Simrishamn</option>
    <option value="105" label="Sjöbo">Sjöbo</option>
    <option value="176" label="Skara">Skara</option>
    <option value="274" label="Skellefteå">Skellefteå</option>
    <option value="209" label="Skinnskatteberg">Skinnskatteberg</option>
    <option value="104" label="Skurup">Skurup</option>
    <option value="177" label="Skövde">Skövde</option>
    <option value="227" label="Smedjebacken">Smedjebacken</option>
    <option value="250" label="Sollefteå">Sollefteå</option>
    <option value="16" label="Sollentuna">Sollentuna</option>
    <option value="20" label="Solna">Solna</option>
    <option value="267" label="Sorsele">Sorsele</option>
    <option value="139" label="Sotenäs">Sotenäs</option>
    <option value="95" label="Staffanstorp">Staffanstorp</option>
    <option value="136" label="Stenungsund">Stenungsund</option>
    <option value="17" label="Stockholm" selected="selected">Stockholm</option>
    <option value="184" label="Storfors">Storfors</option>
    <option value="266" label="Storuman">Storuman</option>
    <option value="40" label="Strängnäs">Strängnäs</option>
    <option value="167" label="Strömstad">Strömstad</option>
    <option value="255" label="Strömsund">Strömsund</option>
    <option value="248" label="Sundsvall">Sundsvall</option>
    <option value="190" label="Sunne">Sunne</option>
    <option value="210" label="Surahammar">Surahammar</option>
    <option value="94" label="Svalöv">Svalöv</option>
    <option value="103" label="Svedala">Svedala</option>
    <option value="156" label="Svenljunga">Svenljunga</option>
    <option value="196" label="Säffle">Säffle</option>
    <option value="231" label="Säter">Säter</option>
    <option value="64" label="Sävsjö">Sävsjö</option>
    <option value="242" label="Söderhamn">Söderhamn</option>
    <option value="51" label="Söderköping">Söderköping</option>
    <option value="18" label="Södertälje">Södertälje</option>
    <option value="93" label="Sölvesborg">Sölvesborg</option>
    <option value="141" label="Tanum">Tanum</option>
    <option value="160" label="Tibro">Tibro</option>
    <option value="179" label="Tidaholm">Tidaholm</option>
    <option value="29" label="Tierp">Tierp</option>
    <option value="246" label="Timrå">Timrå</option>
    <option value="70" label="Tingsryd">Tingsryd</option>
    <option value="137" label="Tjörn">Tjörn</option>
    <option value="108" label="Tomelilla">Tomelilla</option>
    <option value="183" label="Torsby">Torsby</option>
    <option value="77" label="Torsås">Torsås</option>
    <option value="152" label="Tranemo">Tranemo</option>
    <option value="67" label="Tranås">Tranås</option>
    <option value="122" label="Trelleborg">Trelleborg</option>
    <option value="169" label="Trollhättan">Trollhättan</option>
    <option value="41" label="Trosa">Trosa</option>
    <option value="11" label="Tyresö">Tyresö</option>
    <option value="14" label="Täby">Täby</option>
    <option value="161" label="Töreboda">Töreboda</option>
    <option value="166" label="Uddevalla">Uddevalla</option>
    <option value="172" label="Ulricehamn">Ulricehamn</option>
    <option value="272" label="Umeå">Umeå</option>
    <option value="12" label="Upplands-Bro">Upplands-Bro</option>
    <option value="1" label="Upplands-Väsby">Upplands-Väsby</option>
    <option value="30" label="Uppsala">Uppsala</option>
    <option value="68" label="Uppvidinge">Uppvidinge</option>
    <option value="53" label="Vadstena">Vadstena</option>
    <option value="60" label="Vaggeryd">Vaggeryd</option>
    <option value="48" label="Valdemarsvik">Valdemarsvik</option>
    <option value="2" label="Vallentuna">Vallentuna</option>
    <option value="220" label="Vansbro">Vansbro</option>
    <option value="158" label="Vara">Vara</option>
    <option value="131" label="Varberg">Varberg</option>
    <option value="22" label="Vaxholm">Vaxholm</option>
    <option value="97" label="Vellinge">Vellinge</option>
    <option value="65" label="Vetlanda">Vetlanda</option>
    <option value="270" label="Vilhelmina">Vilhelmina</option>
    <option value="86" label="Vimmerby">Vimmerby</option>
    <option value="262" label="Vindeln">Vindeln</option>
    <option value="33" label="Vingåker">Vingåker</option>
    <option value="146" label="Vårgårda">Vårgårda</option>
    <option value="168" label="Vänersborg">Vänersborg</option>
    <option value="269" label="Vännäs">Vännäs</option>
    <option value="4" label="Värmdö">Värmdö</option>
    <option value="63" label="Värnamo">Värnamo</option>
    <option value="85" label="Västervik">Västervik</option>
    <option value="215" label="Västerås">Västerås</option>
    <option value="74" label="Växjö">Växjö</option>
    <option value="43" label="Ydre">Ydre</option>
    <option value="121" label="Ystad">Ystad</option>
    <option value="173" label="Åmål">Åmål</option>
    <option value="245" label="Ånge">Ånge</option>
    <option value="256" label="Åre">Åre</option>
    <option value="189" label="Årjäng">Årjäng</option>
    <option value="271" label="Åsele">Åsele</option>
    <option value="113" label="Åstorp">Åstorp</option>
    <option value="46" label="Åtvidaberg">Åtvidaberg</option>
    <option value="72" label="Älmhult">Älmhult</option>
    <option value="226" label="Älvdalen">Älvdalen</option>
    <option value="27" label="Älvkarleby">Älvkarleby</option>
    <option value="283" label="Älvsbyn">Älvsbyn</option>
    <option value="125" label="Ängelholm">Ängelholm</option>
    <option value="135" label="Öckerö">Öckerö</option>
    <option value="42" label="Ödeshög">Ödeshög</option>
    <option value="203" label="Örebro">Örebro</option>
    <option value="99" label="Örkelljunga">Örkelljunga</option>
    <option value="251" label="Örnsköldsvik">Örnsköldsvik</option>
    <option value="259" label="Östersund">Östersund</option>
    <option value="3" label="Österåker">Österåker</option>
    <option value="32" label="Östhammar">Östhammar</option>
    <option value="98" label="Östra Göinge">Östra Göinge</option>
    <option value="278" label="Överkalix">Överkalix</option>
    <option value="280" label="Övertorneå">Övertorneå</option>
</select></div></div></dl></fieldset></dd>
<dt id="aboutme-label">&#160;</dt><dd id="aboutme-element"><fieldset id="fieldset-aboutme"><legend>Mitt utseende</legend>
<dl>
<div class="element"><div id="height-label"><label for="height" class="form-lbl required">Längd</label></div>
<div>
<select name="height" id="height">
    <option value="1" label="&lt;140 cm">&lt;140 cm</option>
    <option value="2" label="140 cm">140 cm</option>
    <option value="3" label="141 cm">141 cm</option>
    <option value="4" label="142 cm">142 cm</option>
    <option value="5" label="143 cm">143 cm</option>
    <option value="6" label="144 cm">144 cm</option>
    <option value="7" label="145
cm">145
cm</option>
    <option value="8" label="146 cm">146 cm</option>
    <option value="9" label="147 cm">147 cm</option>
    <option value="10" label="148 cm">148 cm</option>
    <option value="11" label="149 cm">149 cm</option>
    <option value="12" label="150 cm">150 cm</option>
    <option value="13" label="151 cm">151 cm</option>
    <option value="14" label="152
cm">152
cm</option>
    <option value="15" label="153 cm">153 cm</option>
    <option value="16" label="154 cm">154 cm</option>
    <option value="17" label="155 cm">155 cm</option>
    <option value="18" label="156 cm">156 cm</option>
    <option value="19" label="157 cm">157 cm</option>
    <option value="20" label="158 cm">158 cm</option>
    <option value="21" label="159
cm">159
cm</option>
    <option value="22" label="160 cm">160 cm</option>
    <option value="23" label="161 cm">161 cm</option>
    <option value="24" label="162 cm">162 cm</option>
    <option value="25" label="163 cm">163 cm</option>
    <option value="26" label="164 cm">164 cm</option>
    <option value="27" label="165 cm">165 cm</option>
    <option value="28" label="166
cm">166
cm</option>
    <option value="29" label="167 cm">167 cm</option>
    <option value="30" label="168 cm">168 cm</option>
    <option value="31" label="169 cm">169 cm</option>
    <option value="32" label="170 cm">170 cm</option>
    <option value="33" label="171 cm" selected="selected">171 cm</option>
    <option value="34" label="172 cm">172 cm</option>
    <option value="35" label="173
cm">173
cm</option>
    <option value="36" label="174 cm">174 cm</option>
    <option value="37" label="175 cm">175 cm</option>
    <option value="38" label="176 cm">176 cm</option>
    <option value="39" label="177 cm">177 cm</option>
    <option value="40" label="178 cm">178 cm</option>
    <option value="41" label="179 cm">179 cm</option>
    <option value="42" label="180
cm">180
cm</option>
    <option value="43" label="181 cm">181 cm</option>
    <option value="44" label="182 cm">182 cm</option>
    <option value="45" label="183 cm">183 cm</option>
    <option value="46" label="184 cm">184 cm</option>
    <option value="47" label="185 cm">185 cm</option>
    <option value="48" label="186 cm">186 cm</option>
    <option value="49" label="187
cm">187
cm</option>
    <option value="50" label="188 cm">188 cm</option>
    <option value="51" label="189 cm">189 cm</option>
    <option value="52" label="190 cm">190 cm</option>
    <option value="53" label="191 cm">191 cm</option>
    <option value="54" label="192 cm">192 cm</option>
    <option value="55" label="193 cm">193 cm</option>
    <option value="56" label="194
cm">194
cm</option>
    <option value="57" label="195 cm">195 cm</option>
    <option value="58" label="196 cm">196 cm</option>
    <option value="59" label="197 cm">197 cm</option>
    <option value="60" label="198 cm">198 cm</option>
    <option value="61" label="199 cm">199 cm</option>
    <option value="62" label="200 cm">200 cm</option>
    <option value="63" label="201
cm">201
cm</option>
    <option value="64" label="202 cm">202 cm</option>
    <option value="65" label="203 cm">203 cm</option>
    <option value="66" label="204 cm">204 cm</option>
    <option value="67" label="205 cm">205 cm</option>
    <option value="68" label="&gt;205 cm">&gt;205 cm</option>
</select></div></div>
<div class="element"><div id="weight-label"><label for="weight" class="form-lbl required">Vikt</label></div>
<div>
<select name="weight" id="weight">
    <option value="1" label="&lt;40 kg">&lt;40 kg</option>
    <option value="2" label="40 kg">40 kg</option>
    <option value="3" label="41 kg">41 kg</option>
    <option value="4" label="42 kg">42 kg</option>
    <option value="5" label="43 kg">43 kg</option>
    <option value="6" label="44 kg">44 kg</option>
    <option value="7" label="45 kg">45 kg</option>
    <option value="8" label="46
kg">46
kg</option>
    <option value="9" label="47 kg">47 kg</option>
    <option value="10" label="48 kg">48 kg</option>
    <option value="11" label="49 kg">49 kg</option>
    <option value="12" label="50 kg">50 kg</option>
    <option value="13" label="51 kg">51 kg</option>
    <option value="14" label="52 kg">52 kg</option>
    <option value="15" label="53 kg">53 kg</option>
    <option value="16" label="54 kg">54 kg</option>
    <option value="17" label="55 kg">55 kg</option>
    <option value="18" label="56 kg">56 kg</option>
    <option value="19" label="57
kg">57
kg</option>
    <option value="20" label="58 kg">58 kg</option>
    <option value="21" label="59 kg">59 kg</option>
    <option value="22" label="60 kg">60 kg</option>
    <option value="23" label="61 kg">61 kg</option>
    <option value="24" label="62 kg">62 kg</option>
    <option value="25" label="63 kg">63 kg</option>
    <option value="26" label="64 kg">64 kg</option>
    <option value="27" label="65 kg">65 kg</option>
    <option value="28" label="66 kg">66 kg</option>
    <option value="29" label="67
kg" selected="selected">67
kg</option>
    <option value="30" label="68 kg">68 kg</option>
    <option value="31" label="69 kg">69 kg</option>
    <option value="32" label="70 kg">70 kg</option>
    <option value="33" label="71 kg">71 kg</option>
    <option value="34" label="72 kg">72 kg</option>
    <option value="35" label="73 kg">73 kg</option>
    <option value="36" label="74 kg">74 kg</option>
    <option value="37" label="75 kg">75 kg</option>
    <option value="38" label="76 kg">76 kg</option>
    <option value="39" label="77
kg">77
kg</option>
    <option value="40" label="78 kg">78 kg</option>
    <option value="41" label="79 kg">79 kg</option>
    <option value="42" label="80 kg">80 kg</option>
    <option value="43" label="81 kg">81 kg</option>
    <option value="44" label="82 kg">82 kg</option>
    <option value="45" label="83 kg">83 kg</option>
    <option value="46" label="84 kg">84 kg</option>
    <option value="47" label="85 kg">85 kg</option>
    <option value="48" label="86 kg">86 kg</option>
    <option value="49" label="87
kg">87
kg</option>
    <option value="50" label="88 kg">88 kg</option>
    <option value="51" label="89 kg">89 kg</option>
    <option value="52" label="90 kg">90 kg</option>
    <option value="53" label="91 kg">91 kg</option>
    <option value="54" label="92 kg">92 kg</option>
    <option value="55" label="93 kg">93 kg</option>
    <option value="56" label="94 kg">94 kg</option>
    <option value="57" label="95 kg">95 kg</option>
    <option value="58" label="96 kg">96 kg</option>
    <option value="59" label="97
kg">97
kg</option>
    <option value="60" label="98 kg">98 kg</option>
    <option value="61" label="99 kg">99 kg</option>
    <option value="62" label="100 kg">100 kg</option>
    <option value="63" label="101 kg">101 kg</option>
    <option value="64" label="102 kg">102 kg</option>
    <option value="65" label="103 kg">103 kg</option>
    <option value="66" label="104 kg">104 kg</option>
    <option value="67" label="105 kg">105 kg</option>
    <option value="68" label="106
kg">106
kg</option>
    <option value="69" label="107 kg">107 kg</option>
    <option value="70" label="108 kg">108 kg</option>
    <option value="71" label="109 kg">109 kg</option>
    <option value="72" label="110 kg">110 kg</option>
    <option value="73" label="111 kg">111 kg</option>
    <option value="74" label="112 kg">112 kg</option>
    <option value="75" label="113 kg">113 kg</option>
    <option value="76" label="114 kg">114 kg</option>
    <option value="77" label="115 kg">115 kg</option>
    <option value="78" label="116
kg">116
kg</option>
    <option value="79" label="117 kg">117 kg</option>
    <option value="80" label="118 kg">118 kg</option>
    <option value="81" label="119 kg">119 kg</option>
    <option value="82" label="120 kg">120 kg</option>
    <option value="83" label="121 kg">121 kg</option>
    <option value="84" label="122 kg">122 kg</option>
    <option value="85" label="123 kg">123 kg</option>
    <option value="86" label="124 kg">124 kg</option>
    <option value="87" label="125 kg">125 kg</option>
    <option value="88" label="126
kg">126
kg</option>
    <option value="89" label="127 kg">127 kg</option>
    <option value="90" label="128 kg">128 kg</option>
    <option value="91" label="129 kg">129 kg</option>
    <option value="92" label="130 kg">130 kg</option>
    <option value="93" label="131 kg">131 kg</option>
    <option value="94" label="132 kg">132 kg</option>
    <option value="95" label="133 kg">133 kg</option>
    <option value="96" label="134 kg">134 kg</option>
    <option value="97" label="135 kg">135 kg</option>
    <option value="98" label="136
kg">136
kg</option>
    <option value="99" label="137 kg">137 kg</option>
    <option value="100" label="138 kg">138 kg</option>
    <option value="101" label="139 kg">139 kg</option>
    <option value="102" label="140 kg">140 kg</option>
    <option value="103" label="141 kg">141 kg</option>
    <option value="104" label="142 kg">142 kg</option>
    <option value="105" label="143 kg">143 kg</option>
    <option value="106" label="144 kg">144 kg</option>
    <option value="107" label="145 kg">145 kg</option>
    <option value="108" label="146
kg">146
kg</option>
    <option value="109" label="147 kg">147 kg</option>
    <option value="110" label="148 kg">148 kg</option>
    <option value="111" label="149 kg">149 kg</option>
    <option value="112" label="150 kg">150 kg</option>
    <option value="113" label="&gt;150 kg">&gt;150 kg</option>
</select></div></div>
<div class="element"><div id="bodyType-label"><label for="bodyType" class="form-lbl required">Kroppstyp</label></div>
<div>
<select name="bodyType" id="bodyType">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Vältränad">Vältränad</option>
    <option value="2" label="Muskulös">Muskulös</option>
    <option value="3" label="Slank" selected="selected">Slank</option>
    <option value="4" label="Normalbyggd">Normalbyggd</option>
    <option value="5" label="Sexigt kurvig">Sexigt kurvig</option>
    <option value="6" label="Lite rund">Lite rund</option>
    <option value="7" label="Kraftig">Kraftig</option>
</select></div></div>
<div class="element"><div id="hairColor-label"><label for="hairColor" class="form-lbl required">Hårfärg</label></div>
<div>
<select name="hairColor" id="hairColor">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Vitt">Vitt</option>
    <option value="2" label="Blond">Blond</option>
    <option value="3" label="Mörkblond">Mörkblond</option>
    <option value="4" label="Brunt">Brunt</option>
    <option value="5" label="Ljusbrunt">Ljusbrunt</option>
    <option value="6" label="Mörkbrunt">Mörkbrunt</option>
    <option value="7" label="Kastanjebrunt" selected="selected">Kastanjebrunt</option>
    <option value="8" label="Rött">Rött</option>
    <option value="9" label="Svart">Svart</option>
    <option value="10" label="Grått">Grått</option>
    <option value="11" label="Gråsprängt">Gråsprängt</option>
    <option value="12" label="Silver">Silver</option>
    <option value="13" label="Flintskallig">Flintskallig</option>
    <option value="14" label="Varierar">Varierar</option>
</select></div></div>
<div class="element"><div id="hairStyle-label"><label for="hairStyle" class="form-lbl required">Frisyr</label></div>
<div>
<select name="hairStyle" id="hairStyle">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Backslick">Backslick</option>
    <option value="2" label="Dreads">Dreads</option>
    <option value="3" label="Flintskalle">Flintskalle</option>
    <option value="4" label="Flätor">Flätor</option>
    <option value="5" label="Halvlångt">Halvlångt</option>
    <option value="6" label="Hockeyfrilla">Hockeyfrilla</option>
    <option value="7" label="Hästsvans">Hästsvans</option>
    <option value="8" label="Knullrufs">Knullrufs</option>
    <option value="9" label="Kort">Kort</option>
    <option value="10" label="Lockigt">Lockigt</option>
    <option value="11" label="Långt" selected="selected">Långt</option>
    <option value="12" label="Page">Page</option>
    <option value="13" label="Permanentat">Permanentat</option>
    <option value="14" label="Rakat">Rakat</option>
    <option value="15" label="Snaggat">Snaggat</option>
</select></div></div>
<div class="element"><div id="eyeColor-label"><label for="eyeColor" class="form-lbl required">Ögonfärg</label></div>
<div>
<select name="eyeColor" id="eyeColor">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Blåa">Blåa</option>
    <option value="2" label="Gråblåa">Gråblåa</option>
    <option value="3" label="Gråa">Gråa</option>
    <option value="4" label="Grågröna">Grågröna</option>
    <option value="5" label="Gröna">Gröna</option>
    <option value="6" label="Bruna">Bruna</option>
    <option value="7" label="Nötbruna" selected="selected">Nötbruna</option>
    <option value="8" label="Svarta">Svarta</option>
    <option value="9" label="Melerada">Melerada</option>
    <option value="10" label="Olikfärgade">Olikfärgade</option>
    <option value="11" label="Röda">Röda</option>
</select></div></div></dl></fieldset></dd>
<dt id="searchingfor-label">&#160;</dt><dd id="searchingfor-element"><fieldset id="fieldset-searchingfor"><dl>
<div class="element"><div id="lookingFor-label"><label for="lookingFor" class="form-lbl required">Jag söker</label></div>
<div>
<label for="lookingFor-1"><input type="checkbox" name="lookingFor[]" id="lookingFor-1" value="1" checked="checked" />Man</label><br /><label for="lookingFor-2"><input type="checkbox" name="lookingFor[]" id="lookingFor-2" value="2" />Kvinna</label><br /><label for="lookingFor-3"><input type="checkbox" name="lookingFor[]" id="lookingFor-3" value="3" />Par</label><br /><label for="lookingFor-4"><input type="checkbox" name="lookingFor[]" id="lookingFor-4" value="4" />Inget</label></div></div>
<div class="element"><div id="lookingForAgeMin-label"><label for="lookingForAgeMin" class="form-lbl required">Mellan</label></div>
<div>
<select name="lookingForAgeMin" id="lookingForAgeMin">
    <option value="18" label="18">18</option>
    <option value="19" label="19">19</option>
    <option value="20" label="20">20</option>
    <option value="21" label="21">21</option>
    <option value="22" label="22">22</option>
    <option value="23" label="23">23</option>
    <option value="24" label="24">24</option>
    <option value="25" label="25">25</option>
    <option value="26" label="26">26</option>
    <option value="27" label="27">27</option>
    <option value="28" label="28">28</option>
    <option value="29" label="29">29</option>
    <option value="30" label="30">30</option>
    <option value="31" label="31">31</option>
    <option value="32" label="32">32</option>
    <option value="33" label="33">33</option>
    <option value="34" label="34">34</option>
    <option value="35" label="35" selected="selected">35</option>
    <option value="36" label="36">36</option>
    <option value="37" label="37">37</option>
    <option value="38" label="38">38</option>
    <option value="39" label="39">39</option>
    <option value="40" label="40">40</option>
    <option value="41" label="41">41</option>
    <option value="42" label="42">42</option>
    <option value="43" label="43">43</option>
    <option value="44" label="44">44</option>
    <option value="45" label="45">45</option>
    <option value="46" label="46">46</option>
    <option value="47" label="47">47</option>
    <option value="48" label="48">48</option>
    <option value="49" label="49">49</option>
    <option value="50" label="50">50</option>
    <option value="51" label="51">51</option>
    <option value="52" label="52">52</option>
    <option value="53" label="53">53</option>
    <option value="54" label="54">54</option>
    <option value="55" label="55">55</option>
    <option value="56" label="56">56</option>
    <option value="57" label="57">57</option>
    <option value="58" label="58">58</option>
    <option value="59" label="59">59</option>
    <option value="60" label="60">60</option>
    <option value="61" label="61">61</option>
    <option value="62" label="62">62</option>
    <option value="63" label="63">63</option>
    <option value="64" label="64">64</option>
    <option value="65" label="65">65</option>
    <option value="66" label="66">66</option>
    <option value="67" label="67">67</option>
    <option value="68" label="68">68</option>
    <option value="69" label="69">69</option>
    <option value="70" label="70">70</option>
    <option value="71" label="71">71</option>
    <option value="72" label="72">72</option>
    <option value="73" label="73">73</option>
    <option value="74" label="74">74</option>
    <option value="75" label="75">75</option>
    <option value="76" label="76">76</option>
    <option value="77" label="77">77</option>
    <option value="78" label="78">78</option>
    <option value="79" label="79">79</option>
    <option value="80" label="80">80</option>
    <option value="81" label="81">81</option>
    <option value="82" label="82">82</option>
    <option value="83" label="83">83</option>
    <option value="84" label="84">84</option>
    <option value="85" label="85">85</option>
    <option value="86" label="86">86</option>
    <option value="87" label="87">87</option>
    <option value="88" label="88">88</option>
    <option value="89" label="89">89</option>
    <option value="90" label="90">90</option>
    <option value="91" label="91">91</option>
    <option value="92" label="92">92</option>
    <option value="93" label="93">93</option>
    <option value="94" label="94">94</option>
    <option value="95" label="95">95</option>
    <option value="96" label="96">96</option>
    <option value="97" label="97">97</option>
    <option value="98" label="98">98</option>
    <option value="99" label="99">99</option>
</select></div></div>
<div class="element"><div id="lookingForAgeMax-label"><label for="lookingForAgeMax" class="form-lbl required">och</label></div>
<div>
<select name="lookingForAgeMax" id="lookingForAgeMax">
    <option value="18" label="18">18</option>
    <option value="19" label="19">19</option>
    <option value="20" label="20">20</option>
    <option value="21" label="21">21</option>
    <option value="22" label="22">22</option>
    <option value="23" label="23">23</option>
    <option value="24" label="24">24</option>
    <option value="25" label="25">25</option>
    <option value="26" label="26">26</option>
    <option value="27" label="27">27</option>
    <option value="28" label="28">28</option>
    <option value="29" label="29">29</option>
    <option value="30" label="30">30</option>
    <option value="31" label="31">31</option>
    <option value="32" label="32">32</option>
    <option value="33" label="33">33</option>
    <option value="34" label="34">34</option>
    <option value="35" label="35">35</option>
    <option value="36" label="36">36</option>
    <option value="37" label="37">37</option>
    <option value="38" label="38">38</option>
    <option value="39" label="39">39</option>
    <option value="40" label="40">40</option>
    <option value="41" label="41">41</option>
    <option value="42" label="42">42</option>
    <option value="43" label="43">43</option>
    <option value="44" label="44" selected="selected">44</option>
    <option value="45" label="45">45</option>
    <option value="46" label="46">46</option>
    <option value="47" label="47">47</option>
    <option value="48" label="48">48</option>
    <option value="49" label="49">49</option>
    <option value="50" label="50">50</option>
    <option value="51" label="51">51</option>
    <option value="52" label="52">52</option>
    <option value="53" label="53">53</option>
    <option value="54" label="54">54</option>
    <option value="55" label="55">55</option>
    <option value="56" label="56">56</option>
    <option value="57" label="57">57</option>
    <option value="58" label="58">58</option>
    <option value="59" label="59">59</option>
    <option value="60" label="60">60</option>
    <option value="61" label="61">61</option>
    <option value="62" label="62">62</option>
    <option value="63" label="63">63</option>
    <option value="64" label="64">64</option>
    <option value="65" label="65">65</option>
    <option value="66" label="66">66</option>
    <option value="67" label="67">67</option>
    <option value="68" label="68">68</option>
    <option value="69" label="69">69</option>
    <option value="70" label="70">70</option>
    <option value="71" label="71">71</option>
    <option value="72" label="72">72</option>
    <option value="73" label="73">73</option>
    <option value="74" label="74">74</option>
    <option value="75" label="75">75</option>
    <option value="76" label="76">76</option>
    <option value="77" label="77">77</option>
    <option value="78" label="78">78</option>
    <option value="79" label="79">79</option>
    <option value="80" label="80">80</option>
    <option value="81" label="81">81</option>
    <option value="82" label="82">82</option>
    <option value="83" label="83">83</option>
    <option value="84" label="84">84</option>
    <option value="85" label="85">85</option>
    <option value="86" label="86">86</option>
    <option value="87" label="87">87</option>
    <option value="88" label="88">88</option>
    <option value="89" label="89">89</option>
    <option value="90" label="90">90</option>
    <option value="91" label="91">91</option>
    <option value="92" label="92">92</option>
    <option value="93" label="93">93</option>
    <option value="94" label="94">94</option>
    <option value="95" label="95">95</option>
    <option value="96" label="96">96</option>
    <option value="97" label="97">97</option>
    <option value="98" label="98">98</option>
    <option value="99" label="99">99</option>
</select></div></div>
<div class="element"><div id="sexualInterests-label"><label for="sexualInterests" class="form-lbl required">för</label></div>
<div>
<label for="sexualInterests-1"><input type="checkbox" name="sexualInterests[]" id="sexualInterests-1" value="1" />Vänskap</label><br /><label for="sexualInterests-2"><input type="checkbox" name="sexualInterests[]" id="sexualInterests-2" value="2" />Chat</label><br /><label for="sexualInterests-3"><input type="checkbox" name="sexualInterests[]" id="sexualInterests-3" value="3" checked="checked" />Date</label><br /><label for="sexualInterests-4"><input type="checkbox" name="sexualInterests[]" id="sexualInterests-4" value="4" checked="checked" />Flört</label><br /><label for="sexualInterests-5"><input type="checkbox" name="sexualInterests[]" id="sexualInterests-5" value="5" />Förhållande</label><br /><label for="sexualInterests-6"><input type="checkbox" name="sexualInterests[]" id="sexualInterests-6" value="6" />Romans</label><br /><label for="sexualInterests-7"><input type="checkbox" name="sexualInterests[]" id="sexualInterests-7" value="7" checked="checked" />Sex</label></div></div></dl></fieldset></dd>
<dt id="continue-label">&#160;</dt><dd id="continue-element">
<input type="submit" name="continue" id="continue" value="Spara och öka min raggafaktor" /></dd>
<dt id="done-label">&#160;</dt><dd id="done-element">
<input type="submit" name="done" id="done" value="Spara och börja ragga" class="save-and-close" /></dd>
<dt id="currentForm-label">&#160;</dt>
<dd id="currentForm-element">
<input type="hidden" name="currentForm" value="basic" id="currentForm" /></dd></dl></form>						<div class="clear"></div>

		</div>
	</div>
</div>
			</div>

	<div class="page-foot">
		<div class="page-foot-inner">
			<div id="footer">

	<div class="row">
		<div class="col first">
			<img src="/img/footer_logo.png" width="133" height="75" alt="" class="footer_logo" />
		</div>
		<div class="col">
			<h3>Villkor</h3>
			<p>
				När du registrerar dig som medlem på Ragga.nu godtar du våra <a href="/news/terms">användarvillkor</a> och är själv ansvarig för att ditt uppträdande är i enlighet med dessa samt gällande svensk lagstiftning.
			</p>
		</div>
		<div class="col">
			<h3>Hjälp &amp; info</h3>
			<a href="#" class="support-mail">Hjälp &amp; support</a><br />
			<a href="/news/terms">Användarvillkor</a><br />
		</div>
		<div class="col last">
							<h3>Skapa en annons</h3>
				<a href="/ad/create" class="btn_big"><span>Skapa en annons</span></a>
					            </div>
                            </div>

                            <div class="clear"></div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

