
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

<script type="text/javascript">document.title="Li & Fung/IDS offer has sting";</script>

	<div class="summary">The all-or-nothing nature of the share alternative, now worth 23% more than the cash offer, means that CCASS, which holds almost all the public shares in IDS, cannot offer the share alternative to its participants. Webb-site urges Li & Fung and IDS to amend the scheme to allow registered holders to make partial elections for shares. Otherwise, if you snooze, you lose.</div>

<h2 class="center">Li & Fung/IDS offer has sting<br>
<span class="headlinedate">24 September 2010</span></h2>
<p><a href="../dbpub/orgdata.asp?p=362">Li &amp; Fung Ltd</a> (<strong>Li &amp; Fung</strong>, 
0494) is proposing to privatise <a href="../dbpub/orgdata.asp?p=2387">Integrated 
Distribution Services Group Ltd</a> (<strong>IDS</strong>, 2387) by way of a 
scheme of arrangement, as explained in this
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100913/LTN20100913333.pdf" target="_blank">
offer document</a> of 14-Sep-2010. The offer is subject to approval by 
independent shareholders, requiring at least 75% of voted shares and a simple 
majority of the number of shareholders, with not more than 10% of all 
independent shares being voted against. Shareholders are offered HK$21 per share 
in cash, but can elect instead to receive 0.585 new Li &amp; Fung shares for each 
IDS share. Li &amp; Fung closed on 22-Sep-2010 at $44.10, valuing the share 
alternative at about $25.80, a 22.9% premium to the cash offer.</p>
<p>This article is not about the merits of the proposal, but about the bad way 
in which it is implemented. Under the current terms, shareholders who want the 
share alternative must elect for that in respect of all of the holding, rather 
than being allowed to tender some shares for cash and the rest for scrip. If no 
election is made, they will get cash.</p>
<p>This is a huge problem because, like most listed companies, almost all of the 
publicly held shares are legally registered in the name of just one shareholder, 
HKSCC Nominees Ltd (<strong>HKSCCN</strong>), the nominee of the Central 
Clearing and Automated Settlement System (<strong>CCASS</strong>) and is owned 
by <a href="../dbpub/orgdata.asp?p=9643">Hong Kong Exchanges and Clearing Ltd</a> 
(<strong>HKEx</strong>, 0388). Independent shareholders own 55.08% of IDS, and 
51.93% is in CCASS <a href="../ccass/choldings.asp?p=4539">as shown</a> in the 
Webb-site CCASS Analysis system. Since HKSCCN cannot elect for shares in respect 
of only part of its holding, CCASS cannot make the share alternative available 
to CCASS participants, including banks, brokers, custodians and direct investor 
participants.</p>
<p>So to benefit from the full offer value, assuming that the scrip remains 
worth more than the cash, beneficial shareholders must withdraw their stock from 
CCASS and transfer it into their own names, pausing at the stamp duty office to 
get an exemption (if they can prove that there is no change in beneficial owner) 
and then taking the certificates and transfer forms to the registrar. While 
individuals living in HK are capable of doing this with some effort (and the 
assistance of their brokers who hold the stock), it may be harder for overseas 
individuals who cannot easily sign and handle the paperwork.</p>
<p>For institutional investors, the situation is worse, because most of 
their stock is held in CCASS by custodians. If a custodian has more than one 
client, then simply transferring the stock from HKSCCN to the custodian will not 
solve the problem - the shares will need to be transferred to their clients 
instead. Many of these clients may be offshore entities managed by offshore 
managers. Some custodians participants in CCASS may hold shares as a 
sub-custodian for an overseas master custodian, so they wouldn't even know who 
to transfer the shares to. The top 10 CCASS accounts hold 98.00% of the CCASS 
holdings.</p>
<p>By ignoring the effects of nominee shareholdings, Li &amp; Fung has caused a huge 
amount of paperwork, made it very difficult for investors to elect for the more 
valuable share alternative, and penalised those who are unaware of the problem 
and leave their stock in CCASS or other nominee names. Li &amp; Fung has in the past earned itself a 
reputation as one of the better-governed companies in HK, and this problem may 
have arisen due to an oversight. There was no mention of the problem in the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100812/LTN20100812351.pdf" target="_blank">
offer announcement</a> of 12-Aug-2010, but it appears in the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100913/LTN20100913333.pdf" target="_blank">
offer document</a> a month later (page 15), so it probably dawned on them 
in between. Their adviser, <a href="../dbpub/adviserships.asp?p=5702">J.P. Morgan 
Securities (Asia Pacific) Ltd</a>, should have known better from the outset.</p>
<p>However, it is not too late to change this. The shareholders' meeting is on 
7-Oct-2010. <strong>Webb-site urges Li &amp; Fung and IDS to amend the scheme to 
allow registered shareholders to elect for the share alternative in respect of 
any number of shares in their shareholding.</strong> If necessary, they should 
delay the shareholders' meeting to allow this. The amendment will then allow 
HSCCN to elect part (not all) of its holding for shares, and in turn this will 
allow CCASS to make the share alternative available to its participants, and 
nobody will have to withdraw their stock from CCASS. It will also protect 
investors who are unaware of the problem. Otherwise, they will be victims of 
&quot;snooze and lose&quot;, receiving only the cash payment, currently at a big discount 
to the share alternative.</p>
<p>Such an amendment would not change the maximum value of the offer and is 
manifestly in the interests of all independent shareholders, particularly those 
who are unaware of the problem, so we expect that the SFC's Takeover Executive 
would consent to such a change.</p>
<p>If Li &amp; Fung does not revise the scheme, then there will be a brief window 
after the shareholder vote, from 8-Oct to 18-Oct, for beneficial owners to 
withdraw their stock from CCASS, get the transfers stamped or exempted from 
stamp duty, and lodge them with the registrar. It would be interesting to see 
which CCASS participants have holdings in CCASS when the music stops, and are 
thus forced to receive the cash offer by default.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=22854">INTEGRATED DISTRIBUTION SERVICES GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5702">J.P. MORGAN SECURITIES (ASIA PACIFIC) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=362">LI & FUNG LIMITED</a></li>
				
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