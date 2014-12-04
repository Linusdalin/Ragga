<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"><html lang="sv" xml:lang="sv" xmlns="http://www.w3.org/1999/xhtml">

<!--  Validating the login session and returning to the index page otherwise -->

<%@ include file="include/validateSession.inc" %>


<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Hitta ett ragg - ragga.nu</title>
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
        <script type="text/javascript" src="scripts/search.js"></script>


</head>
<body class="nojs page-2-1-3">
<script type="text/javascript">document.body.className = document.body.className.replace('nojs','js');</script>
<div class="inner-body">

<div class="page">
	<div class="page-head">

        <%@ include file="include/logo.inc" %>

        <%@ include file="include/nav-main.inc" %>

<div class="nav-dashboard">
	<div id="user-options">
					<div id="login">
				<form method="post" action="/user/login" enctype="application/x-www-form-urlencoded">
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
		<div class="col1 col-stretch-half section-main search_listing">
						<div id="searchpage_top">
	<h1>Sök efter medlemmar</h1>
	<form action="/search/user" method="get">

<input type="text" name="username" id="username" value="" class="input_text" />
<input type="submit" name="search" id="search" value="Sök" class="submit" />	</form>
</div>


<div id="searchpage">
	<div class="base mod-profile">
		<div class="left">
				<div class="mod-inner mod-fill mod-border">
					<div id="search-medium">
						<form action="/search/find" method="get">

							<label class="gender size-1of8 layout-left" for="gender">Jag söker</label>
							<label class="from size-1of8 layout-left" for="from">Från</label>
							<label class="to size-1of8 layout-left" for="to">&nbsp;</label>
							<label class="state size-2of8 layout-left" for="state">Län</label>
							<label class="state size-1of8 layout-left" for="searchingfor">Som söker</label>

							<div class="clear"></div>


<select name="gender" id="gender" class="size-1of8 layout-left">
    <option value="1" label="Man">Man</option>
    <option value="2" label="Kvinna">Kvinna</option>
    <option value="3" label="Par">Par</option>
</select>
<select name="from" id="from" class="size-1of8 layout-left">
    <option value="18" label="18" selected="selected">18</option>
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
<select name="to" id="to" class="size-1of8 layout-left">
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
    <option value="99" label="99" selected="selected">99</option>
</select>
<select name="state" id="state" class="size-2of8 layout-left">
    <option value="0" label="Alla län" selected="selected">Alla län</option>
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
<select name="sexualInterests[]" id="sexualInterests" multiple="multiple" class="size-2of8 layout-left">
    <option value="1" label="Vänskap">Vänskap</option>
    <option value="2" label="Chat">Chat</option>
    <option value="3" label="Date">Date</option>
    <option value="4" label="Flört">Flört</option>
    <option value="5" label="Förhållande">Förhållande</option>
    <option value="6" label="Romans">Romans</option>
    <option value="7" label="Sex">Sex</option>
</select>
							<div class="clear"></div>
							<div class="line"></div>

							<div class="size-1of3 layout-left search-filter-container">
								<div class="search-filter">

<input type="hidden" name="has_image" value="0" /><input type="checkbox" name="has_image" id="has_image" value="1" class="checkbox layout-left" />									<label for="has_image" class="checkbox">Profilbild</label>
								</div>
								<div class="search-filter">

<input type="hidden" name="has_album" value="0" /><input type="checkbox" name="has_album" id="has_album" value="1" class="checkbox layout-left" />									<label for="has_album" class="checkbox">Har fotoalbum</label>
								</div>
								<div class="search-filter">

<input type="hidden" name="is_online" value="0" /><input type="checkbox" name="is_online" id="is_online" value="1" class="checkbox layout-left" />									<label for="is_online" class="checkbox">Visa bara onlineprofiler</label>
								</div>
							</div>

							<div class="size-1of3 layout-left search-filter-middle">

<input type="hidden" name="use_member_since" value="0" /><input type="checkbox" name="use_member_since" id="use_member_since" value="1" class="checkbox layout-left" />								<label id="label_member_since" for="use_member_since" class="checkbox">Visa bara nya medlemmar</label>

<select name="member_since" id="member_since" class="checkbox member_since" disabled="disabled">
    <option value="7" label="Senaste 7 dagarna">Senaste 7 dagarna</option>
    <option value="14" label="Senaste 14 dagarna">Senaste 14 dagarna</option>
    <option value="21" label="Senaste tre veckorna">Senaste tre veckorna</option>
    <option value="31" label="Senaste månaden">Senaste månaden</option>
</select>
							</div>

							<div class="size-1of3 layout-left search-filter-right">
								<input type="submit" class="submit" value="Sök" />
							</div>

						</form>
						<div class="clear"></div>
					</div>
				</div>
		</div>
		 	</div>
</div>		</div>

		<div id="left_menu">
			<div class="mod-inner mod-fill mod-border search_list">
				<span>Populära sökningar</span>
				<ul id="search-action-menu ">
					<li><a href="/search/find/is_online/1">Online profiler</a></li>
					<li><a href="/search/find/member_since/14">Nya medlemmar</a></li>
					<li><a href="/search/find/has_image/1">Medlemmar med profilbild</a></li>
					<li><a href="/search/find/has_album/1">Medlemmar med fotoalbum</a></li>
				</ul>
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

