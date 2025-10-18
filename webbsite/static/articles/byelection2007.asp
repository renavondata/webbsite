
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

<script type="text/javascript">document.title="A by-election in HK";</script>

	<div class="summary">We take a look ahead to the forthcoming by-election in Hong Kong, and marvel at the hypocrisy of the DAB and Regina Ip.</div>

<h2 class="center">A by-election in HK<br>
<span class="headlinedate">31 August 2007</span></h2>
<p>Sometimes you have to just laugh at the state of Hong Kong politics. This is 
one of those times.</p>
<p>Due to the death of Ma Lik, Chairman of the Democratic Alliance for the 
Betterment and (slow) Progress of Hong Kong, we now have a Legislative Council 
geographic by-election on our hands, only the second one since the 1997 
Handover, and the first since
<a target="_blank" href="http://www.asiaweek.com/asiaweek/magazine/2000/0908/nat.hk.cheng.html">
scandal-ridden</a> fellow DAB member Gary Cheng Kai-nam resigned in 2000 
(subsequently being jailed for abuse of office) and was replaced by the altogether more likeable 
Audrey Eu Yuet-mee.</p>
<p>In 
fact the DAB is about as &quot;Democratic&quot; as the Democratic People's Republic of 
Korea. In what turned out to be some of his last and possibly deranged public 
statements, Ma denied the 4-Jun-1989 massacre in and around Tiananmen Square 
(whoops, there goes our mainland internet access), and he questioned how tanks 
could have crushed people into minced meat, suggesting that we try it with a 
pig. Apparently he declined to donate his body to scientific discovery and 
settle that point.</p>
<p>The hypocrisy of the DAB is stunning. They are opposed to the Hong Kong 
people electing their Chief Executive and all their Legislative Councillors 
before 2017 (a target which recedes at the rate of about 5 years for every 2 
calendar years), but they expect the Hong Kong people to vote for the DAB candidate 
in the geographic Legislative Council elections for half of the 60-member 
assembly. Their slogan should be <b>&quot;vote for us, we oppose democracy!&quot;</b>. Surely, if 
they think we are not ready for democracy, then they should not run candidates 
in geographic elections at all, and just stick to the 3 seats elected by trade 
unions in the 30 dysfunctional constituencies. There, 3 seats are elected by a 
total of 
just 519 electors, each being a trade union.</p>
<p>On Wednesday the Standard carried 
<a target="_blank" href="http://www.thestandard.com.hk/news_detail.asp?pp_cat=11&art_id=52312&sid=15137940&con_type=1">this piercing insight</a> from the DAB:</p>
<blockquote>
	<p>&quot;One of the major considerations in any election is the chance of 
	winning&quot;, Vice Chairman Ip Kwok-him said.</p>
</blockquote>
<p>As you can see, they are masters of electoral strategy. Karl Rove would be 
left in the dust. Meanwhile, 
<a target="_blank" href="http://www.legco.gov.hk/general/english/members/yr00-04/tyc.htm">Tam Yiu-Chung</a>, the &quot;newly elected&quot; leader of the 
DAB (he was the only candidate) and Vice President of the pro-Beijing Federation 
of Trade Unions, said:</p>
<blockquote>
	<p>&quot;My background is well known, yet I have also gained the trust of the 
	business sector.&quot;</p>
</blockquote>
<p>Joking, he must be. It's hard to know who has the thicker skin - Mr Tam, or latent candidate 
<a target="_blank" href="http://en.wikipedia.org/wiki/Regina_Ip">Regina Ip Lau Suk-yee</a>, former Secretary for Article 23 legislation. The woman 
<a target="_blank" href="http://en.wikiquote.org/wiki/Regina_Ip">said</a> 
about democracy in 2002:</p>
<blockquote>
	<p>&quot;Hitler came to power by democratic election, and he killed seven million 
	Jews. One-person, one-vote is no panacea&quot;</p>
</blockquote>
<p>Now she has all but declared her candidacy for election. Her campaign slogan is 
rumoured to be <b>&quot;Don't vote for me, I could turn out like Hitler&quot;</b>. In fact, her 
statement was deceptive - Hitler was defeated in a Presidential election but was 
subsequently <a target="_blank" href="http://www.fff.org/freedom/fd0403a.asp">appointed</a> as Chancellor by 
the ailing President 
Hindenburg after backroom dealing. While Hitler's party was the largest in the 
Reichstag, it held only a minority of the seats. After his appointment and the 
subsequent Reichstag fire, Chancellor Hitler quickly set about dismantling&nbsp;civil 
liberties and democracy, before going on to absolute dictatorship.</p>
<p>The great thing about by-elections in Hong Kong is that it is the only time 
that you actually need to win the greatest number of votes in order to get 
elected. By contrast, in general elections since 1997, even the geographic seats 
are rigged into five 
multi-seat constituencies (ranging from 5 to 8 seats) with a weird form of proportional representation using 
a single non-transferable vote for party lists, so that people who can muster as 
little as 11.1% of the votes in an 8-seat constituency can be certain of 
election. The result is too many political parties and one-legislator parties.</p>
<p>We analysed the problems with this system in
<a target="_blank" href="PRreform.asp">this article</a> in 2004. The devil is in 
the details of this particular version of proportional representation, which 
mathematically favour short lists, 1-person lists and lunatics. Ironically, it's 
the kind of system which, coupled with the great depression and the aftermath of 
hyperinflation, left too many parties in the Reichstag in 1932, none with an 
absolute majority, and helped Hitler's rise to power.</p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4689">DEMOCRATIC ALLIANCE FOR THE BETTERMENT AND PROGRESS OF HONG KONG</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=14748">Ip Lau, Regina Suk Yee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=25208">Ma, Lik</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=133">Electoral reform</a></li>
				
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