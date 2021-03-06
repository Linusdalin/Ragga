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
		<div class="logo">
			<p><a href="/"><img src="/img/ragga-nu-logo.png" alt="Ragga.nu" title="Ragga.nu" width="209" height="117"/></a></p>
		</div>

        <%@ include file="include/nav-main.inc" %>

		
<div class="nav-dashboard">
	<div id="user-options">
					<div>
				Erotikfilter <a href="#" class="poptip" title="Aktiverar du erotikfiltret censureras erotiskt material på sajten."><img class="questionmark" src="/img/questionmark.png" alt="?" /></a>
			</div>
			<a href="" id="toggle-explicit-content" class="active" title="Visa inte stötande material"><span>&nbsp;</span></a>
			</div>
		<ul id="dashboard-counts">
		<li class="active">
			<a href="/mail" class="mail"><span>3</span> Mejl</a>		</li>

		<li class="active">
			<a href="/mail/index/catid/3" class="flirts"><span>6</span> Ragg</a>		</li>

		<li>
			<a href="/profile/comments/profileid/55" class="post"><span>0</span> Gästbok</a>		</li>

		<li class="active">
			<a href="/profile/visits/profileid/55" class="visit"><span>30</span> Besök</a>		</li>

		<li>
			<a href="/profile/favorites/profileid/55" class="favorite"><span>0</span> Online</a>		</li>
	</ul>
	</div>	</div>

	<div class="page-body">
		<div class="col1 col-stretch-half section-main">
						<div class="base mod-profile">
	<h1 class="Kvinna">PatriciaX, 37</h1>
	<span id="status_msg"></span>

					<span class="last-online">
				Online
			</span>
			<div class="clear"></div>

	<div class="clearfix">
	<ul class="tabs">
		<li>
			<a href="/profile/view/profileid/55">
				<span class="left">&nbsp;</span>
				<span>Profil</span>
				<span class="right">&nbsp;</span>
			</a>
		</li>
					<li>
				<a class="" href="/profile/aboutme/profileid/55">
					<span class="left">&nbsp;</span>
					<span>Om mig</span>
					<span class="right">&nbsp;</span>
				</a>
			</li>
						<li>
			<a class="active" href="/profile/comments/profileid/55">
				<span class="left">&nbsp;</span>
				<span>Gästbok</span>
				<span class="right">&nbsp;</span>
			</a>
		</li>
	</ul>
</div>
	<div class="mod-border padding-top-half">
		<div class="size-1of1">
			<div class="profile-comments">
				<div class="padding">					
											<div class="h3 margin-bottom">Hej PatriciaX</div>
						<div class="h3 margin-bottom-half">Välkommen till min gästbok, lämna gärna en kommentar är du snäll!</div>
													<form enctype="application/x-www-form-urlencoded" method="post" action="/comment/process"><div id="form-comment">
<dt id="comment-label">&#160;</dt>
<dd id="comment-element">
<textarea name="comment" id="comment" rows="5" cols="60"></textarea></dd>
<dt id="save-label">&#160;</dt><dd id="save-element">
<input type="submit" name="save" id="save" value="Skicka" /></dd>
<dt id="profileid-label">&#160;</dt>
<dd id="profileid-element">
<input type="hidden" name="profileid" value="55" id="profileid" /></dd>
<dt id="return-label">&#160;</dt>
<dd id="return-element">
<input type="hidden" name="return" value="/profile/comments/profileid/55" id="return" /></dd></div></form>													<script type="text/javascript">document.getElementById('comment').focus();</script>
										<div class="clear"></div>
											<div class="clearfix" id="comment-337">
							<div class="layout-left size1of5 image">
								<img src="/img/silhouette/man_micro.gif" alt="ludda" />
							</div>
							<div class="box comment layout-right size-4of5 padding-half">
								<div class="header clearfix">
									<div class="date layout-right">
										2011-07-23  18:13									</div>
									<div class="commenter layout-left">
										<a class="Man" href="/profile/view/profileid/562">
											ludda, 45										</a>
									</div>
								</div>
								<div class="body">
									hör av dig!								</div>
							</div>
						</div>
														</div>
			</div>

		<div id="right-column" class="size-3of8 layout-right">
			<div class="box padding looking_for">
								Jag söker <span>Man</span><br />
				mellan <span>35-44</span> år<br />
				för <span>Date, Flört, Sex</span><br />
			</div>

			

							<div class="box padding50">
					<h3>Liknande Profiler</h3>
<div class="holder">
	<ul>
					<li>
				<div class="image">
					<a href="/profile/view/profileid/538">
						<img src="/image/profile_da5755b1f4020bcbcfa39b4fbedf14c9.jpg" alt="Misty" />
					</a>
				</div>
				<div class="text">
					<a href="/profile/view/profileid/538">Misty</a><br />
					<span class="Kvinna">37 år</span>
					Tyresö				</div>
			</li>
					<li>
				<div class="image">
					<a href="/profile/view/profileid/21">
						<img src="/image/profile_24c5ac6f88a948749a9da8afc77a6989.jpg" alt="SolistaQ" />
					</a>
				</div>
				<div class="text">
					<a href="/profile/view/profileid/21">SolistaQ</a><br />
					<span class="Kvinna">48 år</span>
					Helsingborg				</div>
			</li>
					<li>
				<div class="image">
					<a href="/profile/view/profileid/82">
						<img src="/image/profile_d1274da6944c8386d172109f80fe99ef.jpg" alt="floxy4u" />
					</a>
				</div>
				<div class="text">
					<a href="/profile/view/profileid/82">floxy4u</a><br />
					<span class="Kvinna">29 år</span>
					Lund				</div>
			</li>
					<li>
				<div class="image">
					<a href="/profile/view/profileid/1059">
						<img src="/image/profile_a079f2d12b597c7071f342fec7b20917.jpg" alt="VeggieeWoman" />
					</a>
				</div>
				<div class="text">
					<a href="/profile/view/profileid/1059">VeggieeWoman</a><br />
					<span class="Kvinna">42 år</span>
					Salem				</div>
			</li>
					<li>
				<div class="image">
					<a href="/profile/view/profileid/546">
						<img src="/image/profile_f7720495976f7afc210c96700c39c785.jpg" alt="Blomman" />
					</a>
				</div>
				<div class="text">
					<a href="/profile/view/profileid/546">Blomman</a><br />
					<span class="Kvinna">37 år</span>
					Stockholm				</div>
			</li>
			</ul>
</div>					<div class="clear"></div>
				</div>
					</div>

		</div>
	</div>
</div>
		</div>
		<div style="float: left; width: 220px;">
			<div class="col2 col-stretch-half aside-main">
				<div class="mod-inner mod-fill mod-border" id="mypage_leftmenu">


                    <%@ include file="include/profileActionMenu.inc" %>


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

