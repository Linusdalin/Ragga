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
		<div class="box padding step_no_info laststep">
			<div class="column_left">
				<span class="h1">Redigera profil</span>
			</div>
			<div class="column_right">
				<div class="profile-form-navigation numbers">
					<div class="first">
						<a href="/profile/edit/step/1" class="active">1</a>
					</div>
					<div>
						<a href="/profile/edit/step/2" class="active">2</a>
					</div>
					<div>
						<a href="/profile/edit/step/3" class="active">3</a>
					</div>
					<div>
						<a href="/profile/edit/step/4" class="active">4</a>
					</div>

					<div class="last">
						<span>5</span>
					</div>
				</div>
				<div class="clear"></div>
				<div class="chart">
					<div class="bar length_100"></div>
				</div>
				<div class="clear"></div>
				<div class="profile-form-navigation">
					<div class="first">
						<a href="/profile/edit/step/1" class="active">Profilinfo</a>
					</div>
					<div>
						<a href="/profile/edit/step/2" class="active">Profiltext</a>
					</div>
					<div>
						<a href="/profile/edit/step/3" class="active">Profilbild</a>
					</div>
					<div>
						<a href="/profile/edit/step/4" class="active">Mer om mig</a>
					</div>
					<div class="last">
						Börja ragga
					</div>
				</div>
			</div>
			<div class="horizontal-divider line"></div>

			<div class="right_info">
				<img src="/img/info_i.png" alt="" />
				<br />
				<div class="step-4">
								</div>
			</div>

						<form id="aboutme" enctype="application/x-www-form-urlencoded" action="/profile/process" method="post" class="form-profile"><dl class="zend_form">
<dt id="moreAboutMyLooks-label">&#160;</dt><dd id="moreAboutMyLooks-element"><fieldset id="fieldset-moreAboutMyLooks"><legend>Mer om mitt utseende</legend>
<dl>
<div class="element"><div id="bodypart-label"><label for="bodypart" class="form-lbl optional">Jag är mest nöjd med</label></div>
<div>
<select name="bodypart" id="bodypart">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Allt, jag är perfekt!">Allt, jag är perfekt!</option>
    <option value="2" label="Min utstrålning" selected="selected">Min utstrålning</option>
    <option value="3" label="Mina armar">Mina armar</option>
    <option value="4" label="Mina bröst/mitt bröst">Mina bröst/mitt bröst</option>
    <option value="5" label="Mina ben">Mina ben</option>
    <option value="6" label="Mina fötter">Mina fötter</option>
    <option value="7" label="Min hals">Min hals</option>
    <option value="8" label="Min hud">Min hud</option>
    <option value="9" label="Mina händer">Mina händer</option>
    <option value="10" label="Mitt hår">Mitt hår</option>
    <option value="11" label="Min frisyr">Min frisyr</option>
    <option value="12" label="Mitt leende">Mitt leende</option>
    <option value="13" label="Mina läppar">Mina läppar</option>
    <option value="14" label="Min mage">Min mage</option>
    <option value="15" label="Mina muskler">Mina muskler</option>
    <option value="16" label="Mina naglar">Mina naglar</option>
    <option value="17" label="Min navel">Min navel</option>
    <option value="18" label="Mina öron">Mina öron</option>
    <option value="19" label="Mina ögon">Mina ögon</option>
    <option value="20" label="Min rumpa">Min rumpa</option>
    <option value="21" label="En kroppsdel som inte är med i listan">En kroppsdel som inte är med i listan</option>
    <option value="22" label="Hemligt">Hemligt</option>
</select></div></div>
<div class="element"><div id="bodyHair-label"><label for="bodyHair" class="form-lbl optional">Kroppsbehåring</label></div>
<div>
<select name="bodyHair" id="bodyHair">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Rakad">Rakad</option>
    <option value="2" label="Slät" selected="selected">Slät</option>
    <option value="3" label="Naturlig">Naturlig</option>
    <option value="4" label="Hårig">Hårig</option>
</select></div></div>
<div class="element"><div id="facialHair-label"><label for="facialHair" class="form-lbl optional">Ansiktsbehåring</label></div>
<div>
<select name="facialHair" id="facialHair">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Ingen" selected="selected">Ingen</option>
    <option value="2" label="Slätrakad">Slätrakad</option>
    <option value="3" label="Fjunig">Fjunig</option>
    <option value="4" label="Stubb">Stubb</option>
    <option value="5" label="Mustasch">Mustasch</option>
    <option value="6" label="Getskägg">Getskägg</option>
    <option value="7" label="Helskägg">Helskägg</option>
    <option value="8" label="Den varierar">Den varierar</option>
    <option value="9" label="En personlig skäggstil">En personlig skäggstil</option>
    <option value="10" label="Hemligt">Hemligt</option>
</select></div></div>
<div class="element"><div id="dressingStyle-label"><label for="dressingStyle" class="form-lbl optional">Klädstil</label></div>
<div>
<select name="dressingStyle" id="dressingStyle">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Alternativ">Alternativ</option>
    <option value="2" label="Bohem">Bohem</option>
    <option value="3" label="Etnisk">Etnisk</option>
    <option value="4" label="Emo">Emo</option>
    <option value="5" label="Punk">Punk</option>
    <option value="6" label="Rockig">Rockig</option>
    <option value="7" label="Rap/hip-hop">Rap/hip-hop</option>
    <option value="8" label="Skejt/street">Skejt/street</option>
    <option value="9" label="Casual">Casual</option>
    <option value="10" label="Jeans &amp; t-shirt">Jeans &amp; t-shirt</option>
    <option value="11" label="Stekare">Stekare</option>
    <option value="12" label="Sportig">Sportig</option>
    <option value="13" label="Trendig">Trendig</option>
    <option value="14" label="Klassisk">Klassisk</option>
    <option value="15" label="Office">Office</option>
    <option value="16" label="Prydlig">Prydlig</option>
    <option value="17" label="Lack och läder">Lack och läder</option>
    <option value="18" label="Utmanande">Utmanande</option>
    <option value="19" label="Annan">Annan</option>
    <option value="20" label="Hemligt">Hemligt</option>
</select></div></div>
<div class="element"><div id="tattoos-label"><label for="tattoos" class="form-lbl optional">Tatueringar</label></div>
<div>
<label for="tattoos-1"><input type="radio" name="tattoos" id="tattoos-1" value="1" />Ja</label><br /><label for="tattoos-2"><input type="radio" name="tattoos" id="tattoos-2" value="2" checked="checked" />Nej</label></div></div>
<div class="element"><div id="piercings-label"><label for="piercings" class="form-lbl optional">Piercingar</label></div>
<div>
<label for="piercings-1"><input type="radio" name="piercings" id="piercings-1" value="1" />Ja</label><br /><label for="piercings-2"><input type="radio" name="piercings" id="piercings-2" value="2" checked="checked" />Nej</label></div></div></dl></fieldset></dd>
<dt id="background-label">&#160;</dt><dd id="background-element"><fieldset id="fieldset-background"><legend>Bakgrund</legend>
<dl>
<div class="element"><div id="ethnicity-label"><label for="ethnicity" class="form-lbl optional">Etnisk bakgrund</label></div>
<div>
<select name="ethnicity" id="ethnicity">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Nordisk">Nordisk</option>
    <option value="2" label="Afrikan">Afrikan</option>
    <option value="3" label="Arab">Arab</option>
    <option value="4" label="Asiat">Asiat</option>
    <option value="5" label="Europeisk" selected="selected">Europeisk</option>
    <option value="6" label="Indier">Indier</option>
    <option value="7" label="Latinamerikan">Latinamerikan</option>
    <option value="8" label="Mellanöstern">Mellanöstern</option>
    <option value="9" label="Nordamerikan">Nordamerikan</option>
    <option value="10" label="Ostindier">Ostindier</option>
    <option value="11" label="Blandad härkomst">Blandad härkomst</option>
    <option value="12" label="Annan">Annan</option>
    <option value="13" label="Hemligt">Hemligt</option>
</select></div></div>
<div class="element"><div id="religion-label"><label for="religion" class="form-lbl optional">Religion</label></div>
<div>
<select name="religion" id="religion">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Agnostiker">Agnostiker</option>
    <option value="2" label="Andlig">Andlig</option>
    <option value="3" label="Ateist - icke troende">Ateist - icke troende</option>
    <option value="4" label="Buddist">Buddist</option>
    <option value="5" label="Hindu">Hindu</option>
    <option value="6" label="Jude">Jude</option>
    <option value="7" label="Katolik">Katolik</option>
    <option value="8" label="Kristen">Kristen</option>
    <option value="9" label="Muslim">Muslim</option>
    <option value="10" label="New age">New age</option>
    <option value="11" label="Pingstvän">Pingstvän</option>
    <option value="12" label="Protestant">Protestant</option>
    <option value="13" label="Scientiolog">Scientiolog</option>
    <option value="14" label="Annat">Annat</option>
    <option value="15" label="Hemligt">Hemligt</option>
</select></div></div>
<div class="element"><div id="religiontype-label"><label for="religiontype" class="form-lbl optional">Jag praktiserar min religion</label></div>
<div>
<label for="religiontype-1"><input type="radio" name="religiontype" id="religiontype-1" value="1" />Passiv</label><br /><label for="religiontype-2"><input type="radio" name="religiontype" id="religiontype-2" value="2" />Aktiv</label></div></div>
<div class="element"><div id="language-label"><label for="language" class="form-lbl optional">Språk</label></div>
<div>
<select name="language[]" id="language" multiple="multiple" size="10">
    <option value="1" label="Svenska" selected="selected">Svenska</option>
    <option value="2" label="Engelska" selected="selected">Engelska</option>
    <option value="3" label="Spanska">Spanska</option>
    <option value="4" label="Franska">Franska</option>
    <option value="" label="-------">-------</option>
    <option value="5" label="Albanska">Albanska</option>
    <option value="6" label="Arabiska">Arabiska</option>
    <option value="7" label="Bosniska">Bosniska</option>
    <option value="8" label="Bulgariska">Bulgariska</option>
    <option value="9" label="Danska">Danska</option>
    <option value="10" label="Estniska">Estniska</option>
    <option value="11" label="Finska">Finska</option>
    <option value="12" label="Färöiska">Färöiska</option>
    <option value="13" label="Grekiska">Grekiska</option>
    <option value="14" label="Hindi">Hindi</option>
    <option value="15" label="Isländska">Isländska</option>
    <option value="16" label="Italienska">Italienska</option>
    <option value="17" label="Japanska">Japanska</option>
    <option value="18" label="Kroatiska">Kroatiska</option>
    <option value="19" label="Kurdiska">Kurdiska</option>
    <option value="20" label="Lettiska">Lettiska</option>
    <option value="21" label="Litauiska">Litauiska</option>
    <option value="22" label="Makedonska">Makedonska</option>
    <option value="23" label="Mandarin">Mandarin</option>
    <option value="24" label="Nederländska">Nederländska</option>
    <option value="25" label="Norska">Norska</option>
    <option value="26" label="Persiska">Persiska</option>
    <option value="27" label="Polska">Polska</option>
    <option value="28" label="Portugisiska">Portugisiska</option>
    <option value="29" label="Rumänska">Rumänska</option>
    <option value="30" label="Ryska">Ryska</option>
    <option value="31" label="Serbiska">Serbiska</option>
    <option value="32" label="Slovakiska">Slovakiska</option>
    <option value="33" label="Slovenska">Slovenska</option>
    <option value="34" label="Thailändska">Thailändska</option>
    <option value="35" label="Tjeckiska">Tjeckiska</option>
    <option value="36" label="Turkiska">Turkiska</option>
    <option value="37" label="Tyska">Tyska</option>
    <option value="38" label="Ukrainska">Ukrainska</option>
    <option value="39" label="Ungerska">Ungerska</option>
    <option value="40" label="Vitryska">Vitryska</option>
    <option value="41" label="Annat">Annat</option>
</select></div></div></dl></fieldset></dd>
<dt id="lifestyle-label">&#160;</dt><dd id="lifestyle-element"><fieldset id="fieldset-lifestyle"><legend>Livssituation</legend>
<dl>
<div class="element"><div id="education-label"><label for="education" class="form-lbl optional">Utbildning</label></div>
<div>
<select name="education" id="education">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Grundskola">Grundskola</option>
    <option value="2" label="Gymnasium">Gymnasium</option>
    <option value="3" label="Yrkesskola">Yrkesskola</option>
    <option value="4" label="Högskola/Universitet" selected="selected">Högskola/Universitet</option>
    <option value="5" label="Livets skola">Livets skola</option>
    <option value="6" label="Annat">Annat</option>
    <option value="7" label="Hemligt">Hemligt</option>
</select></div></div>
<div class="element"><div id="occupation-label"><label for="occupation" class="form-lbl optional">Sysselsättning</label></div>
<div>
<select name="occupation" id="occupation">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Anställd" selected="selected">Anställd</option>
    <option value="2" label="Egenföretagare">Egenföretagare</option>
    <option value="3" label="Chef">Chef</option>
    <option value="4" label="Studerande">Studerande</option>
    <option value="5" label="Sjukskriven">Sjukskriven</option>
    <option value="6" label="Sjukpensionär">Sjukpensionär</option>
    <option value="7" label="Pensionär">Pensionär</option>
    <option value="8" label="Mellan två arbeten">Mellan två arbeten</option>
    <option value="9" label="Arbetsskygg">Arbetsskygg</option>
    <option value="10" label="Annat">Annat</option>
    <option value="11" label="Hemligt">Hemligt</option>
</select></div></div>
<div class="element"><div id="income-label"><label for="income" class="form-lbl optional">Inkomst/Förmögenhet</label></div>
<div>
<select name="income" id="income">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Låg">Låg</option>
    <option value="2" label="Medel">Medel</option>
    <option value="3" label="Hög">Hög</option>
    <option value="4" label="Hemligt" selected="selected">Hemligt</option>
</select></div></div>
<div class="element"><div id="politic-label"><label for="politic" class="form-lbl optional">Politik</label></div>
<div>
<select name="politic" id="politic">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Långt till vänster">Långt till vänster</option>
    <option value="2" label="Vänster">Vänster</option>
    <option value="3" label="Mitten">Mitten</option>
    <option value="4" label="Höger">Höger</option>
    <option value="5" label="Långt till höger">Långt till höger</option>
    <option value="6" label="Grön">Grön</option>
    <option value="7" label="Inte intresserad" selected="selected">Inte intresserad</option>
    <option value="8" label="Annan ståndpunkt">Annan ståndpunkt</option>
    <option value="9" label="Hemligt">Hemligt</option>
</select></div></div>
<div class="element"><div id="children-label"><label for="children" class="form-lbl optional">Barn</label></div>
<div>
<select name="children" id="children">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Nej" selected="selected">Nej</option>
    <option value="2" label="Ja, heltid">Ja, heltid</option>
    <option value="3" label="Ja, halvtid">Ja, halvtid</option>
    <option value="4" label="Ja, helger">Ja, helger</option>
    <option value="5" label="Ja, utflugna">Ja, utflugna</option>
    <option value="6" label="Hemligt">Hemligt</option>
</select></div></div>
<div class="element"><div id="morekids-label"><label for="morekids" class="form-lbl optional">Vill ha (fler) barn</label></div>
<div>
<select name="morekids" id="morekids">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Ja">Ja</option>
    <option value="2" label="Nej">Nej</option>
    <option value="3" label="Vet ej">Vet ej</option>
    <option value="4" label="Kanske i framtiden" selected="selected">Kanske i framtiden</option>
</select></div></div></dl></fieldset></dd>
<dt id="habits-label">&#160;</dt><dd id="habits-element"><fieldset id="fieldset-habits"><legend>Laster och vanor</legend>
<dl>
<div class="element"><div id="smokes-label"><label for="smokes" class="form-lbl optional">Tobaksvanor</label></div>
<div>
<select name="smokes" id="smokes">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Nikotinfri" selected="selected">Nikotinfri</option>
    <option value="2" label="Röker">Röker</option>
    <option value="3" label="Feströker">Feströker</option>
    <option value="4" label="Snusar">Snusar</option>
    <option value="5" label="Röker och snusar">Röker och snusar</option>
    <option value="6" label="Försöker sluta">Försöker sluta</option>
    <option value="7" label="Hemligt">Hemligt</option>
</select></div></div>
<div class="element"><div id="drinks-label"><label for="drinks" class="form-lbl optional">Dryckesvanor</label></div>
<div>
<select name="drinks" id="drinks">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Nykterist">Nykterist</option>
    <option value="2" label="Dricker sällan">Dricker sällan</option>
    <option value="3" label="Festdricker" selected="selected">Festdricker</option>
    <option value="4" label="Dricker regelbundet">Dricker regelbundet</option>
    <option value="5" label="Hemligt">Hemligt</option>
</select></div></div>
<div class="element"><div id="foodhabits-label"><label for="foodhabits" class="form-lbl optional">Matvanor</label></div>
<div>
<select name="foodhabits" id="foodhabits">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Äter allt" selected="selected">Äter allt</option>
    <option value="2" label="Vegetarian">Vegetarian</option>
    <option value="3" label="Vegan">Vegan</option>
    <option value="4" label="Kräsen">Kräsen</option>
    <option value="5" label="Gourmetmat">Gourmetmat</option>
    <option value="6" label="Nyttig mat">Nyttig mat</option>
    <option value="7" label="Mikromat">Mikromat</option>
    <option value="8" label="Snabbmat">Snabbmat</option>
    <option value="9" label="Hemligt">Hemligt</option>
</select></div></div>
<div class="element"><div id="exercise-label"><label for="exercise" class="form-lbl optional">Motionsvanor</label></div>
<div>
<select name="exercise" id="exercise">
    <option value="" label="Välj...">Välj...</option>
    <option value="1" label="Träningsfantast">Träningsfantast</option>
    <option value="2" label="Tränar regelbundet" selected="selected">Tränar regelbundet</option>
    <option value="3" label="Tränar ibland">Tränar ibland</option>
    <option value="4" label="Tränar sällan">Tränar sällan</option>
    <option value="5" label="Tränar inte">Tränar inte</option>
    <option value="6" label="Hemligt">Hemligt</option>
</select></div></div></dl></fieldset></dd>
<dt id="save-label">&#160;</dt><dd id="save-element">
<input type="submit" name="save" id="save" value="Spara och börja ragga" class="save-and-close" /></dd>
<dt id="skip-label">&#160;</dt><dd id="skip-element">
<input type="submit" name="skip" id="skip" value="Skippa detta steg" class="skip-this-step" /></dd>
<dt id="currentForm-label">&#160;</dt>
<dd id="currentForm-element">
<input type="hidden" name="currentForm" value="about-me" id="currentForm" /></dd></dl></form>						<div class="clear"></div>

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
