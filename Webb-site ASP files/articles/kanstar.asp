
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

<script type="text/javascript">document.title="Kanstar Won't Star";</script>

	<div class="summary">We issue a bubble warning on Kanstar - a company run by the son of convicted former legislator Chim Pui Chung, which is trading at 29 times net assets and has yet to make an annual profit. We also take a look at Chim's comeback campaign and his other listed investments.</div>

<h2 class="center">Kanstar Won't Star<br>
<span class="headlinedate">10 August 2004</span></h2>
<p>At the end of Jul-04, pulp and paper manufacturer Kanstar Environmental Paper Products Holdings Ltd (<b>Kanstar</b>, 
8011) was the
<a target="_blank" href="http://www.hkgem.com/statistics/e_Top50MC200407.html">
9th largest stock</a> on the GEM, with a market cap of&nbsp; HK$1.64bn. At 
today's close of $0.39 per share, the market cap was $1.56bn (US$200m).</p>

<p>But Kanstar has net tangible assets at 31-Dec-03 of only $54.0m, or about 
$0.0135 per share, so it is trading at about 29 times net asset value.</p>

<p>The stock was listed on 12-Jul-02 following a 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020709/00000MC20020709215510H.pdf">placing</a> at $0.04 per share 
(adjusted for the subsequent 5:1 split) so it is up 875% since then. The top 25 
placees in the IPO took 98.6% of the deal, and the top 10 accounted for 74.3%.</p>

<p>Kanstar is 75% held 
by the 31-year old Chairman and Managing Director Jacky Chim Kim Kiu (<b>Jacky 
Chim</b>), leaving a public float of 25%, the minimum under the Listing Rules. 
However, 5.5% is held by his dad, the seemingly irrepressible former legislator Chim Pui Chung (<b>P C Chim</b>), 
who has convictions for
<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=34134&currpage=T">conspiracy to forge</a> 
share transfer documents as well as
<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=34425&currpage=T">election 
malfeasance</a>, and served 10 months of a 1 year jail sentence in 1998 for the 
former. As Chim senior is not on the board, he counts as a member of the 
public for the purposes of the Listing Rules.</p>

<p>In Jun-96, the SFC brought a civil action against P C Chim in the High Court, 
and on 19-Nov-99, he was
<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=38517&currpage=T">found</a> by the court to have <i>&quot;engaged in conduct which was prejudicial to 
the interests of the minority shareholders&quot; </i>of
<a target="_blank" href="../dbpub/articles.asp?p=4915">Massive 
Resources International Corporation Ltd</a> (<b>Massive</b>, 0070) then known as 
Mandarin Resources. The judge also ordered that P C Chim be declared <i>&quot;unfit 
to hold a position of management in Mandarin Resources and that he be 
disqualified from acting as a director of Mandarin Resources.&quot;</i></p>

<p>Eventually on 22-Jul-00 P C Chim and the SFC
<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/general/general/press_release/00/2207(eng).pdf">announced</a> a settlement of the action, including a general offer by Chim to 
buy out the minorities, as well as HK$30m in costs to the SFC. Chim agreed to 
divest himself of &quot;any material interest&quot; in Massive and not to act as a 
director of any HK-listed company for 3 years. Although he did divest, he has 
recently reinvested in Massive,
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=3793&lang=EN&dia=Y">
rising</a> above 5% on 5-Mar-04 and
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=5278&lang=EN&dia=Y">
holding</a> 19.06% as of 2-Aug-04. He has also acquired 28.6% of
<a target="_blank" href="../dbpub/articles.asp?p=4776">Northern International Holdings Ltd</a> 
(0736) on 10-Mar-04 for HK$30m, becoming its largest shareholder. The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040316/LTN20040316086.pdf">
announcement</a> sang the praises of Mr Chim as a former legislator, but it 
neglected to mention his criminal record, and said that Chim planned to become 
non-executive Chairman of the company, although that hasn't happened yet.</p>

<p>Prior 
to that investment, he held 28.1% of <a target="_blank" href="../dbpub/articles.asp?p=4807">Credit Card DNA Security System (Holdings) Ltd</a> (1051), and 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040217/LTN20040217110.pdf">sold</a> 23.2% for 
$0.013 per share or $21.4m on&nbsp;16-Feb-04. Remarkably, the stock has since 
soared 222%, from $0.023 on 16-Feb-04 to $0.074 today, valuing the firm at 
HK$760m - this for a company with negative net tangible assets, which hasn't 
made a profit in years, and where the auditors disclaimed their opinion in the 
accounts for the year to 30-Jun-03. That stock deserves a separate story, but 
suffice to say that we think it is another bubble in search of a pin.</p>

<p>Stock investment is not P C Chim's only comeback effort: he is now running for election to the Legislative Council, trying to get back his seat 
in the brokers' &quot;Functional Constituency&quot; (yes, in Hong Kong, special 
interests are constitutionally protected). In a way, we hope he wins, because in 
our opinion it would completely discredit the functional constituencies and 
their small-circle elections and hasten the onset of universal suffrage. He had 
previously
<a target="_blank" href="http://www.thestandard.com.hk/news_detail_frame.cfm?articleid=40979&intcatid=1">
told</a> <i>The Standard</i> in Aug-03 that he would run for a directly elected 
seat on Hong Kong Island. Now that <i>would</i> have been entertaining.</p>

<p>Anyway, back to Kanstar. Apart from the 80.5% held by the Chims, at 31-Mar-04 
employees and directors held a total of 183.85m options equivalent to 4.60% of 
the issued shares with an exercise price of $0.002 per share, expiring between 
2007 and 2008. Theoretically, at current market price, these options have an 
intrinsic value of $0.388 each, or $83.9m, but we would be amazed if they could 
cash out without crashing the price.</p>

<p>Another executive director of Kanstar is Ip Kai Cheong, 
who is <i>&quot;responsible for the Group's general management and financial control&quot;.</i> 
Before joining Kanstar in May-99, Mr Ip held managerial positions with
<a target="_blank" href="../dbpub/articles.asp?p=4802">Grand Field Group Holdings Ltd</a> (0115) 
then known as Chintex Oil and Gas Co Ltd, which was also once Chaired by P C Chim 
and where sons Jacky Chim and Ricky Chim Kim Lun were on the board.</p>

<p>Despite the inflated stock price, there is actually a real pulp and paper 
business in Kanstar, and turnover has been growing steadily from zero in 2000, 
but they have yet to make an annual profit and the directors have been lending 
money to the group ($3.8m was outstanding at 31-Dec-03) and waiving their fees.</p>

<p><b>After applying a discount for being a minority shareholder, in our view 
Kanstar shares are probably worth less than the net asset value of $0.0135 per 
share, which would indicate a potential downside of over 96% from the current 
price. If you hold the stock, get out while you can.</b></p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=17036">Polyard Petroleum International Group Limited</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=106">Bubble/concentration warnings</a></li>
				
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