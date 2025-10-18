
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

<script type="text/javascript">document.title="HKEx preps for placing";</script>

	<div class="summary">Apart from seeking a steep pay hike, the HKEx board is seeking to double its mandate to issue shares for cash without a rights issue, at double the discount of last year's mandate. Couple that with the leaked bid for the London Metal Exchange, and you can see where this is going. We urge shareholders to protect their rights by voting down the general mandate. If HKEx proceeds with LME (and we query why), then a rights issue can fund it.</div>

<h2 class="center">HKEx preps for placing<br>
<span class="headlinedate">15 March 2012</span></h2>
<p>Beware the
<a href="http://en.wikipedia.org/wiki/Ides_of_March" target="_blank">Ides of 
March</a>!</p>
<p><a href="../dbpub/articles.asp?p=9643">Hong Kong Exchanges and Clearing Ltd</a> 
(<strong>HKEx</strong>, 0388) has today published its
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2012/0314/LTN20120314397.pdf" target="_blank">
AGM circular</a> for the meeting on 23-Apr-2012. Apart from seeking a stiff pay 
hike for the directors, which may grab some headlines in itself, the deeper but 
more important message is in the request for shareholders to grant the board 
permission to do a larger cash placing at its discretion, at double last year's 
limits, without offering the shares to existing shareholders. Couple that with 
the recently-leaked news of HKEx's bid for the 
<a href="http://www.lme.com" target="_blank">London Metal Exchange</a>, which 
could cost north of GBP1bn (HK$12.2bn), and you can see where this is going.</p>
<p>Last year, we <a href="HKExAGM2011.asp">gave credit</a> to HKEx 
for adopting a Vampire-compliant mandate, in line with best practice from the 
UK, seeking a general mandate to issue new shares equal to not more than 5% of 
its existing shares, at a discount of not more than 5%.
<a href="../dbpub/subject.asp?c=173">Project VAMPIRE</a> stands for Vote Against 
Mandate for Placings, Issues by Rights Excepted, and is the long-running and 
on-going battle for HK to adopt pre-emptive rights in line with the UK's
<a href="http://www.pre-emptiongroup.org.uk/" target="_blank">Pre-Emption Group</a> 
guidelines, which limit companies to 5% per year at a discount limit of 5%. The 
UK has an additional limit of 7.5% in a 3-year period, or an average of 2.5% 
dilution per year, but let's learn to walk first. The UK guidelines have been in 
effect for a quarter of a century since 1987 and there is no evidence that this 
has stymied the capital-raising abilities of its leading companies.</p>
<p>HKEx is now asking permission to issue new shares up to 10% of its existing 
shares, at up to a 10% discount. Based on the current
<a href="../dbpub/outstanding.asp?i=2516">outstanding shares</a>, that would 
be 107.99m shares. Based on yesterday's closing price of HK$139, at a discount 
of 10% this would raise about <strong>HK$13.51bn</strong> (US$1.74bn).</p>
<p>HKEx currently operates a set of statutory or <em>de facto </em>
monopolies with equity of just HK$9.16bn, so a full-sized issue would expand the 
equity by 147%, and that would only be necessary if it were to take on a 
substantial acquisition or if a massive market default wiped out its prudential 
reserves, which buttress the clearing houses for the stock and futures 
exchanges. In 2011 its pre-tax profit of $6.03bn represented a margin of 82.0% 
on revenue and turnover of $7.36bn. Net profit of $5.09bn represented return on 
equity of about 55.6%. The market prices HKEx as if it will always be a 
monopoly. We <a href="hkexopoly.asp">disagree with that assumption</a>, 
but that's beyond the scope of this article.</p>
<p>The rumour of HKEx's bid for LME came from Enoch Yiu's article in the SCMP on 
18-Feb-2012, citing two people familiar with the situation. Her sources are 
usually pretty accurate and at least one of them is believed to be on the board, 
so we take it to be true. HKEx is a HK-Government-controlled entity 
(shareholders can only elect 6 of its 13 directors) and the Government's 
permission (via the SFC, after consulting the Financial Secretary) is needed for 
anyone to own more than 5% of it. The Chief Executive of HK (whoever that is) 
also has to approve the Chairman. Apart from the difficulties for HKEx of 
operating an alien business 10,000 km away from the cosy, competition-free 
environment of HK, we wonder whether the UK authorities would be quite so 
welcoming of the purchase of LME as they would be if the buyer was not 
controlled by a foreign government.</p>
<p>Of course, HKEx may not be the highest or successful bidder
<a href="http://www.reuters.com/article/2012/03/08/lme-bids-idUSL5E8E89V820120308" target="_blank">
when bids close</a> on 7-May-2012, but if it does decide to buy LME, then 
shareholders of HKEx can expect it to make a substantial cash call. It would be 
far better to do this by way of a rights issue than to place shares at a 
discount with friendly parties or governments; keep in mind that the HKSAR 
Exchange Fund, HK's sovereign wealth fund, owns 5.8%. Would they get their share 
in a placing? Without pre-emption rights, some shareholders are more equal than 
others.</p>
<p>HKEx has sufficient authorised share capital to do a 1 for 2 rights 
issue at a deep discount, without an EGM. A 1:5 rights issue at a 55% discount 
would be certain enough that it wouldn't even need underwriting, and it would 
raise the same amount as a 10% placing at a 10% discount. <strong>So we urge 
shareholders to protect their interests by voting against the expanded general 
mandate (Resolution 6) on 23-Apr-2012. That is the only way to be confident that 
you would be offered your fair share, and receive the benefit of the discount.</strong></p>
<p>Leading primary-listed companies in HK which have a 5% limit on cash placings 
include <a href="../dbpub/orgdata.asp?p=382">HSBC Holdings plc</a> (0005),
<a href="../dbpub/orgdata.asp?p=824">Standard Chartered plc</a> (2888),
<a href="../dbpub/orgdata.asp?p=395">Hang Seng Bank, Ltd</a> (0011),
<a href="../dbpub/orgdata.asp?p=341">CLP Holdings Ltd</a> (0002),
<a href="../dbpub/orgdata.asp?p=384">Swire Pacific Ltd</a> (19/87),
<a href="../dbpub/orgdata.asp?p=24001">Swire Properties Ltd</a> (1972),
<a href="../dbpub/orgdata.asp?p=385">Cathay Pacific Airways Ltd</a> (0293) as 
well as several well-managed small caps. Several H-share companies have no 
general mandate at all, including <a href="../dbpub/orgdata.asp?p=1785">China 
Construction Bank Corp</a> (0939), <a href="../dbpub/orgdata.asp?p=465">Bank of 
China Ltd</a> (3988), <a href="../dbpub/orgdata.asp?p=18181">China Life 
Insurance Co Ltd</a> (2628), <a href="../dbpub/orgdata.asp?p=5606">Bank of 
Communications Co Ltd</a> (3328) and <a href="../dbpub/orgdata.asp?p=6584">China 
CITIC Bank Corp Ltd</a> (0998). When they need to issue equity for cash, they 
can do 
rights issues.</p>
<p>Oh, and that HKEx pay hike - 66% for the Chairman, 56% for the other 
directors - did their job suddenly get that much harder?</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=173">Pre-emption rights/ general mandate</a></li>
				
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