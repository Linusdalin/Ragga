<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<!--  Validating the login session and returning to the index page otherwise -->

<%@ include file="include/validateSession.inc" %>

<html lang="sv" xml:lang="sv" xmlns="http://www.w3.org/1999/xhtml">

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

											<div id="listing">

	<div id="leftMenu">
			<ul>
		<li class="all">
			<a href="/ad/browse"><span>(48)</span>Alla annonser</a>
		</li>
					<li>
									<a href="/ad/browse/category/6?lookingForAgeMin=18&lookingForAgeMax=99">
								<span>(1)</span>Kille söker Par								</a>
							</li>
					<li>
									<a href="/ad/browse/category/4?lookingForAgeMin=18&lookingForAgeMax=99">
								<span>(34)</span>Kille söker Tjej								</a>
							</li>
					<li>
									<a href="/ad/browse/category/7?lookingForAgeMin=18&lookingForAgeMax=99">
								<span>(1)</span>Par söker Kille								</a>
							</li>
					<li>
									<a href="/ad/browse/category/8?lookingForAgeMin=18&lookingForAgeMax=99">
								<span>(1)</span>Par söker Tjej								</a>
							</li>
					<li>
									<a href="/ad/browse/category/1?lookingForAgeMin=18&lookingForAgeMax=99">
								<span>(9)</span>Tjej söker Kille								</a>
							</li>
					<li>
									<a href="/ad/browse/category/3?lookingForAgeMin=18&lookingForAgeMax=99">
								<span>(1)</span>Tjej söker Par								</a>
							</li>
					<li>
									<a href="/ad/browse/category/2?lookingForAgeMin=18&lookingForAgeMax=99">
								<span>(1)</span>Tjej söker Tjej								</a>
							</li>
			</ul>
		<a id="create_ad" href="/ad/create">Skapa din egen annons</a>
	</div>

	<div id="list">
		<div id="listing_top">
			<h1>Annonser</h1>
			<form method="get" action=""><dl class="zend_form">
<dt id="lookingForAgeMin-label"><label for="lookingForAgeMin" class="required">Ålder från</label></dt>
<dd id="lookingForAgeMin-element">
<select name="lookingForAgeMin" id="lookingForAgeMin">
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
</select></dd>
<dt id="lookingForAgeMax-label"><label for="lookingForAgeMax" class="required">Ålder till</label></dt>
<dd id="lookingForAgeMax-element">
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
</select></dd>
<dt id="province-label"><label for="province" class="optional">Län</label></dt>
<dd id="province-element">
<select name="province" id="province">
    <option value="0" label="Alla län">Alla län</option>
    <option value="m" label="Mitt län">Mitt län</option>
    <option value="" label="--------------------">--------------------</option>
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
</select></dd>
<dt id="submit-label">&#160;</dt><dd id="submit-element">
<input type="submit" name="submit" id="submit" value="Filter" /></dd></dl></form>		</div>

					<table id="users" width="710">
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/woman_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/1240" class="user Kvinna">woqma, 22</a>
							<br />
							Norrbotten						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/80">kvinna söker vänskap/förhållande </a>						</td>
						<td width="140" class="date_col">
							2014-10-04  23:27						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/man_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/1238" class="user Man">aktersnurra, 59</a>
							<br />
							Södermanland						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/79">Jag vill träffa dig för diskreta möten.</a>						</td>
						<td width="140" class="date_col">
							2014-09-30  13:47						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/man_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/27" class="user Man">Lugnochtrygg, 52</a>
							<br />
							Södermanland						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/76">Massage på SPA??</a>						</td>
						<td width="140" class="date_col">
							2013-02-27  23:32						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_afc319d04a419b35b7f7ccf6e2640818.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/26" class="user Man">eskapader, 53</a>
							<br />
							Stockholm						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/75">Förändra din vardag </a>						</td>
						<td width="140" class="date_col">
							2013-02-27  20:19						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_12184d4254881b5edf4b2beb3ea70858.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/31" class="user Man">freddehot, 48</a>
							<br />
							Gävleborg						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/74">Bi-kille</a>						</td>
						<td width="140" class="date_col">
							2013-02-27  02:26						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/man_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/25" class="user Man">Niclas, 53</a>
							<br />
							Stockholm						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/72">Äldre man söker ung kvinna</a>						</td>
						<td width="140" class="date_col">
							2013-02-25  21:55						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_abeee7dc79a79d612e5dccc3d1569ee3.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/1144" class="user Kvinna">ladyblue, 59</a>
							<br />
							Västra Götaland						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/71">söker äldre man 60+</a>						</td>
						<td width="140" class="date_col">
							2013-02-24  23:22						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_9ae7cb7e9e4bf542a046c6c7fd0fa93c.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/157" class="user Kvinna">Kimmis74, 40</a>
							<br />
							Västmanland						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/70">Någon som vill mysa?</a>						</td>
						<td width="140" class="date_col">
							2013-02-24  01:51						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_d601db8755b022a31407bbe2029b5bb9.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/1095" class="user Man">robban79, 35</a>
							<br />
							Västra Götaland						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/69">Låt oss börja med att skratta ihop;)</a>						</td>
						<td width="140" class="date_col">
							2012-12-03  13:05						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_3f101603ce3455ab7d12c555e9281187.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/54" class="user Man">fred39, 42</a>
							<br />
							Stockholm						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/67">Kvinna i Stockholm sökes</a>						</td>
						<td width="140" class="date_col">
							2012-11-09  09:32						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_c1b694a4aef9de88caaeb6d2b24ccac2.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/197" class="user Par">Par34och42, 40</a>
							<br />
							Stockholm						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/66">Par söker extratjej</a>						</td>
						<td width="140" class="date_col">
							2012-11-06  08:26						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_d1274da6944c8386d172109f80fe99ef.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/82" class="user Kvinna">floxy4u, 29</a>
							<br />
							Skåne						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/65">Letar en härlig tjej</a>						</td>
						<td width="140" class="date_col">
							2012-11-04  17:05						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_7e71af898a8f39ff3d921dd96625a9ca.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/40" class="user Kvinna">caramia, 40</a>
							<br />
							Stockholm						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/64">Gillar ni rollspel?</a>						</td>
						<td width="140" class="date_col">
							2012-11-03  15:38						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_7e71af898a8f39ff3d921dd96625a9ca.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/40" class="user Kvinna">caramia, 40</a>
							<br />
							Stockholm						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/62">Gillar du rollspel?</a>						</td>
						<td width="140" class="date_col">
							2012-11-03  15:34						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/woman_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/1064" class="user Kvinna">Sockerpullan, 47</a>
							<br />
							Stockholm						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/61">Önsker en man / kille</a>						</td>
						<td width="140" class="date_col">
							2012-09-30  15:34						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/man_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/32" class="user Man">thor64, 46</a>
							<br />
							Västra Götaland						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/60">heta möten</a>						</td>
						<td width="140" class="date_col">
							2012-09-23  20:23						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_6ace260b8e55b7db8469cf8947c5d919.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/41" class="user Par">6igtpar, 28</a>
							<br />
							Östergötland						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/58">Lek med oss!</a>						</td>
						<td width="140" class="date_col">
							2012-09-23  17:15						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/man_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/1008" class="user Man">BosseKirun, 49</a>
							<br />
							Norrbotten						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/57">FÖR SKÖNA STUNDER</a>						</td>
						<td width="140" class="date_col">
							2012-06-30  11:33						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_f64a030bfe13a18473a56e79e38a744c.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/996" class="user Man">matte1982, 32</a>
							<br />
							Västra Götaland						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/56">Söker tjej som älskar att bli slickat</a>						</td>
						<td width="140" class="date_col">
							2012-06-29  00:49						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/man_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/846" class="user Man">Hetungkille, 23</a>
							<br />
							Östergötland						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/55">Söker en eller två tjejer</a>						</td>
						<td width="140" class="date_col">
							2012-06-07  23:02						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/man_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/816" class="user Man">bill, 48</a>
							<br />
							Västerbotten						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/54">srx</a>						</td>
						<td width="140" class="date_col">
							2012-05-30  20:00						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/man_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/816" class="user Man">bill, 48</a>
							<br />
							Västerbotten						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/53">kåt</a>						</td>
						<td width="140" class="date_col">
							2012-05-09  16:44						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/man_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/789" class="user Man">zozo, 42</a>
							<br />
							Stockholm						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/50">h'lsa</a>						</td>
						<td width="140" class="date_col">
							2012-01-31  00:48						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/man_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/759" class="user Man">bachus, 61</a>
							<br />
							Skåne						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/49">Livsnjutare söker kvinna</a>						</td>
						<td width="140" class="date_col">
							2011-08-27  13:55						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/man_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/735" class="user Man">LoveMilfs, 23</a>
							<br />
							Västra Götaland						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/47">Kåt Och Vild Kvinna!</a>						</td>
						<td width="140" class="date_col">
							2011-08-18  11:54						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/woman_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/670" class="user Kvinna">Lover-girl, 30</a>
							<br />
							Västra Götaland						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/45">Svensk kille</a>						</td>
						<td width="140" class="date_col">
							2011-08-07  19:39						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_e48d3bb7c0de65123e757824391deed6.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/317" class="user Man">disnep45, 50</a>
							<br />
							Västra Götaland						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/42">Livet</a>						</td>
						<td width="140" class="date_col">
							2011-08-03  00:26						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/man_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/654" class="user Man">sthlm008, 26</a>
							<br />
							Stockholm						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/41">TRÄÄÄFFF</a>						</td>
						<td width="140" class="date_col">
							2011-08-02  18:46						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_8c2bbb1996dc6a79a03ddf11b713149a.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/588" class="user Man">buskul, 48</a>
							<br />
							Stockholm						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/40">Skön tjej</a>						</td>
						<td width="140" class="date_col">
							2011-07-26  09:28						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_8c2bbb1996dc6a79a03ddf11b713149a.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/588" class="user Man">buskul, 48</a>
							<br />
							Stockholm						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/39">Kille söker par</a>						</td>
						<td width="140" class="date_col">
							2011-07-26  09:26						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_f51ac3bf6bbe52f8932ffa6178f8dc6a.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/291" class="user Man">chewie, 28</a>
							<br />
							Skåne						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/38">Prata?</a>						</td>
						<td width="140" class="date_col">
							2011-07-25  01:34						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_0ce5713e8daa248ff5b983caa99d80b3.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/46" class="user Kvinna">queenfrost, 34</a>
							<br />
							Uppsala						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/37">Het mamma söker ung söt</a>						</td>
						<td width="140" class="date_col">
							2011-07-20  01:52						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/man_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/513" class="user Man">arnold, 73</a>
							<br />
							Stockholm						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/36">Nu kör vi</a>						</td>
						<td width="140" class="date_col">
							2011-07-19  12:58						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_88f9874262b522ace4728cb99a78300b.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/497" class="user Man">lionman, 67</a>
							<br />
							Västra Götaland						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/33">Söker sköna människor</a>						</td>
						<td width="140" class="date_col">
							2011-07-17  20:15						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/man_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/470" class="user Man">Dannn, 43</a>
							<br />
							Skåne						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/32">Kravlöst</a>						</td>
						<td width="140" class="date_col">
							2011-07-17  19:32						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_842f3e1181daae3de5c479ff3bab05e9.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/179" class="user Man">storkungen, 24</a>
							<br />
							Uppsala						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/30">Ung söker milf</a>						</td>
						<td width="140" class="date_col">
							2011-07-16  03:39						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/man_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/448" class="user Man">tottte, 49</a>
							<br />
							Stockholm						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/28">finns du</a>						</td>
						<td width="140" class="date_col">
							2011-07-12  13:58						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/woman_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/425" class="user Kvinna">loveseek, 31</a>
							<br />
							Skåne						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/26">Sugen..på dig?</a>						</td>
						<td width="140" class="date_col">
							2011-07-10  20:17						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/man_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/421" class="user Man">maxii94, 21</a>
							<br />
							Västra Götaland						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/25">Tjej i västra götaland</a>						</td>
						<td width="140" class="date_col">
							2011-07-10  06:20						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_540dd51acd1bfc37a413070938b4db2f.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/393" class="user Man">shifty, 23</a>
							<br />
							Stockholm						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/24">gå på dejt eller träffas å knulla</a>						</td>
						<td width="140" class="date_col">
							2011-07-07  23:54						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/man_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/261" class="user Man">Daniel, 60</a>
							<br />
							Jönköping						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/23">Utveckling</a>						</td>
						<td width="140" class="date_col">
							2011-06-20  20:01						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/woman_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/184" class="user Kvinna">sofia1986, 28</a>
							<br />
							Stockholm						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/20">Diskret kk</a>						</td>
						<td width="140" class="date_col">
							2011-06-20  00:02						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_407b836c038876942dc9e90871e88115.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/202" class="user Man">asse999, 54</a>
							<br />
							Stockholm						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/19">Sällskap och förhoppningsvis livet ut</a>						</td>
						<td width="140" class="date_col">
							2011-06-15  13:07						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_e91fe018d8e144d9315c5986e52ec91f.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/129" class="user Man">egon, 25</a>
							<br />
							Halland						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/17">förhållande,vänskap </a>						</td>
						<td width="140" class="date_col">
							2011-06-08  18:30						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_0b6ad0f85f56489c66bc4d81341e4041.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/64" class="user Man">kuk, 46</a>
							<br />
							Stockholm						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/15">kåt sambokille</a>						</td>
						<td width="140" class="date_col">
							2011-06-08  14:02						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/man_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/66" class="user Man">Johan0800, 40</a>
							<br />
							Stockholm						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/14">Skön sex</a>						</td>
						<td width="140" class="date_col">
							2011-06-07  20:24						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/image/micro_55d61c8f1bc43bf4d6e5d4da7d1a6a80.jpg" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/104" class="user Man">xzumx79, 34</a>
							<br />
							Västra Götaland						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/10">Hej</a>						</td>
						<td width="140" class="date_col">
							2011-06-06  04:27						</td>
					</tr>
									<tr>
						<td width="50" class="image_col">
							<img src="/img/silhouette/man_micro.gif" alt="Profile image" />
						</td>
						<td width="190" class="user_col">
						<a href="/profile/view/profileid/76" class="user Man">skorpion, 46</a>
							<br />
							Stockholm						</td>
						<td width="250" class="headline_col">
							<a href="/ad/view/id/9">-</a>						</td>
						<td width="140" class="date_col">
							2011-06-04  19:38						</td>
					</tr>
							</table>
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

