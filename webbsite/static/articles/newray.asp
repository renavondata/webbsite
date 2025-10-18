
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

<script type="text/javascript">document.title="A New Ray of light on an Enigma Network case";</script>

	<div class="summary">A decision quietly posted on the SFAT website reveals that Zhou Ling, ex-Chairman of New Ray Medicine (6108) is suspected by the SFC to have committed "misconduct and obtained secret profits from certain transactions" by NRM. Earlier gazetted Restriction Notices on a client at 2 brokers now make sense - the SFC has reduced disclosure in that area so much as to make the publication meaningless.</div>

<h2 class="center">A New Ray of light on an Enigma Network case<br>
<span class="headlinedate">26 October 2020</span></h2>
<p>In a <a href="/dbpub/artlinks.asp?s=13915">recent post</a>, 
Webb-site reported two particularly vague "Restriction Notices" issued by the 
SFC on 13-Aug-2020, requiring brokers <a href="../dbpub/articles.asp?p=50814">
China Gather Wealth Financial Co Ltd</a> (<strong>CGWF</strong>) and
<a href="../dbpub/articles.asp?p=50922">Power Securities Co Ltd</a> (<strong>PS</strong>) 
to freeze the accounts of an unnamed male client holding shares in an unnamed 
"company listed in Hong Kong" up to unspecified "specified amounts". In the 
covering media release, the SFC stated that the brokers are not under 
investigation and that the client was "suspected of committing misconduct and 
breaching his duties towards a listed company". In our post, we noted:</p>
<blockquote>&nbsp;"Our database records that both of the brokers acted as 
placing agents to companies in the "Enigma Network" up to 2016.</blockquote>
<p>A new ray of light is now cast upon this case by a
<a href="../codocs/SFAT200928.pdf" target="_blank">decision</a> of the Securities and Futures 
Appeals Tribunal (<strong>SFAT</strong>) dated 28-Sep-2020, quietly posted on 
the SFAT website and not announced by 
the SFC. The client's name is <a href="/dbpub/natperson.asp?p=2148895">Zhou 
Ling</a> (<strong>Mr Zhou</strong>), ex-Chairman of
<a href="/dbpub/articles.asp?p=1958748">New Ray Medicine International Holding 
Ltd</a> (<strong>NRM</strong>, 6108). It is indeed a member of what we call the 
"<a href="/dbpub/subject.asp?c=136">Enigma Network</a>". The stock has been suspended since 6-Oct-2017 at the direction 
of the SFC. That day, NRM
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2017/1006/ltn201710061025.pdf" target="_blank">
announced</a> that the SFC suspected that NRM's announcements on two 
acquisitions contained "materially false, incomplete or misleading information". 
These were:</p>
<ul>
	<li>the acquisition of 50% of Saike International Medical Group Ltd
	<a href="https://www.hkexnews.hk/listedco/listconews/gem/2015/0320/gln20150320061.pdf" target="_blank">
	announced</a> on 20-Mar-2015 and
	<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2015/0716/ltn20150716829.pdf" target="_blank">
	completed</a> on 16-Jul-2015, for CNY95m (HK$118.8m). The purported vendor 
	was "Ms. Zhao Lei", an "independent third party"; and</li>
	<li>the acquisition of 15% of Eternal Charm International Ltd
	<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2016/1205/ltn201612051400.pdf" target="_blank">
	announced</a> on 5-Dec-2016 with a supplemental agreement
	<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2017/0314/ltn20170314867.pdf" target="_blank">
	announced</a> on 14-Mar-2017, for CNY47.25m (HK$53.4m). The purported vendor 
	was one "Wang Wei (王威)", an "independent third party".</li>
</ul>
<p>The "Statement of Reasons" (<strong>SoR</strong>) attached to the Restriction 
Notices was not published - the SFC stopped publishing SoRs some time ago after 
we kept figuring out who such notices were about (<a href="yangfreeze.asp">see 
this, for example</a>). However, the SFAT quotes from the SoR that the SFC 
suspects that Mr Zhou committed "misconduct and obtained secret profits from 
certain transactions which he caused New Ray to enter into between 2015 and 
2017". That period includes the two acquisitions.</p>
<p>Mr Zhou ceased to be a director of NRM on 27-Jun-2018 when he did not 
stand for re-election at the AGM.&nbsp; The
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2018/0627/ltn201806271034.pdf" target="_blank">
announcement</a> of that stated that he had confirmed to the Board that there 
were no matters in relation to his retirement that need to be brought to the 
attention of the Shareholders.</p>
<p>Mr Zhou owns 132,188,952 shares and his wife Yang Fang owns 29,211,048 
shares, together amounting to 161.4m shares (9.65%) of NRM. At the suspended 
price of $0.425, these shares would be worth HK$68.595m. Despite the suspension, 
Mr Zhou
<a href="https://di.hkex.com.hk/di/NSForm1.aspx?fn=IS20190412E00460" target="_blank">
increased his holding</a> by 48,672,000 shares on 11-Apr-2019 at an off-market 
price of $0.20 per share.</p>
<p>From the Webb-site CCASS Analysis System, we 
see that
<a href="/ccass/chistory.asp?i=11425&amp;part=406">CGWF 
holds</a> 148,924,952 shares and
<a href="/ccass/chistory.asp?i=11425&amp;part=310">PS 
holds</a> 98,323,893 shares in CCASS, presumably including Mr Zhou's shares.</p>
<p>On behalf of Mr Zhou, <a href="/dbpub/positions.asp?p=12673702">Stephen 
Wong Kai Ho</a> for DLA Piper Hong Kong applied to the SFAT for a review of the 
Restriction Notices. The SFAT, Chaired by
<a href="/dbpub/positions.asp?p=29804">Michael Lunn</a>, ruled that it had no 
jurisdiction to entertain the application, because the notices applied to the 
brokers, not the client. It noted that the client can request the SFC under
<a href="https://www.hklii.hk/eng/hk/legis/ord/571/s208.html" target="_blank">
s208</a> of the Securities and Futures Ordinance to withdraw the prohibitions, 
and if the SFC refuses, then it would have to give reasons under
<a href="https://www.hklii.hk/eng/hk/legis/ord/571/s209.html" target="_blank">
s209(3)(b)</a> and the client could then apply to the SFAT for a review of the 
refusal. In a pointed remark, the Chairman wrote:</p>
<blockquote>"It is to be anticipated that in such a statement... it will be 
necessary to provide more details of the SFC's reasoning than had been provided 
in the relatively unparticularised Statement of Reasons provided to the two 
brokers."</blockquote>
<p>Webb-site notes the statutory requirement under
<a href="https://www.hklii.hk/eng/hk/legis/ord/571/s209.html" target="_blank">
SFO s209(6)</a> that the SFC shall publish in the Gazette "a notice regarding" 
the imposition of Restriction Notices, and may, if it "considers appropriate", 
include an SoR. When the identity of the clients and the listed securities which 
are frozen are withheld from such publication, then it begs the question, what 
was the legislative intent of requiring publication? It really tells the public 
(including other brokers who might hold assets controlled by the same clients) 
so little as to be meaningless, and that cannot have been the legislative 
intent. Greater transparency is called for.</p>
<p><em>&copy; Webb-site.com, 2020</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=50814">China Gather Wealth Financial Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=45094">DLA Piper Hong Kong</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18729">HKSAR Securities and Futures Appeals Tribunal</a></li>
				
				<li><a href="/dbpub/articles.asp?p=50922">Minerva Holding Financial Securities Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1958748">New Ray Medicine International Holding Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=29804">Lunn, Michael Victor</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12673702">Wong, Stephen Kai Ho</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2148895">Zhou, Ling (1977)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=136">Enigma Network</a></li>
				
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