<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"><html lang="sv" xml:lang="sv" xmlns="http://www.w3.org/1999/xhtml">

<!--  Validating the login session and returning to the index page otherwise -->

<%@ include file="include/validateSession.inc" %>




<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Min sida - ragga.nu</title>
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
		<div class="col1 col-stretch-half section-main">
						<div id="mypage">
	<div class="base mod-profile">

		<!-- ***** LEFT ***** -->
		<div class="left">

			<div class="box">
				<div class="welcome">
					<h1>Välkommen <span id="userName"><!-- user name --></span>!</h1>
				</div>


                <!--
                                $("#newMembers").text(updates.members);
                                $("#newVisits").text(updates.visits);
                                $("#newFavourites").text(updates.favourites);
                                $("#newFlirts").text(updates.flirts);
                                $("#newMessages").text(updates.messages);
                                $("#newPosts").text(updates.posts);


                -->

				<div class="small-image">
					<a href="/profile/edit/step/3">
						<img src="/img/silhouette/woman_profile.gif" alt="Profile Picture" />
					</a>
					Du var senast inloggad:
					<br />
					<span id="lastLogin"></span><br />
					<p class="status change_status">
						<a href="#">Raggstatus:</a> <span>Uppdatera din status</span>
					</p>
				</div>

				<div class="half border">
					<span class="new_members"><span id="newMembers" class="amount"> -- </span> <a href="/profile/newmembers" class="todo">Nya medlemmar</a></span>
					<span class="profile_visits"><span id="newVisits" class="amount"> -- </span> <a href="/profile/visits">Har besökt din profil</a></span>
					<span class="favorites"><span id="newFavourites" class="amount"> -- </span> <a href="/profile/favorites/show/favoritesme">La till dig som favorit</a></span>
				</div>
				<div class="half">
					<span class="flirts"><span id="newFlirts" class="amount"> -- </span> <a href="inbox.jsp?cat=flirt">Har flörtat med dig</a></span>
					<span class="new_messages"><span id="newMail" class="amount"> -- </span> <a href="inbox.jsp?cat=mail">Nya meddelanden</a></span>
					<span class="new_comments"><span id="newPosts" class="amount"> -- </span> <a href="inbox.jsp?cat=guestbook">Nya gästboksinlägg</a></span>
				</div>
			</div>

			<div class="mod-search">
				<div class="box padding">
					<div class="h4">Snabbsök</div>
					<form action="/search/quick" method="get">
	<label class="gender" for="gender">Kön</label>
		<label class="age_label" for="from">Ålder</label>
	<label class="state" for="state">Län</label>
	<div class="clear"></div>

<select name="gender" id="gender">
    <option value="" label="Alla">Alla</option>
    <option value="1" label="Man">Man</option>
    <option value="2" label="Kvinna">Kvinna</option>
    <option value="3" label="Par">Par</option>
</select>

<select name="from" id="from">
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
</select>

<select name="to" id="to">
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
</select>

<select name="state" id="state">
    <option value="0" label="Alla län">Alla län</option>
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
    <option value="1" label="Stockholm">Stockholm</option>
    <option value="3" label="Södermanland">Södermanland</option>
    <option value="2" label="Uppsala">Uppsala</option>
    <option value="13" label="Värmland">Värmland</option>
    <option value="20" label="Västerbotten">Västerbotten</option>
    <option value="18" label="Västernorrland">Västernorrland</option>
    <option value="15" label="Västmanland">Västmanland</option>
    <option value="12" label="Västra Götaland">Västra Götaland</option>
    <option value="14" label="Örebro">Örebro</option>
    <option value="4" label="Östergötland">Östergötland</option>
</select>
	<div class="clear"></div>
	<div class="float_right">
		<input type="submit" class="submit" value="Sök" />
		<div class="clear"></div>
		<a href="/search/find">Avancerad sök</a>
	</div>

<input type="hidden" name="is_online" value="0" /><input type="checkbox" name="is_online" id="is_online" value="1" class="checkbox" />	<label for="is_online" class="checkbox">Är online</label>

<input type="hidden" name="has_image" value="0" /><input type="checkbox" name="has_image" id="has_image" value="1" class="checkbox" />	<label for="has_image" class="checkbox">Har bild</label>

<input type="hidden" name="has_album" value="0" /><input type="checkbox" name="has_album" id="has_album" value="1" class="checkbox" />	<label for="has_album" class="checkbox">Har fotoalbum</label>
</form>				</div>
			</div>

			<div class="box padding leatest">
			<div class="h2">Senaste händelserna</div>
									<p>Här visas dina favoriters aktiviteter och uppdateringar samt kommentarer till din profil och dina bilder.</p>
							</div>

							<div class="box padding wide">
					<div class="float_right latest_images">
						<a href="#" class="right" rel="right">Höger</a>
						<a href="#" class="left" rel="left">Vänster</a>
					</div>
					<h3>Senaste bilderna</h3>
					<div class="overflow">
						<div class="scroll">

                            <div id="latestImages" class="hold">

                                   <!--  Adding latest images here in index.jsp -->



                            <!--
															<a href="/gallery/view/id/761" class="col">
									<img src="/image/new-image_5accb2d79c162d60b5596040f8ea0b3a.png" alt="" />
									<span class="username">
										Danzken									</span>
									<span class="age Man">37 år</span>
								</a>
															<a href="/gallery/view/id/756" class="col">
									<img src="/image/new-image_a5e0910007c60bb84767cd16a7819337.jpg" alt="" />
									<span class="username">
										Kevin111									</span>
									<span class="age Man">25 år</span>
								</a>
															<a href="/gallery/view/id/753" class="col">
									<img src="/image/new-image_84b74b9f4978a55e8d3e756543fa2d16.jpg" alt="" />
									<span class="username">
										langen198									</span>
									<span class="age Man">47 år</span>
								</a>
															<a href="/gallery/view/id/752" class="col">
									<img src="/image/new-image_6e5bf1e1d523a371b629fac30f2e34ba.jpg" alt="" />
									<span class="username">
										NjoyLife									</span>
									<span class="age Man">48 år</span>
								</a>
															<a href="/gallery/view/id/749" class="col">
									<img src="/image/new-image_56c0da3c2fc367acc34c7e2ccd118c3c.jpg" alt="" />
									<span class="username">
										KockSlusk									</span>
									<span class="age Man">36 år</span>
								</a>
													</div>
                        -->
                            </div>
					    </div>
                    </div>
					<div class="clear"></div>
				<a href="/gallery/browse" class="float_right">Fler bilder</a>
				</div>

		</div><!-- ***** /LEFT ***** -->

		<!-- ***** RIGHT ***** -->
		<!-- ***** RIGHT ***** -->
		<!-- ***** RIGHT ***** -->
		<!-- ***** RIGHT ***** -->
		<!-- ***** RIGHT ***** -->
		<div class="right">
			<div class="box padding-half">

				<div id="raggfaktor">
					<h3>Raggfaktor</h3>
					<span id="completion" class="rf60"><!-- Profile Completion Value -->%</span>
					<div class="clear"></div>
					<a href="#" id="help_ragg_factor" class="poptip" title="Ju bättre du fyller i din profil, desto högre raggfaktor får du. Ju högre raggfaktor du har, desto mer attraktiv blir du. Sikta på 100 procent.">Vad är raggfaktor <span ><img alt="?" src="/img/questionmark.png" class="questionmark"></span></a>
				</div>

				<table width="190" style="margin: 0 0 10px 10px;">
					<tr>
						<td style="width:80px" width="80">Grundprofil</td>
						<td style="width:30px" width="30"><img src="/img/bock.png" alt="" /></td>
						<td style="width:80px" width="80"><a href="/profile/edit">Ändra</a></td>
					</tr>
					<tr>
						<td>Profiltext</td>
						<td><img src="/img/bock.png" alt="" /></td>
						<td><a href="/profile/edit/step/2">Ändra</a></td>
					</tr>
					<tr>
						<td>Profilbild</td>
						<td></td>
						<td><a href="/profile/edit/step/3">Ladda upp</a></td>
					</tr>
					<tr>
						<td>Mer om mig</td>
						<td><img src="/img/bock.png" alt="" /></td>
						<td><a href="/profile/edit/step/4">Ändra</a></td>
					</tr>
					<tr>
						<td>Fotoalbum</td>
						<td></td>
						<td><a href="/gallery/upload">Ladda upp</a></td>
					</tr>
				</table>
			</div>


							<div class="box padding-half loggedin">
					<h3>Nya medlemmar</h3>

                                <div id="latestRegistrations">

                                                 <!--  Adding latest login here in index.js -->

                                </div>

                                <!--

					<ul>
													<li>
								<a href="/profile/view/profileid/1242">
									<img width="50" src="/img/silhouette/man_profile.gif" alt="Split37" />
								</a>
								<a href="/profile/view/profileid/1242">Split37</a>
								<br />
								<span class="Man">37 år</span>
								<br />
								Nacka							</li>
													<li>
								<a href="/profile/view/profileid/1226">
									<img width="50" src="/img/silhouette/man_profile.gif" alt="peterz76" />
								</a>
								<a href="/profile/view/profileid/1226">peterz76</a>
								<br />
								<span class="Man">38 år</span>
								<br />
								Stockholm							</li>
													<li>
								<a href="/profile/view/profileid/1225">
									<img width="50" src="/img/silhouette/man_profile.gif" alt="Skonadag" />
								</a>
								<a href="/profile/view/profileid/1225">Skonadag</a>
								<br />
								<span class="Man">43 år</span>
								<br />
								Kumla							</li>
													<li>
								<a href="/profile/view/profileid/1219">
									<img width="50" src="/img/silhouette/man_profile.gif" alt="Max" />
								</a>
								<a href="/profile/view/profileid/1219">Max</a>
								<br />
								<span class="Man">41 år</span>
								<br />
								Umeå							</li>
													<li>
								<a href="/profile/view/profileid/1217">
									<img width="50" src="/img/silhouette/man_profile.gif" alt="Tomatsoppa" />
								</a>
								<a href="/profile/view/profileid/1217">Tomatsoppa</a>
								<br />
								<span class="Man">41 år</span>
								<br />
								Stockholm							</li>
											</ul>

											-->
					<a href="/search/find/member_since/7" class="float_right">Fler nya medlemmar</a>
					<div class="clear"></div>
				</div>
					</div><!-- ***** /RIGHT ***** -->
	</div>
</div>		</div>
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
