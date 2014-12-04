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
		<div class="box padding no_skip_margin">
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
					<div class="bar length_50"></div>
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

			<div class="right_info">
				<img src="/img/info_i.png" alt="" />
				<br />
				<div class="step-2">
								</div>
			</div>

						<form id="text" enctype="application/x-www-form-urlencoded" class="form-profile" action="" method="post"><dl class="zend_form">
<dt id="description-label"><label for="description" class="optional">Om mig själv</label></dt>
<dd id="description-element">
<textarea name="description" id="description" rows="10" class="wysiwyg" cols="80">Jag är en speciell tjej som tycker om när det händer saker. Jag trivs utmärkt med livet, i min underbara lägenhet, men det är klart att man ibland saknar någon under täcket... ;-)</textarea></dd>
<dt id="searchDescription-label"><label for="searchDescription" class="optional">Om den jag söker</label></dt>
<dd id="searchDescription-element">
<textarea name="searchDescription" id="searchDescription" rows="10" class="wysiwyg" cols="80">Du skall vara lugn och trygg. Veta vad du vill, men givetvis alltid sätta mig först... :-)</textarea></dd>
<dt id="turnons-label">&#160;</dt><dd id="turnons-element"><fieldset id="fieldset-turnons"><dl>
<dt id="turnons-label">&#160;</dt><dd id="turnons-element"><fieldset id="fieldset-turnons"><legend>Turn-ons</legend>
<dl>
<dt id="turnons-_0-label"><label for="turnons-_0" class="optional">1.</label></dt>
<dd id="turnons-_0-element">
<input type="text" name="turnons[_0]" id="turnons-_0" value="En trygg famn" /></dd>
<dt id="turnons-_1-label"><label for="turnons-_1" class="optional">2.</label></dt>
<dd id="turnons-_1-element">
<input type="text" name="turnons[_1]" id="turnons-_1" value="" /></dd>
<dt id="turnons-_2-label"><label for="turnons-_2" class="optional">3.</label></dt>
<dd id="turnons-_2-element">
<input type="text" name="turnons[_2]" id="turnons-_2" value="" /></dd>
<dt id="turnons-_3-label"><label for="turnons-_3" class="optional">4.</label></dt>
<dd id="turnons-_3-element">
<input type="text" name="turnons[_3]" id="turnons-_3" value="" /></dd>
<dt id="turnons-_4-label"><label for="turnons-_4" class="optional">5.</label></dt>
<dd id="turnons-_4-element">
<input type="text" name="turnons[_4]" id="turnons-_4" value="" /></dd></dl></fieldset></dd></dl></fieldset></dd>
<dt id="turnoffs-label">&#160;</dt><dd id="turnoffs-element"><fieldset id="fieldset-turnoffs"><dl>
<dt id="turnoffs-label">&#160;</dt><dd id="turnoffs-element"><fieldset id="fieldset-turnoffs"><legend>Turn-offs</legend>
<dl>
<dt id="turnoffs-_0-label"><label for="turnoffs-_0" class="optional">1.</label></dt>
<dd id="turnoffs-_0-element">
<input type="text" name="turnoffs[_0]" id="turnoffs-_0" value="Dryga backslicks" /></dd>
<dt id="turnoffs-_1-label"><label for="turnoffs-_1" class="optional">2.</label></dt>
<dd id="turnoffs-_1-element">
<input type="text" name="turnoffs[_1]" id="turnoffs-_1" value="" /></dd>
<dt id="turnoffs-_2-label"><label for="turnoffs-_2" class="optional">3.</label></dt>
<dd id="turnoffs-_2-element">
<input type="text" name="turnoffs[_2]" id="turnoffs-_2" value="" /></dd>
<dt id="turnoffs-_3-label"><label for="turnoffs-_3" class="optional">4.</label></dt>
<dd id="turnoffs-_3-element">
<input type="text" name="turnoffs[_3]" id="turnoffs-_3" value="" /></dd>
<dt id="turnoffs-_4-label"><label for="turnoffs-_4" class="optional">5.</label></dt>
<dd id="turnoffs-_4-element">
<input type="text" name="turnoffs[_4]" id="turnoffs-_4" value="" /></dd></dl></fieldset></dd></dl></fieldset></dd>
<dt id="continue-label">&#160;</dt><dd id="continue-element">
<input type="submit" name="continue" id="continue" value="Spara och öka min raggafaktor" /></dd>
<dt id="done-label">&#160;</dt><dd id="done-element">
<input type="submit" name="done" id="done" value="Spara och börja ragga" class="save-and-close" /></dd>
<dt id="skip-label">&#160;</dt><dd id="skip-element">
<input type="submit" name="skip" id="skip" value="Skippa detta steg" class="skip-this-step" /></dd>
<dt id="currentForm-label">&#160;</dt>
<dd id="currentForm-element">
<input type="hidden" name="currentForm" value="text" id="currentForm" /></dd></dl></form>						<div class="clear"></div>

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
