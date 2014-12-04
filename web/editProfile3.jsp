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
		<div class="box padding step_no_info seventyfive">
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
						<a href="/profile/edit/step/4" class="">4</a>
					</div>

					<div class="last">
						<span>5</span>
					</div>
				</div>
				<div class="clear"></div>
				<div class="chart">
					<div class="bar length_75"></div>
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
				<div class="step-3">
									Ladda upp en snygg bild på dig själv, gärna så aktuell som möjligt.
					Ett hett tips till killarna: 93 procent av alla tjejer föredrar en bild på ditt ansikte.
								</div>
			</div>

							<form id="picture" enctype="application/x-www-form-urlencoded" action="/profile/process" method="post" class="form-profile">
					<dl class="zend_form">
					<div>
						<span class="title">Fixa din profilbild</span>
						<div id="uploadbutton"><div class="left">&nbsp;</div><div class="center"><div id="ajax-upload-field">Välj en bild</div></div><div class="right">&nbsp;</div></div>
						<div id="ajax-upload-result"><input type="hidden" name="ajax_url" value="/ajax/uploadprofileimage" /></div>
					</div>

					<div class="clearfix"></div>

					<div class="uploaded-image"></div>

					<div class="current-image">
						<div id="ProfileImage-label">
							<label for="ProfileImage" class="form-lbl optional">Din nuvarande profilbild</label></div>
						<div>

<img src="/img/silhouette/woman_profile.gif" alt="" width="220" />						</div>
					</div>

					<div class="info">
						<img src="/img/info_i.png" alt="" /><br />
						<div class="step-3">
							Ladda upp en snygg bild på dig själv, gärna så aktuell som möjligt.
							Ett hett tips till killarna: 93 procent av alla tjejer föredrar en bild på ditt ansikte.
						</div>
					</div>

					<div class="new-image"></div>


					<div class="clearfix"></div>
					<div class="layout-right">
						<label for="explicit-yes">Har bilden sexuell karaktär?</label>
						<input id="explicit-yes" type="radio" name="explicit" value="1" /><label for="explicit-yes">Ja</label>
						<input id="explicit-no" type="radio" name="explicit" value="0" checked /><label for="explicit-no">Nej</label>
					</div>
					<div class="clearfix"></div>


					<input type="hidden" id="x" name="x" />
					<input type="hidden" id="y" name="y" />
					<input type="hidden" id="w" name="w" />
					<input type="hidden" id="h" name="h" />
					<input type="hidden" name="currentForm" value="picture" id="currentForm" />


					<br />

					<dd id="continue-element"><input type="submit" name="continue" id="continue" value="Spara och öka min raggafaktor" /></dd>
					<dd id="done-element"><input type="submit" name="done" id="done" value="Spara och börja ragga" class="save-and-close" /></dd>
					<dd id="skip-element"><a href="/profile/edit/step/4">Skippa detta steg</a></dd>
				</dl>
				</form>
						<div class="clear"></div>

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
