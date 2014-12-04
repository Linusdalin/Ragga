<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"><html lang="sv" xml:lang="sv" xmlns="http://www.w3.org/1999/xhtml">

<!--  Validating the login session and returning to the index page otherwise -->

<%@ include file="include/validateSession.inc" %>


<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Annonser - ragga.nu</title>
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
       <script type="text/javascript" src="scripts/ads.js"></script>
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

											<div id="create_page_wrapper">

	<div id="leftMenu">
				<a id="create_ad" href="/ad/create">Skapa din egen annons</a>
	</div>

	<div id="wrapper">
		<div id="listing_top">
			<h1>Skapa annons</h1>
		</div>

		<div id="create_page" class="box">
			<form enctype="application/x-www-form-urlencoded" action="" method="post"><dl class="zend_form">
<dt id="location-label">&#160;</dt><dd id="location-element"><fieldset id="fieldset-location"><dl>
<dt id="province-label"><label for="province" class="optional">Län</label></dt>
<dd id="province-element">
<select name="province" id="province">
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
</select></dd>
<dt id="county-label"><label for="county" class="optional">Kommun</label></dt>
<dd id="county-element">
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
</select></dd></dl></fieldset></dd>
<dt id="category-label"><label for="category" class="optional">Kategori</label></dt>
<dd id="category-element">
<select name="category" id="category">
    <option value="1" label="Tjej söker Kille">Tjej söker Kille</option>
    <option value="2" label="Tjej söker Tjej">Tjej söker Tjej</option>
    <option value="3" label="Tjej söker Par">Tjej söker Par</option>
</select></dd>
<dt id="headline-label"><label for="headline" class="required">Rubrik</label></dt>
<dd id="headline-element">
<input type="text" name="headline" id="headline" value="" size="50" /></dd>
<dt id="content-label"><label for="content" class="required">Annonstext</label></dt>
<dd id="content-element">
<textarea name="content" id="content" rows="20" cols="50"></textarea></dd>
<dt id="submit-label">&#160;</dt><dd id="submit-element">
<input type="submit" name="submit" id="submit" value="Sätt in annons" /></dd></dl></form>		</div>
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

