<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"><html lang="sv" xml:lang="sv" xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Ragga.nu - Dating Online</title>
			<meta name="description" content="Dating på nätet med glimten i ögat. Ragga.nu är en snabbt växande online dating community där du lätt hittar en träff, flirt eller den stora kärleken. Skapa en gratis online dating profil idag." />
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
    <script type="text/javascript" src="scripts/index.js"></script>

</head>
<body class="nojs page-2-1-3">
<script type="text/javascript">document.body.className = document.body.className.replace('nojs','js');</script>
<div class="inner-body">

<div class="page">
	<div class="page-head">
		<div class="logo">
			<p><a href="/"><img src="/img/ragga-nu-logo.png" alt="Ragga.nu" title="Ragga.nu" width="209" height="117"/></a></p>
		</div>

        <div class="nav-main">
      		<ul id="nav1"><li  class="active"><a class="" href="/"><span class="left">&nbsp;</span><span>Start</span><span class="right">&nbsp;</span></a></li>
      <li ><a class="" href="search.jsp"><span class="left">&nbsp;</span><span>Sök</span><span class="right">&nbsp;</span></a></li>
      <li ><a class="" href="ads.jsp"><span class="left">&nbsp;</span><span>Annonser</span><span class="right">&nbsp;</span></a></li>
      <li ><a class="" href="gallery.jsp"><span class="left">&nbsp;</span><span>Bilder</span><span class="right">&nbsp;</span></a></li>
      <li ><a class="pop-create" id="registerButton" href="#"><span class="left">&nbsp;</span><span>Bli raggare</span><span class="right">&nbsp;</span></a></li>
      </ul>		</div>

		
<div class="nav-dashboard">
	<div id="user-options">
					<div id="login">
				<form method="post" action="profile.jsp" enctype="application/x-www-form-urlencoded">
					<div class="col">
						<label for="username">Användarnamn</label>
						<div class="clear"></div>
						<input type="text" size="14" value="" id="username" name="username" autocomplete="off" class="text" tabindex="1" />
					</div>
					<div class="col">
						<label for="password">Lösenord</label>
						<a href="/user/forgotpassword" class="pop-forgot">Glömt?</a>
						<div class="clear"></div>
						<input type="password" size="14" value="" id="password" name="password" autocomplete="off" class="text" tabindex="2" />
					</div>
					<input type="submit" value="" class="submit" tabindex="3" />
				</form>
			</div>
			</div>
	</div>	</div>



	<div class="page-body">
		

    <div id="index">

            <%@ include file="include/registrationForm_modal.inc" %>



	<div class="clear"></div>

        <br/>

	
			<div class="wide">
			<div class="float_right">
				<a href="#" class="left">Vänster</a>
				<a href="#" class="right">Höger</a>
			</div>
			<h3>Senaste bilderna</h3>

			<div class="overflow">
				<div class="scroll">
	                <div id="latestImages" class="hold">

                        <!--  Adding latest images here in index.jsp -->


                    </div>
                </div>
            </div>

			<div class="clear"></div>
			<a href="/gallery/browse" class="float_right">Visa fler bilder</a>
		</div>
		
			<div class="slim">
			<h3>Senast inloggade</h3>
			<ul id="latestLogins" class="loggedin">

                    <!--  Adding latest login here in index.jsp -->

            </ul>
			<a href="/search/quick?gender=&from=18&to=99&state=0&is_online=0&has_image=0&has_album=0" class="float_right">Visa alla profiler</a>
		</div>
		
				<div class="slim">
			<h3>Senaste annonserna</h3>
			<div class="">
				<ul id="promotedProfiles" class="list">

                    <!--

																	<li>
							<a href="/ad/view/id/75">
								<img src="/image/micro_afc319d04a419b35b7f7ccf6e2640818.jpg" alt="" />
								<span class="searching">
									Kille söker Tjej								</span>
								<span class="title">
									Förändra din vardag 								</span>
							</a>
						</li>
																							<li>
							<a href="/ad/view/id/74">
								<img src="/image/micro_12184d4254881b5edf4b2beb3ea70858.jpg" alt="" />
								<span class="searching">
									Kille söker Tjej								</span>
								<span class="title">
									Bi-kille								</span>
							</a>
						</li>
																							<li>
							<a href="/ad/view/id/71">
								<img src="/image/micro_abeee7dc79a79d612e5dccc3d1569ee3.jpg" alt="" />
								<span class="searching">
									Tjej söker Kille								</span>
								<span class="title">
									söker äldre man 60+								</span>
							</a>
						</li>
																							<li>
							<a href="/ad/view/id/70">
								<img src="/image/micro_9ae7cb7e9e4bf542a046c6c7fd0fa93c.jpg" alt="" />
								<span class="searching">
									Tjej söker Kille								</span>
								<span class="title">
									Någon som vill mysa?								</span>
							</a>
						</li>
																							<li>
							<a href="/ad/view/id/69">
								<img src="/image/micro_d601db8755b022a31407bbe2029b5bb9.jpg" alt="" />
								<span class="searching">
									Kille söker Tjej								</span>
								<span class="title">
									Låt oss börja med att skratta ...								</span>
							</a>
						</li>

						-->
										</ul>
			</div>
			<a href="/ad/browse" class="float_right">Visa alla annonser</a>
		</div>
		
	<div class="clear"></div>

	<div class="left">
		<h1>Dating med glimten i ögat</h1>
		<p>Har du tröttnat på tråkiga online dating sites?<br />Ragga.nu är en online dating community för seriös kontakt mellan singlar och par i hela Sverige, oavsett om du är ute efter en en snabb träff, en kort romans eller den stora kärleken.</p>

		<p>Vårt koncept är att erbjuda ett seriöst, elegant och effektivt forum för dating på nätet där du kan ha roligt och hitta nya upplevelser.</p>
		
		<p><a href="/registration" class="pop-create">Bli medlem idag</a></p>
	</div>
	<div class="right">
		<div class="post">
			<h4>Konsten att skapa en bra dating profil</h4>
			Det kan vara svårt att få till en bra datingprofil, men det finns några knep man kan ta till för att öka sina chanser rejält.
			<br /><a href="/news/datingmanual">Läs mer!</a>
		</div>
		<hr />
			</div>
	
</div>

<div id="index_bg"></div>

		
			</div>

	<div class="page-foot">
		<div class="page-foot-inner">
			<div id="footer">

	<div class="row">
		<div class="col first">
			<img src="img/footer_logo.png" width="133" height="75" alt="" class="footer_logo" />
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
							<h3>Skapa ett konto</h3>
				<a href="/registration" class="btn_big pop-create"><span>Bli raggare nu</span></a>
					</div>
	</div>

	<div class="clear"></div>

</div>

	<div class="clear"></div>
		</div>
	</div>
</div>
</div>
</body>
</html>

