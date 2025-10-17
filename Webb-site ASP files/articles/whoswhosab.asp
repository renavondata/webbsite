
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

<script type="text/javascript">document.title="Who's who in HK's elite";</script>

	<div class="summary">Webb-site.com today launches a new database feature, with past and present membership of the hundreds of statutory and advisory bodies appointed by the Government, as well as the Election Committee, Executive, Legislative and District Councils, adding to our database of listed company directors. If your organisation is important, but not a listed company or government body, then help us add it to the database.</div>

<h2 class="center">Who's who in HK's elite<br>
<span class="headlinedate">12 April 2010</span></h2>
<p>In the latest addition to the <a href="../dbpub/">Webb-site Database</a>, we are now launching a 
who's who of Hong Kong Government statutory and advisory bodies <strong>(SABs</strong>). 
For more than a decade, we have been privately tracking them through the
<a href="http://www.gld.gov.hk/cgi-bin/gld/egazette/ChkDisclaimer.cgi?lang=e&amp;acurrentpage=3&amp;agree=0&amp;showcurrent=0&amp;Submit=I+accept" target="_blank">
Government Gazette</a> (online since 19-May-2000) and by monitoring
<a href="http://www.isd.gov.hk/pr/eng/" target="_blank">Government Press 
Releases</a> (online since 1-Jul-1997). This is in addition to our database of 
HK-listed company directors.</p>
<p>There are several hundred such bodies. <a href="../dbpub/cat.asp?c=3">Statutory 
bodies</a> are created by law, such as 
the Housing Authority or the Hospital Authority, while
<a href="../dbpub/cat.asp?c=7">advisory bodies</a> and others have just been 
informally created by past and present governments, sometimes on a permanent 
basis and sometimes as a short-term reaction to an event, such as the Panel of Inquiry on the 
Penny Stocks Incident. The Webb-site Database also includes all District Council 
members since 1999, Legislative Council members, as well as all the members of 
the Election Committee which elects Hong Kong's Chief Executive, since formation 
in 1996. These can all be found in the <a href="../dbpub/cat.asp?c=4">
governmental bodies</a> category. We also include all the
<a href="../dbpub/cat.asp?c=2">Bauhinia Awards</a> since they were introduced.</p>
<p>All 4 new categories can be found in our main <a href="../dbpub/">Database 
page</a>. When looking at any organisation, you can click on the &quot;hide history&quot; 
button to look at current members, and click on the &quot;overlaps&quot; button to see how 
the organisation overlaps with others in its membership.</p>
<p>The Government has a practice, often honoured in the breach, of limiting 
people to 6 concurrent appointments and for not more than 6 years in each seat. 
In practice it gets around this by re-setting the clock, promoting someone from 
&quot;Member&quot; to &quot;Deputy Chairman&quot; or &quot;Chairman&quot; of a committee. It regards this as a 
fresh appointment. Presumably the purpose of the 6-year rule is to bring fresh 
minds and ideas into SABs and also, for those which have economic power, such as 
the Town Planning Board, to guard against the risk of corruption. It's the same 
reason why banks move their officers around from branch to branch every few 
years. It seems inconsistent with both the freshness and anti-corruption objectives 
to allow someone to progress to the highest position in a committee after 6 
years, where they are even more influential than they were as a member and could 
preside for another 6 years.</p>
<p>We've also noticed that people the Government can trust are in such short 
supply that as soon as they lose one of their 6 positions by term-expiry, they 
get appointed to another body instead. Some of these are paid positions, and 
some are held by barristers who also get paid to represent the Government in 
court cases, while some are held by people whose accounting firm, law firm or consulting firm 
earns fees from the Government.</p>
<p>Occasionally we have noted that the Government has replaced an expiring 
member, who has served a full term, with a close relative, without acknowledging 
that fact. For example, in the <a href="../dbpub/officers.asp?p=27202">Women's 
Commission</a>, when <a href="../dbpub/positions.asp?p=27209">Ophelia Cheung 
Look-ping</a>'s term expired on 15-Jan-2007, her daughter
<a href="../dbpub/positions.asp?p=22407">Ayesha Macpherson</a> was
<a href="http://www.info.gov.hk/gia/general/200701/05/P200701050109.htm" target="_blank">
appointed</a> on the same day. She's also a member of the
<a href="../dbpub/officers.asp?p=31731">ICAC Advisory Committee on Corruption</a>, 
which perhaps should give some advice against creating the appearance of family 
succession in government appointments.</p>
<p>Similarly, when Legislator for Textiles
<a href="../dbpub/positions.asp?p=21556">Sophie Leung Lau Yau-fun</a>'s term on 
the <a href="../dbpub/officers.asp?p=27128">Textiles Advisory Board</a> expired 
on 1-Apr-2007, her husband <a href="../dbpub/positions.asp?p=21557">Brian Leung 
Hung Tak</a> was
<a href="http://www.gld.gov.hk/egazette/pdf/20071112/egn200711121889.pdf" target="_blank">
appointed</a> on the same day. Both are directors of Bay Apparel Ltd. On the 
same body, Willy Lin Sun-mo left on 1-Apr-08 after 7 years, and on the same day, 
Helen Lin Sun was appointed. Both are directors of family-owned
<a href="../dbpub/orgdata.asp?p=33596">Milo's Knitwear (International) Ltd</a>.</p>
<p>This morning, by coincidence, the <em>South China Morning Post</em> ran a 
story about the number of directors of property developers who sit on SABs, 
suggesting that they account for 1% of all seats on SABs, and that these tend to 
be the more economically important seats. That story is true as far as it goes - 
you won't find a tycoon sitting on the Dogs and Cats Classification Board, for 
example. But the SCMP is not even close to the scale of the overlap between big 
business and SABs, because it didn't cover unlisted companies, and it didn't 
cover management-level staff who are not on the main board. Most of all, it 
didn't cover the overlap between big business and the Election Committee who 
elect our Dear Leader in the first place.</p>
<p>In our database, we try to connect the members of SABs and Governmental 
bodies to their employers, whether as directors or not, and whether listed on 
the stock exchange or not. Hopefully, journalists, lobbyists and academic 
researchers will find our database helpful in connecting the dots that make up 
Hong Kong's small circles and seeing the overlaps between those circles.</p>
<h3>If your organisation is important, put it in the database</h3>
<p>Finally, a request for help - if your organisation is not a listed company 
or SAB, (for example, a charity, NGO or private company) then please help us keep our 
database up to date by sending us a list of members of your governing body 
(Board of Directors, Councillors, Governors or other). We need full names, preferably a 
date of birth or year of birth, to avoid mistaken identities, and verifiable material, such as 
a link to data on your own web site. If you 
consider your organisation to be an important part of Hong Kong's community, 
then it should be in the database. You can search for it in the &quot;organisation&quot; 
box at the top of any page on Webb-site.com. We include a free link to your web site, so 
that interested parties can find out more. <a href="../contact">Contact us here</a>.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=3728">HKSAR Government</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=145">Government policy - general</a></li>
				
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