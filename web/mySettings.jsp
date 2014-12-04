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
		<div class="col1 col-stretch-half section-main">
						<div id="settings">
	<div class="box">
		<h1>Inställningar för PatriciaX</h1>

		<form enctype="application/x-www-form-urlencoded" action="/settings/changecontactsettings" method="post"><dl class="zend_form">
<dt id="gender-label"><label for="gender" class="optional">Jag vill endast bli kontaktad av</label></dt>
<dd id="gender-element">
<label for="gender-1"><input type="checkbox" name="gender[]" id="gender-1" value="1" />Man</label><br /><label for="gender-2"><input type="checkbox" name="gender[]" id="gender-2" value="2" />Kvinna</label><br /><label for="gender-3"><input type="checkbox" name="gender[]" id="gender-3" value="3" />Par</label></dd>
<dt id="from-label"><label for="from" class="required">Ålder från</label></dt>
<dd id="from-element">
<select name="from" id="from">
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
<dt id="to-label"><label for="to" class="required">Ålder till</label></dt>
<dd id="to-element">
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
<dt id="submit-label">&#160;</dt><dd id="submit-element">
<input type="submit" name="submit" id="submit" value="Spara" /></dd></dl></form>
		<div class="clear"></div>

		<hr class="special_hr" />

		<div id="change_credentials">
			 <div class="col">
				 <h3>Ändra e-postadress</h3>
				<form enctype="application/x-www-form-urlencoded" action="/settings/changeemail" method="post"><dl class="zend_form">
<dt id="current_email-label"><label for="current_email" class="required">Nuvarande e-post</label></dt>
<dd id="current_email-element">
<input type="text" name="current_email" id="current_email" value="linus_dalin@hotmail.com" /></dd>
<dt id="new_email-label"><label for="new_email" class="required">Ny e-post</label></dt>
<dd id="new_email-element">
<input type="text" name="new_email" id="new_email" value="" /></dd>
<dt id="submit-label">&#160;</dt><dd id="submit-element">
<input type="submit" name="submit" id="submit" value="Ändra" /></dd></dl></form>			</div>
			 <div class="col">
				 <h3>Ändra lösenord</h3>
				<form enctype="application/x-www-form-urlencoded" action="/settings/changepassword" method="post"><dl class="zend_form">
<dt id="current_password-label"><label for="current_password" class="required">Nuvarande lösenord</label></dt>
<dd id="current_password-element">
<input type="password" name="current_password" id="current_password" value="" /></dd>
<dt id="new_password-label"><label for="new_password" class="required">Nytt lösenord</label></dt>
<dd id="new_password-element">
<input type="password" name="new_password" id="new_password" value="" /></dd>
<dt id="submit-label">&#160;</dt><dd id="submit-element">
<input type="submit" name="submit" id="submit" value="Ändra" /></dd></dl></form>			</div>
		</div>
	</div>

	<div class="box">
		<h2>Avsuta ditt Raggkonto</h2>

		<p class="padding-bottom">
			Vill du avsluta ditt konto? Klicka isåfall på knapen nedan. Men tänk igenom ditt beslut innan, för all data kopplat till ditt konto kommer att raderas!
		</p>

		<a href="/settings/deleteaccount" class="btn_big inverted confirm"><span>Avsluta ditt konto</span></a>

		<div class="clear"></div>
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


