
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

<script type="text/javascript">document.title="What Price Mobile?";</script>

	<div class="summary">We examine the price on the mobile phones in the Telstra-PCCW deal, and find a huge premium to listed competitors Smartone and Sunday. We also look at how the HK Government's pending decision on 3G will affect all players. Finally Webb-site.com walks the Telstra board through some of the many alternatives to an over-priced deal with PCCW.</div>

<h2 class="center">What Price Mobile?<br>
<span class="headlinedate">2 October 2000</span></h2>
<p>With both sides in the Telstra-PCCW deal now admitting that the
terms of their deal are back on the negotiating table, it is time to take a look
at the mobile side of the deal, and on the other two listed &quot;pure&quot;
players, <a href="http://www.smartone.com.hk" target="_blank">Smartone
Telecommunications Holdings Ltd</a> and <a href="http://www.sunday.com/" target="_blank">Sunday
Communications Ltd</a>. </p>

<p>When the original Memorandum of Understanding between Telstra
and PCCW was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000412/LTN20000412049.doc" target="_blank">announced</a>
on 12-Apr-00 it was proposed that Tesltra would pay US$1.5bn for 40% of a
&quot;Regional Mobile Company&quot;, subject to due diligence and valuation.
Skip forward to 24-Aug-00, and a further <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000824/LTN20000824011.doc" target="_blank">announcement</a>
of an &quot;agreement in principle&quot; was made, containing further details. </p>

<p>By now, the pretence that this was a pooling of regional mobile
interests had been abandoned, as Telstra's sole regional mobile venture, <a href="http://www.mobitellanka.com/" target="_blank">Mobitel</a>
in Sri Lanka was left out, as was HKT's 14.7% interest in <a href="http://www.m1.com.sg/" target="_blank">Mobile
One</a> of Singapore. So the deal boiled down to Telstra buying 40% of <a href="http://www.cwhktmobile.com/" target="_blank">Cable
&amp; Wireless HKT CSL Ltd</a> for US$1.5bn. </p>

<p>On 28-Sep-00 PCCW announced its interim results for the six
months ended 30th June 2000. At the time of writing, their web site still
doesn't contain the announcement - and the Stock Exchange site, which should be
the fount of all knowledge, contains only a <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000928/LTN20000928061.HTM" target="_blank">brief
summary</a>, as it does with all main-board companies. In the world of web-based
disclosure, both the SEHK and PCCW still have a long way to go. This is why at <i>Webb-site.com
</i>we still have to maintain a library full of announcements published in
newspapers. </p>

<p>Although PCCW acquired HKT on 17-Aug-00, after the 30-Jun-00
period end, the newspaper announcement did include some figures on HKT's
business. </p>

<p>On the mobile side, HKT's Average Revenue per User (ARPU)
increased just 4% to HK$456 per month compared with the first half of 1999.
HKT's ARPU is higher than its competitors, but this is for one simple reason -
as one of the first two providers in Hong Kong, and a former monopoly utility,
it traditionally had a larger share of the corporate market in Hong Kong.
Corporate customers are slower than individuals to react to competition in the
market, so HKT's ARPU has benefited from this. HKT even introduced a new <a href="http://www.one2free.com/" target="_blank">One2Free</a>
brand in 1998 in an effort to compete at the retail level without reducing
margins on the corporate <a href="http://www.1010.cwhkt.com/" target="_blank">1010</a>
product, which works on the same network. However, over time, even corporates
make purchasing choices and will either demand lower charges or take their
high-volume business to other networks. </p>

<p>The last published total figure for HKT subscribers was 958,000
at 31-Mar-00, up 33,000 on the 925,000
as at 30-Sep-99, which was down 23,000 from 31-Mar-99.&nbsp; </p>

<p>No figure for mobile subscribers was given in the published
results to Jun-00, but a bar chart circulated at a press conference indicated a net fall
in numbers, while accompanying slides mentioned a 1% increase in GSM
subscribers, so this was presumably offset by a greater fall in the company's D-AMPS network, some of whom defected to
other networks. </p>

<p> We'll assume it is now down to
about 930,000. At US$1.5bn for just 40% of the business, this implies that the
original Telstra-PCCW deal values the business at <b>US$4,032</b> per
subscriber. </p>

<h3>Pacific Link</h3>

<p>The American D-AMPS standard is not popular in HK and the only
such network was acquired when HKT <a href="http://www.cwhkt.com/about/press/pressrel98/980101.html" target="_blank">bought</a>
Pacific Link from First Pacific in 1998, rebranding the service &quot;1+1&quot;.
Pacific Link also brought with it a PCS (GSM-1800) license. At the time of
purchase in Jan-98, Pacific Link has 268,000 subscribers. HKT paid HK$4,835m
(US$624m) for the business, or around <b>US$2,330</b> per subscriber. In 1997,
Pacific Link recorded ARPU of HK$500 per month, down from HK$590 in the previous
year. </p>

<p>No sane person buys a D-AMPS phone for use in HK today, and when
customers upgrade their handsets they are much more likely to change their
choice of service package or operator than at any other time. This was made
easier with the introduction of number portability on 1-Mar-99, meaning that a
customer no longer has to change numbers when changing operators. </p>

<h3>Smartone</h3>

<p>Smartone has a latest published figure of 930,000 subscribers at
15-Sep-00, up from 867,000 at 30-Jun-00 and 725,000 at 31-Dec-99. ARPU figures
were not published but we estimate they are about HK$300 per month. The company
is 20% owned by <a href="http://www.bt.com/" target="_blank">British
Telecommunications plc</a>, which <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990407/LTN19990407009.HTM" target="_blank">subscribed</a>
for the shares at HK$25 each in Apr-99. The largest shareholder is <a href="http://www.shkp.com.hk/" target="_blank">Sun
Hung Kai Properties Ltd</a> with 26.4%.&nbsp; </p>

<p>Now, at HK$12.25 per share, Smartone is valued at HK$7.38bn
(US$946m). The last published balance sheet, at 30-Jun-99, shows net cash of
about HK$3.9bn but we'll assume (probably on the excess side) that they got
through about HK$0.7bn of that in the last year, leaving them with net cash of
about $3.2bn (US$410m). That means that the un-geared valuation of the business
is about US$536m, or just <b>US$576</b> per subscriber. For that you also get
one of the new wireless local-loop broadband licenses. </p>

<h3>Sunday</h3>

<p>Sunday is Hong Kong's smallest but arguably most dynamic listed
mobile provider. It is run by much of the same management team that created
Hutchison Telecom, now HK's largest mobile provider. It is 46.2% owned by
unlisted <a href="http://www.distacom.com/" target="_blank">Distacom
International Ltd</a>, 11.5% by HK-listed <a href="http://www.usi.com.hk/" target="_blank">USI
Holdings</a>, and 11.5% by the financially-challenged <a href="http://www.laisun.com.hk/" target="_blank">Lai
Sun Group</a>. Of this, 9.87% is held by eSun Holdings Ltd (formerly known as
Lai Sun Hotels), and 1.67% is held by Lai Sun Development Co Ltd. That leaves
the public holding 30.8%. Distacom shareholders are believed to include
investment house Lazard and the Singapore Government, as well as the management
team. </p>

<p>At 5-Sep-00, Sunday claimed 330,000 subscribers, up from 297,000
at 30-Jun-00 and 287,000 at Dec-99. ARPU in the six months to Jun-00 was HK$282
per month. </p>

<p>Sunday's customers are on average &quot;newer&quot; than those
of Smartone or HKT, because Sunday didn't launch its PCS service until 1997.
That probably means the users have more modern handsets and are less likely to
upgrade (and change networks) than say a D-AMPS customer at HKT. </p>

<p>The company went public in Mar-00 and was fortunate to catch the
top of the tech valuations, raising net proceeds of HK2.35bn. Nasdaq peaked at
5,049 the day after the offer closed. The retail portion of the offer was 35x
subscribed and the offer priced at HK$3.78 per share. </p>

<p>What a difference six months makes. The shares are now trading
at just&nbsp; HK$0.80, down 79% from the IPO price. This values the company at
HK$2.39bn (US$307m). At 30-Jun-00 the company had net cash of about US$8m, so
the business is valued at US$299m or <b>US$906</b> per subscriber. </p>

<p>For that, you also get the possibility (but no guarantee) of
future acquisitions from Distacom, Sunday's largest shareholder, which has
interests in Indian mobile networks, which could <a href="http://www.spiceindia.com/" target="_blank">Spice</a>
up the business in the future. </p>

<h3>So what is HKT's mobile business worth?</h3>

<p>Something is clearly wrong here. For a minority interest in
HKT's mobile business (PCCW has a casting vote), Telstra is being asked for
about US$4,000 per subscriber. But the market prices a minority interest in Smartone at
under US$600 per subscriber, and Sunday at about US$900 per subscriber. Even when
revenues per subscriber were higher in early 1998, HKT was only willing to buy
Pacific Link at US$2,330 per subscriber. </p>

<p>Now admittedly, HKT currently has average revenue per user some
50% greater than the market average, but that lead will decline as corporate
customers gradually seek better deals either with HKT or by defecting. HKT's
falling subscriber numbers speak for themselves. </p>

<p>Telstra may be desparate to do an international deal, but their
public investors should applaud if they walk away from these terms. Even paying
half the price would look generous. </p>

<h3>Telstra's Plan B</h3>

<p>Over the last weekend a lot of classic &quot;spin&quot; has
appeared in newspaper articles. The SCMP on Saturday 30-Sep-00, quoting &quot;<i>sources
familiar with the situation</i>&quot; wrote that <i>&quot;Cyberworks is in talks
with one of the five biggest telecoms companies in the US - believed to be
AT&amp;T.&quot; </i>PCCW's spokesperson has been telling more than one media
publication that<i> &quot;we always have a Plan B&quot;. </i>Other publications
cited NTT DoCoMo (which is already a partner of Hutchison) as a possible
investor. And there is always Hutchison itself (we'll call that Plan Z - asking
Dad for a bail-out). </p>

<p>A dangerous game of bluff is going on. PCCW may indeed be
approaching other telecoms operators, but would any of them pay as much as
Telstra for a minority stake in the mobile business? Would any of them also want
to put up US$1.5bn of funding for PCCW's subordinated convertible debt? Does
Telstra really believe that PCCW represents the last chance to do a deal in
Asia? Surely not. </p>

<p>Telstra executives should read this &quot;Plan-B&quot; noise as
a sign of their own strength and PCCW's weakness - with US$9bn of debt which
comes due on 28-Feb-00, PCCW is more than keen to secure funds to pay some of it
back. </p>

<p>Rather than tolerate this kind of brinkmanship, Telstra would do
well to look at its own Plan B and open discussions with Smartone or Sunday if
they really want to enter the mobile market here. In Smartone, they would find
themselves in partnership with one of HK's leading conglomerates (SHKP) and a
global operator (BT). In Sunday, they would find themselves in partnership with
a group (Distacom) that has experience of Asian mobile ventures and some
high-growth assets in India. </p>

<p>In either case, the deal could be done at significantly lower
cost - and with no need to invest another US$1.5bn in convertible loan notes as
was proposed with PCCW. The reduction in financial commitment would leave
Telstra with a potentially better credit rating and more funds to spend on
building its broadband network at home.&nbsp; </p>

<p>Another HK mobile provider, <a href="http://www.nwmobility.com/" target="_blank">New
World Mobility</a> (owned by HK-listed New World Development) had 620,000
subscribers in Jun-00 and is looking for a strategic partner or possibly an
outright sale.&nbsp; <a href="http://www.singtel.com/" target="_blank">Singapore
Telecom</a> is known to be interested in bidding for a third generation license
in HK, and is believed to have been in talks with New World about investing in
New World Mobility, as has venture capital firm Chase Capital Partners. </p>

<p>Telstra could do worse than pay a visit to SingTel - which, like
Telstra, has a majority government shareholder, an extensive international IP
network, and ambitions to expand into HK and the rest of Asia. The corporate
cultures may fit surprisingly well. </p>

<h3>3G</h3>

<p>The Government of Hong Kong is still pondering its next move on
third generation (3G) mobile licenses. While we believe license auctions are a
better route than beauty parades (as explained in our recent <a href="3g.asp" target="_blank">article</a>)
the Government has never been prone to logical argument and we believe they are
more likely to fudge the issue with what they will call a &quot;reverse
auction&quot; or basically a beauty parade with parameters, such as pledges on
pricing, capital expenditure and network coverage. This would help PCCW by
relieving them of the need to find the money for a 3G license - and we are
talking about the same government that awarded Pacific Century Group the
Cyberport project without tender. </p>

<p>The second consultation document on 3G from <a href="http://www.ofta.gov.hk/" target="_blank">OFTA</a>
is due out this month.&nbsp; </p>

<p>Unless and until we run out of spectrum, 3G service pricing will
be based on what the market will bear rather than the up-front cost of licenses,
so the lack of a license fee would represent an immediate financial benefit to
the operators. </p>

<p>If the Government goes with the beauty parade, you can expect an
immediate boost to both Sunday and Smartone as they will be in line to win
licenses. In the beauty parade scenario, we would also expect the government to
go with the maximum number of licenses (six) so that they can give one to
Hutchison and one to PCCW without being accused of perpetuating the Li family's
dominance of the sector. That leaves Smartone and Sunday pitching for 2 of the
remaining 4 licenses. </p>

<p>If we are wrong, and the Government goes with a license auction,
then expect rapid consolidation in the sector. Sunday would have to find a lot
of capital fast or it would end up as an also-ran. So in that scenario, it
becomes a prime target for takeover by a new entrant looking for an existing
user base. </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=486">SMARTONE TELECOMMUNICATIONS HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10463">SUNDAY COMMUNICATIONS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=39425">Telstra Corporation Limited</a></li>
				
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