<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"><html lang="sv" xml:lang="sv" xmlns="http://www.w3.org/1999/xhtml">

<!--  Validating the login session and returning to the index page otherwise -->

<%@ include file="include/validateSession.inc" %>


<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Bilder - ragga.nu</title>
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
       <script type="text/javascript" src="scripts/gallery.js"></script>
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

											<div id="image-gallery" class="margin-top">

	<div id="filter_bar">

		<h2>Bilder</h2>

		<form method="get" action="/gallery/browse">
							<ul class="gender">
											<li>Alla</li>
																							<li><a href="/gallery/browse/gender/1?min_age=18&max_age=99&sort=date">Man</a></li>
																								<li><a href="/gallery/browse/gender/2?min_age=18&max_age=99&sort=date">Kvinna</a></li>
																								<li><a href="/gallery/browse/gender/3?min_age=18&max_age=99&sort=date">Par</a></li>
															</ul>
				<input type="hidden" name="gender" value="all" />

			<div style="float: left;">

				<table id="gallery_form">
					<tr>
						<td>
							<label for="min_age">Ålder</label>
							<select name="min_age" id="min_age">
																	<option value="18" selected="selected">18</option>
																	<option value="19">19</option>
																	<option value="20">20</option>
																	<option value="21">21</option>
																	<option value="22">22</option>
																	<option value="23">23</option>
																	<option value="24">24</option>
																	<option value="25">25</option>
																	<option value="26">26</option>
																	<option value="27">27</option>
																	<option value="28">28</option>
																	<option value="29">29</option>
																	<option value="30">30</option>
																	<option value="31">31</option>
																	<option value="32">32</option>
																	<option value="33">33</option>
																	<option value="34">34</option>
																	<option value="35">35</option>
																	<option value="36">36</option>
																	<option value="37">37</option>
																	<option value="38">38</option>
																	<option value="39">39</option>
																	<option value="40">40</option>
																	<option value="41">41</option>
																	<option value="42">42</option>
																	<option value="43">43</option>
																	<option value="44">44</option>
																	<option value="45">45</option>
																	<option value="46">46</option>
																	<option value="47">47</option>
																	<option value="48">48</option>
																	<option value="49">49</option>
																	<option value="50">50</option>
																	<option value="51">51</option>
																	<option value="52">52</option>
																	<option value="53">53</option>
																	<option value="54">54</option>
																	<option value="55">55</option>
																	<option value="56">56</option>
																	<option value="57">57</option>
																	<option value="58">58</option>
																	<option value="59">59</option>
																	<option value="60">60</option>
																	<option value="61">61</option>
																	<option value="62">62</option>
																	<option value="63">63</option>
																	<option value="64">64</option>
																	<option value="65">65</option>
																	<option value="66">66</option>
																	<option value="67">67</option>
																	<option value="68">68</option>
																	<option value="69">69</option>
																	<option value="70">70</option>
																	<option value="71">71</option>
																	<option value="72">72</option>
																	<option value="73">73</option>
																	<option value="74">74</option>
																	<option value="75">75</option>
																	<option value="76">76</option>
																	<option value="77">77</option>
																	<option value="78">78</option>
																	<option value="79">79</option>
																	<option value="80">80</option>
																	<option value="81">81</option>
																	<option value="82">82</option>
																	<option value="83">83</option>
																	<option value="84">84</option>
																	<option value="85">85</option>
																	<option value="86">86</option>
																	<option value="87">87</option>
																	<option value="88">88</option>
																	<option value="89">89</option>
																	<option value="90">90</option>
																	<option value="91">91</option>
																	<option value="92">92</option>
																	<option value="93">93</option>
																	<option value="94">94</option>
																	<option value="95">95</option>
																	<option value="96">96</option>
																	<option value="97">97</option>
																	<option value="98">98</option>
																	<option value="99">99</option>
															</select>
						</td>
						<td>
							<br />
							<select name="max_age" id="max_age">
																	<option value="18">18</option>
																	<option value="19">19</option>
																	<option value="20">20</option>
																	<option value="21">21</option>
																	<option value="22">22</option>
																	<option value="23">23</option>
																	<option value="24">24</option>
																	<option value="25">25</option>
																	<option value="26">26</option>
																	<option value="27">27</option>
																	<option value="28">28</option>
																	<option value="29">29</option>
																	<option value="30">30</option>
																	<option value="31">31</option>
																	<option value="32">32</option>
																	<option value="33">33</option>
																	<option value="34">34</option>
																	<option value="35">35</option>
																	<option value="36">36</option>
																	<option value="37">37</option>
																	<option value="38">38</option>
																	<option value="39">39</option>
																	<option value="40">40</option>
																	<option value="41">41</option>
																	<option value="42">42</option>
																	<option value="43">43</option>
																	<option value="44">44</option>
																	<option value="45">45</option>
																	<option value="46">46</option>
																	<option value="47">47</option>
																	<option value="48">48</option>
																	<option value="49">49</option>
																	<option value="50">50</option>
																	<option value="51">51</option>
																	<option value="52">52</option>
																	<option value="53">53</option>
																	<option value="54">54</option>
																	<option value="55">55</option>
																	<option value="56">56</option>
																	<option value="57">57</option>
																	<option value="58">58</option>
																	<option value="59">59</option>
																	<option value="60">60</option>
																	<option value="61">61</option>
																	<option value="62">62</option>
																	<option value="63">63</option>
																	<option value="64">64</option>
																	<option value="65">65</option>
																	<option value="66">66</option>
																	<option value="67">67</option>
																	<option value="68">68</option>
																	<option value="69">69</option>
																	<option value="70">70</option>
																	<option value="71">71</option>
																	<option value="72">72</option>
																	<option value="73">73</option>
																	<option value="74">74</option>
																	<option value="75">75</option>
																	<option value="76">76</option>
																	<option value="77">77</option>
																	<option value="78">78</option>
																	<option value="79">79</option>
																	<option value="80">80</option>
																	<option value="81">81</option>
																	<option value="82">82</option>
																	<option value="83">83</option>
																	<option value="84">84</option>
																	<option value="85">85</option>
																	<option value="86">86</option>
																	<option value="87">87</option>
																	<option value="88">88</option>
																	<option value="89">89</option>
																	<option value="90">90</option>
																	<option value="91">91</option>
																	<option value="92">92</option>
																	<option value="93">93</option>
																	<option value="94">94</option>
																	<option value="95">95</option>
																	<option value="96">96</option>
																	<option value="97">97</option>
																	<option value="98">98</option>
																	<option value="99" selected="selected">99</option>
															</select>
						</td>
						<td>
							<label for="sort">Visa</label>
							<select name="sort" id="sort">
								<option value="" selected="selected">Senast inlagda</option>
								<option value="rating">Högst betyg</option>
								<option value="views">Mest visade</option>
								<option value="comments">Flest kommentarer</option>
							</select>
						</td>
					</tr>
				</table>

			</div>

			<input type="submit" class="submit" value="Visa" />
		</form>
	</div>

	<div class="clear"></div>

	<a href="/gallery/upload" class="btn_big"><span>Ladda upp en egen bild</span></a>


	<div class="clear"></div>

	<div id="images_container">
									<div class="image_item">
					<a class="image_link"href="/gallery/view/id/786/user/1563">
						<img src="/image/gallery_7c67bc728417c5226d61c16b263299ef.jpg" />
					</a>
					<a href="/profile/view/profileid/1234" class="Kvinna username">
						Rockabilla, 35					</a>
					<div class="clear"></div>
					<span class="float_right">2014-07-04 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">7 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/785/user/1563">
						<img src="/image/gallery_6b156f0bc7df2fd8917bef68c8194de1.jpg" />
					</a>
					<a href="/profile/view/profileid/1234" class="Kvinna username">
						Rockabilla, 35					</a>
					<div class="clear"></div>
					<span class="float_right">2014-07-04 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">4 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/784/user/1563">
						<img src="/image/gallery_4edc971f4932bd9ca8bc3974ed9d7674.jpg" />
					</a>
					<a href="/profile/view/profileid/1234" class="Kvinna username">
						Rockabilla, 35					</a>
					<div class="clear"></div>
					<span class="float_right">2014-07-04 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">4 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item last">
					<a class="image_link"href="/gallery/view/id/761/user/3">
						<img src="/image/gallery_5accb2d79c162d60b5596040f8ea0b3a.png" />
					</a>
					<a href="/profile/view/profileid/3" class="Man username">
						Danzken, 37					</a>
					<div class="clear"></div>
					<span class="float_right">2014-02-17 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">1 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/756/user/1493">
						<img src="/image/gallery_a5e0910007c60bb84767cd16a7819337.jpg" />
					</a>
					<a href="/profile/view/profileid/1190" class="Man username">
						Kevin111, 25					</a>
					<div class="clear"></div>
					<span class="float_right">2013-05-19 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">1 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/753/user/1483">
						<img src="/image/gallery_84b74b9f4978a55e8d3e756543fa2d16.jpg" />
					</a>
					<a href="/profile/view/profileid/1180" class="Man username">
						langen198, 47					</a>
					<div class="clear"></div>
					<span class="float_right">2013-05-03 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">6 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/752/user/1475">
						<img src="/image/gallery_6e5bf1e1d523a371b629fac30f2e34ba.jpg" />
					</a>
					<a href="/profile/view/profileid/1172" class="Man username">
						NjoyLife, 48					</a>
					<div class="clear"></div>
					<span class="float_right">2013-04-18 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">1 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item last">
					<a class="image_link"href="/gallery/view/id/749/user/1460">
						<img src="/image/gallery_56c0da3c2fc367acc34c7e2ccd118c3c.jpg" />
					</a>
					<a href="/profile/view/profileid/1163" class="Man username">
						KockSlusk, 36					</a>
					<div class="clear"></div>
					<span class="float_right">2013-04-05 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">3 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/748/user/1443">
						<img src="/image/gallery_840c99c69af3d123dccc6c1809bfdb26.jpg" />
					</a>
					<a href="/profile/view/profileid/1160" class="Man username">
						BIG BRO, 39					</a>
					<div class="clear"></div>
					<span class="float_right">2013-03-27 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">1 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/745/user/7">
						<img src="/image/gallery_8014eacfaa02f9b1363d92bddb6a84cf.jpg" />
					</a>
					<a href="/profile/view/profileid/7" class="Kvinna username">
						sexybiaatchh, 22					</a>
					<div class="clear"></div>
					<span class="float_right">2013-02-27 </span>
					1 kommentarer
					<div class="clear"></div>
					<span class="float_right">51 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 75%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/744/user/7">
						<img src="/image/gallery_0baae9056dd0dee2970cb94c2c566e8c.jpg" />
					</a>
					<a href="/profile/view/profileid/7" class="Kvinna username">
						sexybiaatchh, 22					</a>
					<div class="clear"></div>
					<span class="float_right">2013-02-27 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">44 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 90%;"></div>
					</div>
				</div>
							<div class="image_item last">
					<a class="image_link"href="/gallery/view/id/742/user/1411">
						<img src="/image/gallery_67b402d5de6adead27b10c8fe49c62eb.jpg" />
					</a>
					<a href="/profile/view/profileid/1145" class="Kvinna username">
						ThatGal, 21					</a>
					<div class="clear"></div>
					<span class="float_right">2013-02-25 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">36 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 80%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/741/user/1411">
						<img src="/image/gallery_3a53f534b21844a1999f8281f55399f3.jpg" />
					</a>
					<a href="/profile/view/profileid/1145" class="Kvinna username">
						ThatGal, 21					</a>
					<div class="clear"></div>
					<span class="float_right">2013-02-25 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">32 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 67%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/739/user/1410">
						<img src="/image/gallery_ae0137cc6386de1127f85c5c93f37644.jpg" />
					</a>
					<a href="/profile/view/profileid/1144" class="Kvinna username">
						ladyblue, 59					</a>
					<div class="clear"></div>
					<span class="float_right">2013-02-24 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">26 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 80%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/738/user/1410">
						<img src="/image/gallery_213adcdc95fdb7d868e3696bfd4f4eef.jpg" />
					</a>
					<a href="/profile/view/profileid/1144" class="Kvinna username">
						ladyblue, 59					</a>
					<div class="clear"></div>
					<span class="float_right">2013-02-24 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">18 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item last">
					<a class="image_link"href="/gallery/view/id/737/user/1410">
						<img src="/image/gallery_5055a6c11962affaefa9a71ed5bf9553.jpg" />
					</a>
					<a href="/profile/view/profileid/1144" class="Kvinna username">
						ladyblue, 59					</a>
					<div class="clear"></div>
					<span class="float_right">2013-02-24 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">12 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/733/user/1125">
						<img src="/image/gallery_a41533ba69481b04df6cdca14fae632a.jpg" />
					</a>
					<a href="/profile/view/profileid/916" class="Man username">
						jagvilhasex, 20					</a>
					<div class="clear"></div>
					<span class="float_right">2013-02-06 </span>
					2 kommentarer
					<div class="clear"></div>
					<span class="float_right">16 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 100%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/727/user/1389">
						<img src="/image/gallery_e6e6c58f15e875f0b959739afb8182ca.jpg" />
					</a>
					<a href="/profile/view/profileid/1128" class="Man username">
						kuch1, 20					</a>
					<div class="clear"></div>
					<span class="float_right">2013-01-22 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">9 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/726/user/1389">
						<img src="/image/gallery_2241aba6f0fa0e158d322bbe89ec57ff.jpg" />
					</a>
					<a href="/profile/view/profileid/1128" class="Man username">
						kuch1, 20					</a>
					<div class="clear"></div>
					<span class="float_right">2013-01-22 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">7 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item last">
					<a class="image_link"href="/gallery/view/id/716/user/1370">
						<img src="/image/gallery_bf2aebe8fbee4685169707e2e7c62cbb.jpg" />
					</a>
					<a href="/profile/view/profileid/1115" class="Kvinna username">
						Mira, 31					</a>
					<div class="clear"></div>
					<span class="float_right">2013-01-02 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">21 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 80%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/715/user/1370">
						<img src="/image/gallery_906e9657e99700c3a9a3eb76e80541c5.jpg" />
					</a>
					<a href="/profile/view/profileid/1115" class="Kvinna username">
						Mira, 31					</a>
					<div class="clear"></div>
					<span class="float_right">2013-01-02 </span>
					1 kommentarer
					<div class="clear"></div>
					<span class="float_right">21 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 100%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/714/user/1370">
						<img src="/image/gallery_798fea15e2829a4b65c2a5e26b56a07c.jpg" />
					</a>
					<a href="/profile/view/profileid/1115" class="Kvinna username">
						Mira, 31					</a>
					<div class="clear"></div>
					<span class="float_right">2013-01-02 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">12 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/713/user/1370">
						<img src="/image/gallery_390349c345e1917866ed31ec994592c6.jpg" />
					</a>
					<a href="/profile/view/profileid/1115" class="Kvinna username">
						Mira, 31					</a>
					<div class="clear"></div>
					<span class="float_right">2013-01-02 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">16 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 80%;"></div>
					</div>
				</div>
							<div class="image_item last">
					<a class="image_link"href="/gallery/view/id/711/user/1125">
						<img src="/image/gallery_5d30b1b3ca7be7af42b9e6c78201a767.jpg" />
					</a>
					<a href="/profile/view/profileid/916" class="Man username">
						jagvilhasex, 20					</a>
					<div class="clear"></div>
					<span class="float_right">2012-12-23 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">16 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/710/user/1125">
						<img src="/image/gallery_b0eb237656368af66422a60eef52e360.jpg" />
					</a>
					<a href="/profile/view/profileid/916" class="Man username">
						jagvilhasex, 20					</a>
					<div class="clear"></div>
					<span class="float_right">2012-12-23 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">9 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 100%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/708/user/1355">
						<img src="/image/gallery_2a08f46caee13805341113eb5035c666.jpg" />
					</a>
					<a href="/profile/view/profileid/1105" class="Man username">
						elajah0_0, 34					</a>
					<div class="clear"></div>
					<span class="float_right">2012-12-15 </span>
					1 kommentarer
					<div class="clear"></div>
					<span class="float_right">7 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 100%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/703/user/1337">
						<img src="/image/gallery_06d1d95cac71780d47b130d18a89a2fe.jpg" />
					</a>
					<a href="/profile/view/profileid/1095" class="Man username">
						robban79, 35					</a>
					<div class="clear"></div>
					<span class="float_right">2012-12-03 </span>
					2 kommentarer
					<div class="clear"></div>
					<span class="float_right">5 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 100%;"></div>
					</div>
				</div>
							<div class="image_item last">
					<a class="image_link"href="/gallery/view/id/702/user/1337">
						<img src="/image/gallery_994429eb1f3e1ab88dc9d0056bcf0c85.jpg" />
					</a>
					<a href="/profile/view/profileid/1095" class="Man username">
						robban79, 35					</a>
					<div class="clear"></div>
					<span class="float_right">2012-12-03 </span>
					1 kommentarer
					<div class="clear"></div>
					<span class="float_right">2 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/688/user/1314">
						<img src="/image/gallery_42d879a8603c672b3d78681434929f70.jpg" />
					</a>
					<a href="/profile/view/profileid/1079" class="Man username">
						canalomo1, 44					</a>
					<div class="clear"></div>
					<span class="float_right">2012-11-07 </span>
					1 kommentarer
					<div class="clear"></div>
					<span class="float_right">10 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 80%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/687/user/1314">
						<img src="/image/gallery_30ff8a700b20d6b501d253c68a3a822e.jpg" />
					</a>
					<a href="/profile/view/profileid/1079" class="Man username">
						canalomo1, 44					</a>
					<div class="clear"></div>
					<span class="float_right">2012-11-07 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">5 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/626/user/1211">
						<img src="/image/gallery_4c12e4f1aceec48f1cbca19c16182d7b.jpg" />
					</a>
					<a href="/profile/view/profileid/989" class="Man username">
						lilla.mi88, 26					</a>
					<div class="clear"></div>
					<span class="float_right">2012-06-27 </span>
					1 kommentarer
					<div class="clear"></div>
					<span class="float_right">13 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 100%;"></div>
					</div>
				</div>
							<div class="image_item last">
					<a class="image_link"href="/gallery/view/id/625/user/1211">
						<img src="/image/gallery_48b43ba07c0c2d4ada877e3f1cb74a6e.jpg" />
					</a>
					<a href="/profile/view/profileid/989" class="Man username">
						lilla.mi88, 26					</a>
					<div class="clear"></div>
					<span class="float_right">2012-06-27 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">7 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/618/user/1191">
						<img src="/image/gallery_a870bd14d822f18e45a7c495bd3440a5.jpg" />
					</a>
					<a href="/profile/view/profileid/972" class="Man username">
						Peterjag, 39					</a>
					<div class="clear"></div>
					<span class="float_right">2012-06-25 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">5 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/604/user/1138">
						<img src="/image/gallery_08bcc835baf1cf2f55f0118027aff473.jpg" />
					</a>
					<a href="/profile/view/profileid/927" class="Man username">
						janne66, 48					</a>
					<div class="clear"></div>
					<span class="float_right">2012-06-16 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">7 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/602/user/1110">
						<img src="/image/gallery_1e989a4243e38b4b5fac384d5663ad9a.jpg" />
					</a>
					<a href="/profile/view/profileid/903" class="Man username">
						bamse, 40					</a>
					<div class="clear"></div>
					<span class="float_right">2012-06-15 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">4 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item last">
					<a class="image_link"href="/gallery/view/id/601/user/1074">
						<img src="/image/gallery_3db9801f03ac17b6b89741efd68c5c65.jpg" />
					</a>
					<a href="/profile/view/profileid/871" class="Man username">
						Matte_35, 38					</a>
					<div class="clear"></div>
					<span class="float_right">2012-06-15 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">3 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/590/user/1079">
						<img src="/image/gallery_faba83db33930d528db839dddf6dc1a1.jpg" />
					</a>
					<a href="/profile/view/profileid/877" class="Man username">
						Bhard, 35					</a>
					<div class="clear"></div>
					<span class="float_right">2012-06-10 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">3 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/588/user/1074">
						<img src="/image/gallery_5538657e8672a3f946e20981f82bfef9.jpg" />
					</a>
					<a href="/profile/view/profileid/871" class="Man username">
						Matte_35, 38					</a>
					<div class="clear"></div>
					<span class="float_right">2012-06-10 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">3 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 80%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/584/user/1064">
						<img src="/image/gallery_7d8fa3b3d4ed3f35e4e041f953abfd90.jpg" />
					</a>
					<a href="/profile/view/profileid/864" class="Man username">
						mindfuck, 44					</a>
					<div class="clear"></div>
					<span class="float_right">2012-06-09 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">4 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item last">
					<a class="image_link"href="/gallery/view/id/581/user/1059">
						<img src="/image/gallery_68a716efdaa44964b392e753c09acfa2.jpg" />
					</a>
					<a href="/profile/view/profileid/860" class="Man username">
						redbuljim, 39					</a>
					<div class="clear"></div>
					<span class="float_right">2012-06-09 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">4 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/580/user/1059">
						<img src="/image/gallery_d47768c556d2814847b2fb02eb5dcdd3.jpg" />
					</a>
					<a href="/profile/view/profileid/860" class="Man username">
						redbuljim, 39					</a>
					<div class="clear"></div>
					<span class="float_right">2012-06-09 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">6 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/579/user/1059">
						<img src="/image/gallery_0f9a2d307afb9ad9a243509a181e5ce6.jpg" />
					</a>
					<a href="/profile/view/profileid/860" class="Man username">
						redbuljim, 39					</a>
					<div class="clear"></div>
					<span class="float_right">2012-06-09 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">5 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/578/user/1059">
						<img src="/image/gallery_96b4ed6eeb60de7c95f5128c54a91b76.jpg" />
					</a>
					<a href="/profile/view/profileid/860" class="Man username">
						redbuljim, 39					</a>
					<div class="clear"></div>
					<span class="float_right">2012-06-09 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">1 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item last">
					<a class="image_link"href="/gallery/view/id/577/user/1059">
						<img src="/image/gallery_8e4f8e2cd01d1212304f96860d7b5f03.jpg" />
					</a>
					<a href="/profile/view/profileid/860" class="Man username">
						redbuljim, 39					</a>
					<div class="clear"></div>
					<span class="float_right">2012-06-09 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">1 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/576/user/1059">
						<img src="/image/gallery_955af2f3af7e745042086e640f34f187.jpg" />
					</a>
					<a href="/profile/view/profileid/860" class="Man username">
						redbuljim, 39					</a>
					<div class="clear"></div>
					<span class="float_right">2012-06-09 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">0 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/575/user/1059">
						<img src="/image/gallery_831fb0d4c29bc5ac9402f95081dfb090.jpg" />
					</a>
					<a href="/profile/view/profileid/860" class="Man username">
						redbuljim, 39					</a>
					<div class="clear"></div>
					<span class="float_right">2012-06-09 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">2 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item">
					<a class="image_link"href="/gallery/view/id/574/user/1059">
						<img src="/image/gallery_add633b33229d9e3ee9efa0d2c27cf11.jpg" />
					</a>
					<a href="/profile/view/profileid/860" class="Man username">
						redbuljim, 39					</a>
					<div class="clear"></div>
					<span class="float_right">2012-06-09 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">0 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
							<div class="image_item last">
					<a class="image_link"href="/gallery/view/id/573/user/1059">
						<img src="/image/gallery_3d1135b5c7a80e1b3ca8f10408468702.jpg" />
					</a>
					<a href="/profile/view/profileid/860" class="Man username">
						redbuljim, 39					</a>
					<div class="clear"></div>
					<span class="float_right">2012-06-09 </span>
					0 kommentarer
					<div class="clear"></div>
					<span class="float_right">0 visningar</span>
					<div class="small_rating">
						<div class="active_rating" style="width: 0%;"></div>
					</div>
				</div>
						<div class="clear"></div>
				<div class="mod-pagination margin-top">

									<span class="item">
					1				</span>
												<span class="item">
					<a href="/gallery/browse/page/2">2</a>
				</span>
												<span class="item">
					<a href="/gallery/browse/page/3">3</a>
				</span>
												<span class="item">
					<a href="/gallery/browse/page/4">4</a>
				</span>

					<span class="item">
				<a href="/gallery/browse/page/2">Nästa</a>
			</span>
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

