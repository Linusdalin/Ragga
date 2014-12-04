<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"><html lang="sv" xml:lang="sv" xmlns="http://www.w3.org/1999/xhtml">

<!--  Validating the login session and returning to the index page otherwise -->

<%@ include file="include/validateSession.inc" %>


<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Mail - Inkorg - ragga.nu</title>
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
       <script type="text/javascript" src="scripts/inbox.js"></script>
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
		<div class="col1 col-stretch-half section-main">
						<div class="line"></div>
<div class="base">
	<div id="mailbox">
		<h1>
			Inkorg		</h1>



        <%@ include file="include/mailbox-categories.inc" %>

		<div class="clearfix"></div>

			<div id="mailbox-inbox">
								<table  id = "messageList" border="0" cellpadding="10" cellspacing="0" width="700">


                                    <!--   Adding list -->


                                </table>

                </div>
        </div>
    </div>
            </div>

		<div class="col2 col-stretch-half aside-main">
			<div class="mod-inner mod-fill mod-border">

                <%@ include file="include/mailboxActionMenu.inc" %>

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

