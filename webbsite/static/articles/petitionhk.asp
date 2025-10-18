
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<title>Webb-site Reports</title>
</head>
<body>

<div id="banner" style="background-color:blue">
	<div class="box1">
		<a href="/" class="nodec">
		<span style="font-size:1.6em;margin:0"><b>Webb-site Reports</b></span><br>
		<span style="font-size:0.9em"><b>News, analysis and opinions since 1998</b></span></a><br>
		<div id="rss" style="float:left;height:30px;padding:2px;margin-top:4px;">
			<a type="application/rss+xml" href="/rss.asp"><img alt="RSS feed" src="/images/RSS28x28.png"></a>
			<div id="social" style="float:right;margin-left:2px">
				<a href="https://x.com/webbhk"><img alt="Follow us on X" src="/images/x27x28.png" style="background-color:black;margin-left:2px"></a>
				<a href="https://www.facebook.com/webbfb"><img alt="Follow us on Facebook" src="/images/facebook28x28.png" style="margin-left:2px"></a>
			</div>
		</div>
		<label for="menuchk" id="menubtn">Menu</label>
		<div id="loginbtn">
			
				<a href="/webbmail/login.asp" class="nodec">log in</a>
			
		</div>
		<div class="clear"></div>
		<div id="volunteer">
			<a href="/webbmail/username.asp" class="nodec"><b>Volunteer to edit the database</b></a>
		</div>
		<label for="srchchk" id="srchbtn">search</label>
	</div>
	<input type="checkbox" id="srchchk" style="display:none">
	<div id="srchblk" style="background-color:inherit;">
		<div class="box4">
			<!-- SiteSearch Google -->
			<form class="box4a" method="get" action="https://www.google.com/search">
				<input type="hidden" name="ie" value="UTF-8">
				<input type="hidden" name="oe" value="UTF-8">
				<input type="hidden" name="domains" value="Webb-site.com">
				<input type="hidden" name="sitesearch" value="Webb-site.com">
				<input type="text" class="inptxt searchws" name="q" maxlength="255" value="search Webb-site.com" onclick="value=''">
				<input type="submit" class="btnFont" name="btnG" value="search">
			</form>
			<form class="box4b" method="post" action="/webbmail/join.asp">
				<input type="text" class="inptxt signup" name="e" value="email address" onclick="value=''">
				<input type="submit" class="btnFont" value="sign up">
				<input type="hidden" name="R1" value="join">
			</form>
		</div>
		<div class="group1">
			<div class="box3">
				<form class="box3a" method="post" action="/dbpub/searchorgs.asp" style="margin-bottom:5px">
					<input type="text" class="inptxt orgsearch" name="n" maxlength="255" value="Organisation" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search organisations">
				</form>
				<form class="box3b" method="post" action="/dbpub/searchpeople.asp">
					<input type="text" class="inptxt famsearch" name="n1" maxlength="255" value="Family name" onclick="value=''">
					<input type="text" class="inptxt famsearch" name="n2" maxlength="255" value="First name" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search people">
				</form>
			</div>
			<form class="stockbox" action="/dbpub/orgdata.asp" method="get" name="f1">
				<p>Stock code</p>
				<input type="number" class="inptxt stockcode" name="code" min="1" max="99999" maxlength="5" pattern="[0-9]*" onclick="value=''"><br>
				<input type="submit" class="btnFont" name="Submit" value="current" onclick="f1.action='/dbpub/orgdata.asp'">
				<input type="submit" class="btnFont" value="past" onclick="f1.action='/dbpub/code.asp'">
			</form>
		</div>
	</div>
</div>
<div id="menubar" style="background-color:blue;">
	<div class="hnav">
		<input type="checkbox" id="menuchk" style="display:none">
		<ul>
		<li><a href="/">Home</a></li>
		<li><a href="/dbpub/">Database</a></li>
		<li><a href="/webbmail/login.asp">User</a>
			<ul>
				
					<li><a href="/webbmail/login.asp">Log in</a></li>
				
				<li><a href="/webbmail/join.asp">Sign up</a></li>
				<li><a href="/webbmail/forgot.asp">Forgot password</a></li>
				
			</ul>
		</li>
		<li><a href="/articles/">Archive</a></li>
		<li><a href="/pages/tools.asp">Tools</a>
			<ul>
				<li><a href="/pages/howtovote.asp">How to vote</a></li>
				<li><a href="/library/">Reference library</a></li>
				<li><a href="/cg/">CG directory</a></li>
				<li><a href="https://www.icris.cr.gov.hk/csci/login_i.do?loginType=iguest&OPT_01=1&OPT_02=1&OPT_03=1&OPT_04=1&OPT_05=1&OPT_06=1&OPT_07=1&OPT_08=1&OPT_09=1">Companies Registry</a></li>
				<li><a href="http://sdinotice.hkex.com.hk/di/NSSrchMethod.aspx?src=MAIN&lang=EN&in=1">Dealing disclosures</a></li>
				<li><a href="http://www.hsi.com.hk">Hang Seng Index</a></li>
				<li><a href="http://legalref.judiciary.gov.hk/lrs/common/ju/newjudgments.jsp">Judgments</a></li>
			</ul>
		</li>
		<li><a href="/vote/">Polls</a></li>
		<li><a href="/pages/hallofshame.asp">Hall of Shame</a></li>
		<li><a href="/pages/stuff.asp">Other stuff</a>
			<ul>
				<li><a href="/HAMS/">HAMS proposal</a></li>
				<li><a href="/pages/electiondisclosures.asp">Election returns</a></li>
				<li><a href="/articles/PECSregister.asp">PECS register</a></li>
				<li><a href="/pages/loopholes.asp">Listing Loopholes</a></li>
				<li><a href="/books/">Webb-Books</a></li>
				<li><a href="/news/">Old newsletters</a></li>
				<li><a href="/dbpub/subject.asp?c=160">Laughing Stock</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/arrivals/passenger.page">Flight arrivals</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/departures/passenger.page">Flight departures</a></li>
				<li><a href="https://www.liveatc.net/search/?icao=HKG">Air traffic radio</a></li>
				<li><a href="https://www.hkemobility.gov.hk/en/traffic-information/live/cctv">Road traffic</a></li>
				<li><a href="https://www.weather.gov.hk/en/">Weather</a></li>
				<li><a href="/dbpub/idcheck.asp">HKID check digit</a></li>
				<li><a href="/dbpub/HKBRcheck.asp">HKBR check digit</a></li>
			</ul>
		</li>
		<li><a href="/pages/about.asp">About</a>
			<ul>
				<li><a href="/pages/aboutus.asp">About us</a></li>
				<li><a href="/photos/">Webb-Photos</a></li>
				<li><a href="/pages/mediaroom.asp">Media room</a></li>
				<li><a href="/dbpub/webbchips.asp">Webb-chips</a></li>
				<li><a href="/pages/privacypolicy.asp">Privacy policy</a></li>
			</ul>
		</li>
		<li><a href="/contact/">Contact</a></li>
		<li><a href="/pages/refer.asp">Tell a Friend!</a></li>
		<li><a href="/pages/hkradio.asp">Radio</a>
			<ul>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio1">RTHK 1</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio2">RTHK 2</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio3">RTHK 3 English</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio4">RTHK 4 Classics</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio5">RTHK 5</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio6">RTHK 6 CNR</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/pth">RTHK Putonghua</a></li>
				<li><a target="_blank" href="https://www.881903.com/live/881">Commercial Radio</a></li>
				<li><a target="_blank" href="http://www.metroradio.com.hk/Live/1044/">Metro Radio</a></li>		
				<li><a target="_blank" href="https://www.bbc.co.uk/sounds/player/bbc_world_service">BBC World Service</a></li>
			</ul>
		</li>
		<li><a href="/pages/TV.asp">TV</a>
			<ul>
				<li><a target="_blank" href="https://www.abc.net.au/news/newschannel/">ABC News (Australia)</a></li>
				<li><a target="_blank" href="https://www.aljazeera.com/live">Al Jazeera</a></li>
				<li><a target="_blank" href="https://www.bloomberg.com/live">Bloomberg</a></li>
				<li><a target="_blank" href="https://www.dw.com/en/media-center/live-tv/s-100825">DW-TV</a></li>
				<li><a target="_blank" href="https://www.france24.com/en/live">France 24</a></li>
				<li><a target="_blank" href="https://www.nasa.gov/nasatv/">NASA</a></li>
				<li><a target="_blank" href="https://hoy.tv/live">Hoy TV</a></li>
				<li><a target="_blank" href="https://news.now.com/home/live">Now TV News</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/tv">RTHK TV</a></li>
				<li><a target="_blank" href="https://news.tvb.com/tc/live/83">TVB iNews</a></li>
				<li><a target="_blank" href="https://www.viu.tv/ch">Viu TV</a></li>
			</ul>
		</li>
		</ul>
	</div>
</div>
<div class="clear"></div>
<div class="mainbody">

<script type="text/javascript">document.title="Delivery of petition for HK democracy";</script>

	<div class="summary">Webb-site has today delivered to the CE's Office the petition with the first 2,114 signatures. The realistic and pragmatic petition remains open for signature, so it is not too late to add your voice. The CE has an opportunity to resolve the impasse over constitutional development, move HK forward, and land on the right side of history.</div>

<h2 class="center">Delivery of petition for HK democracy<br>
<span class="headlinedate">31 October 2014</span></h2>
<p class="revisedate">(with response 21-Nov-2014)</p>
<p>To: <a href="mailto:ceo@ceo.gov.hk">ceo@ceo.gov.hk</a><br>Mr Leung Chun Ying<br>
Chief Executive<br>Hong Kong Special Administrative Region<br>The People's 
Republic of China</p>
<p>Dear Chief Executive,</p>
<p>As you may know, a petition has been running for a week so far, on Avaaz.org, 
a leading international petition site. 
<a href="https://secure.avaaz.org/en/petition/Hong_Kong_Chief_Executive_Leung_Chun_Ying_Send_a_new_report_to_the_NPCSC_asking_for_true_democracy_in_HK/" target="_blank">
<strong>The bilingual petition, at this link</strong></a>, has so far been signed by 2,114 people, 
the vast majority of which are HK residents. It 
remains open for signature. The current list of signatures is
<a href="../codocs/petitionHKsigners.pdf" target="_blank">attached</a>. The 
petition calls on you as follows:</p>
<div class="regbox">
<h1>HK Chief Executive C Y Leung: send a new report to 
NPCSC, for true democracy in HK<br>&#33268;&#39321;&#28207;&#34892;&#25919;&#38263;&#23448;&#26753;&#25391;&#33521;:&#28858;&#39321;&#28207;&#26377;&#30495;&#27491;&#27665;&#20027;&#65292;&#25552;&#20132;&#26032;&#22577;&#21578;&#32102;&#20840;&#22283;&#20154;&#22823;&#24120;&#22996;&#26371;</h1>
<p>HK has waited too long for true democracy. The National 
People's Congress Standing Committee has proposed fake democracy with candidates 
needing 50% approval of the Nominating Committee. The HK leader must send a new 
report to the NPCSC, recommending restoring the nomination threshold to 1/8 
(12.5%) of the NC (1 candidate per member), to allow candidates for Chief 
Executive to run for universal suffrage election in 2017 without being 
pre-elected, and thereby allowing up to 8 candidates. He must also table local 
legislation to abolish corporate voting for the NC and the Legislative Council 
in 2016 and make the NC and LegCo more democratic.</p>
<p>
&#39321;&#28207;&#31561;&#24453;&#30495;&#27491;&#30340;&#27665;&#20027;&#24050;&#32147;&#22826;&#20037;&#20102;&#12290;&#20840;&#22283;&#20154;&#22823;&#24120;&#22996;&#26371;&#25552;&#20986;&#29305;&#39318;&#20505;&#36984;&#20154;&#38656;&#24471;&#21040;&#25552;&#22996;&#26371;&#21322;&#25976;&#25903;&#25345;&#26159;&#20551;&#27665;&#20027;&#12290;&#39321;&#28207;&#38936;&#23566;&#20154;&#24517;&#38920;&#25552;&#20132;&#19968;&#20221;&#26032;&#30340;&#22577;&#21578;&#65292;&#24314;&#35696;&#20840;&#22283;&#20154;&#22823;&#24120;&#22996;&#26371;&#24674;&#24489;&#25552;&#21517;&#38272;&#27323;&#33267;&#24471;&#21040;&#25552;&#22996;&#26371;&#20843;&#20221;&#19968; 
(12.5%) &#25903;&#25345;&#20415;&#21487; 
(&#27599;&#19968;&#22996;&#26371;&#21482;&#21487;&#36984;&#19968;&#20505;&#36984;&#20154;)&#65292;&#23481;&#35377;2017&#24180;&#30340;&#29305;&#39318;&#26222;&#36984;&#20505;&#36984;&#20154;&#19981;&#38656;&#32147;&#36942;&#38928;&#20808;&#31721;&#36984;&#65292;&#20134;&#21487;&#26377;&#22810;&#36948;&#20843;&#20491;&#20505;&#36984;&#20154;&#12290;&#21516;&#26178;&#20182;&#20134;&#24517;&#38920;&#24314;&#35696;&#31435;&#27861;&#24290;&#38500;&#25552;&#22996;&#26371;&#21450;2016&#24180;&#31435;&#27861;&#23616;&#30340;&#20844;&#21496;&#36984;&#31080;&#65292;&#20351;&#25552;&#22996;&#26371;&#21450;&#31435;&#27861;&#23616;&#26356;&#21152;&#27665;&#20027;&#12290;</p>
<p>If there is any inconsistency or ambiguity between the 
English version and the Chinese version, the English version shall prevail.</p>
<p>&#27492;&#20013;&#25991;&#28858;&#33521;&#25991;&#29256;&#26412;&#35695;&#26412;&#65292;&#22914;&#20013;&#12289;&#33521;&#25991;&#20841;&#20491;&#29256;&#26412;&#26377;&#20219;&#20309;&#25269;&#35320;&#25110;&#19981;&#30456;&#31526;&#20043;&#34389;&#65292;&#25033;&#20197;&#33521;&#25991;&#29256;&#26412;&#28858;&#28310;&#12290;</p>
</div>
<p>Please act on this. Please update, or if you prefer, restart, the "Five-step 
process", to update the NPCSC on the "Actual Situation in the HKSAR" as required 
by the Basic Law and the
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/images/basiclawtext_doc18.pdf" target="_blank">
6-Apr-2004 decision</a> of the NPCSC. Please recommend to the NPCSC that they 
restore the nomination threshold to 12.5%, as it was in 2012, rather than the
<a href="http://www.2017.gov.hk/filemanager/template/en/doc/20140831b.pdf" target="_blank">
50% proposal</a> which would make it 4 times harder to be nominated than in 2012. 
That would not be "gradual and orderly progress", but a great leap backward.</p>
<p>This realistic and pragmatic petition does not call for direct civic 
nomination, which is not permitted by
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_4.html" target="_blank">
Article 45</a> of the Basic Law, unless amended. It only calls for restoration 
of the nomination threshold to allow all candidates a fair opportunity to be 
nominated, and for HK legislation to abolish corporate voting in the elections 
for members of the Nominating Committee and in the Legislative Council 
Functional Constituencies for 2016, to make both more representative.</p>
<p>Corporate voting can be replaced in many cases using professional 
registers such as those available from the Estate Agents Authority, the 
Securities and Futures Commission, the Hong Kong Monetary Authority and the 
Construction Workers Registration Authority, following the existing principles 
for teachers, accountants, lawyers, architects, engineers, social workers and 
other professions who already have direct votes. This should then pave the way 
for the abolition of FCs in 2020 consistent with the
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/images/basiclawtext_doc21.pdf" target="_blank">
29-Dec-2007 decision</a> of the NPCSC.</p>
<p>We look forward to your favourable response. You have the opportunity to 
resolve the current impasse over constitutional development, move Hong Kong 
forward, and land on the right side of history.</p>
<p>Yours sincerely,</p>
<p>David M. Webb<br>Founder, Webb-site.com</p>
<hr>
<h3 id="response1">Initial Response</h3>
<p><em>Received at 11:33 on 6-Nov-2014:</em></p>
<p>Dear Mr Webb, <br><br>Thank you for your email of 31.10.14, attaching a 
petition for HK democracy, to the Chief Executive. I am authorised to reply on 
his behalf. <br><br>The matter raised is receiving attention. A reply will be 
given to you in due course. <br><br>Yours sincerely, <br><br>(Patty Mak) <br>for 
Private Secretary to Chief Executive</p>
<h3 id="response2">Response</h3>
<p><em>Received at 18:42 on 21-Nov-2014:</em></p>
<p>Dear Mr Webb,</p>
<p>Thank you for your email dated 31 October 2014 to the Chief Executive, which 
has been referred to our Bureau. I am authorised to reply on his behalf. Your 
views are well noted.<br><br>Thank you for your concern on matters relating to 
the constitutional development of Hong Kong. <br><br>(Miss Dorothy YUEN) <br>for 
Secretary for Constitutional and Mainland Affairs&nbsp;</p>

<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=1680">Leung, Chun Ying</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=133">Electoral reform</a></li>
				
				<li><a href="/dbpub/subject.asp?c=27">Politics</a></li>
				
		</ul>
	<hr>
<p><a href="/webbmail/join.asp">Sign up for our <b>free</b> newsletter</a></p>
<p><a href="/pages/refer.asp">Recommend <i>Webb-site</i> to a friend</a></p>
<p><a href="/pages/aboutus.asp">Copyright &amp; disclaimer</a>, <a href="/pages/privacypolicy.asp">Privacy policy</a></p>
<p><a href="#top">Back to top</a></p>
<hr>
</div>

</body>
</html>