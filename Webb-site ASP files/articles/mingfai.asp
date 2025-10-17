
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

<script type="text/javascript">document.title="Open letter to the board of Ming Fai (3828) from David Webb";</script>

	<div class="summary">Webb-site founder David Webb owns almost 10% of Ming Fai and calls for a special dividend of at least $0.352 per share to reduce net cash to not more than HK$300m (34% of net assets) after the sale of the investment property, which we support. Ming Fai has a strong core business, but if the current board, which holds 33% of Ming Fai, doesn't do the right thing then we will nominate directors who will.</div>

<h2 class="center">Open letter to the board of Ming Fai (3828) from David Webb<br>
<span class="headlinedate">19 October 2016</span></h2>

<p>To
<a href="../dbpub/officers.asp?p=41384&amp;sort=namup&amp;hide=Y&amp;d=&amp;u=0">
the current Directors</a> of</p>
<p>Ming Fai International Holdings Ltd (<strong>Ming Fai</strong>, 3828)</p>
<p>Dear Directors,</p>
<p>As you know, I have previously written to you twice privately, commending you 
on the decision to dispose of our company's main investment property through 
open tender. The disposal will be effected by the sale of the company which owns 
it, <a href="../dbpub/orgdata.asp?p=1512047">Chartered Properties Ltd</a> (<strong>CPL</strong>), 
so the transaction sensibly avoids 8.5% <a href="../dbpub/subject.asp?c=131">
double stamp duty</a> and instead incurs 0.2% stamp duty on the shares of CPL. 
You
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0830/LTN20160830015.pdf" target="_blank">
announced</a> the proposed sale on 29-Aug-2016 and you have posted a
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/1013/LTN20161013244.pdf" target="_blank">
circular</a> dated 14-Oct-2016, convening an EGM on 3-Nov-2016 to consider the 
sale. I will be voting in favour of the sale.</p>
<p>The consideration for the disposal is HK$263m in cash.</p>
<p>In my private letters, I also urged you to declare, or announce an intention 
to declare, a special dividend to distribute the proceeds of the disposal. I 
gave you fair warning that if you did not do so in the circular, then the next 
letter would be public, so that other independent shareholders can add their 
views. You failed to seize the opportunity to make this your own initiative.</p>
<p>Unfortunately, all that you say about "use of proceeds" in the circular is:</p>
<blockquote>"The proceeds of the Disposal will be partially used for repaying 
the bank borrowing of the Property. The net proceeds to be received by the 
Vendor from the Disposal will improve the overall cash position of the Group for 
general working capital purpose as well as for possible future opportunities 
that may arise. However, the Directors have not identified any target for 
acquisitions or any concrete investment plan as at the Latest Practicable Date."</blockquote>
<p>As I explain below, hoarding cash is not an "improvement" in the cash 
position - our company is already overcapitalised, bloated with net cash far in 
excess of what is needed for the core business. Having too much equity drags 
down the rate of return on equity (profits divided by equity) and depresses the 
share price as it traps idle cash.</p>
<p>The risk of burning the cash on unsuccessful new businesses beyond your area 
of expertise and excellence also depresses the share price, particularly given 
that Ming Fai has a proven track record of losing money in new non-core 
businesses. In over 25 years in the HK market, I have seen so many successful 
entrepreneurs list their business on the Stock Exchange and then make the 
mistake of assuming that they must be good at everything. Expertise in one field 
is not expertise in another. I hope you have learned from these mistakes, as 
that is what makes us all stronger.</p>
<p>If you return surplus capital to the market, then the market will repay that 
trust. Just look at some of my other investees and you will see how this works. 
For example, <a href="../dbpub/articles.asp?p=4754">Alco Holdings Ltd</a> (0328), 
of which I own more than 9%, 
sold its former premises in Zung Fu Building on 29-Dec-2015 and has since then 
distributed a total of $0.90 per share in dividends. The stock has
<a href="../dbpub/ctr.asp?i1=940&amp;rel=0&amp;d1=2015-12-29">returned</a> 68.2% 
since 29-Dec-2015 (the day of the announcement) when it was trading at $2.30, 
and closed yesterday at $2.90. </p>
<h3>Core business</h3>
<p>Ming Fai's core business, the basis on which all shareholders at the IPO 
invested, is the supply and manufacture of quality amenity products and 
accessories to the hotel, hospitality and travel industries. This continues to 
be the value driver of the company, generating revenue of HK$1678m in 2015 and a 
segment profit before tax of $136.4m, compared with revenue of $846m in 2007, 
the year of listing.</p>
<p>Unfortunately, in 2010 you embarked on an adventure into cosmetics and 
retailing,
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2010/0519/LTN20100519017.pdf" target="_blank">
acquiring</a> a mainland-based company called All Team Group Ltd and its brand 
"7 Magic" for RMB150m in cash and RMB100m in new shares. This business failed to 
deliver, resulting in the cancellation of half the new shares in 2012 and an 
impairment of HK$339m of goodwill and intangible assets in 2015. This segment, 
including a separate HK brand called "everyBody Labo" generated an operating 
loss of $27m in 2015 and $43m in 2014. You should terminate this business.</p>
<p>Also in 2010, you also established a laundry plant in Changshu City, Jiangsu 
with the goal of enhancing hotel relationships at an investment cost of HK$78m. 
That didn't work out either, losing HK$2.8m in 2010, $15.0m in 2011, $23.4m in 
2012, $20.7m in 2013 and $12.7m in 2014 when it was terminated.</p>
<h3>Analysis</h3>
<p>Our company's
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0922/LTN20160922338.pdf" target="_blank">
interim accounts</a> at 30-Jun-2016 show net tangible assets attributable to 
shareholders of HK$1104m, including the property held for sale at $250m. At that 
date, we had cash and cash equivalents of HK$328.220m and bank borrowings of 
HK$50.768m, including the small mortgage loan of $22.713m against the property 
held for sale. So the net cash position was $277.5m. Net of expenses, the sale 
will produce a gain which you estimate at $10.633m, so the net proceeds should 
be about $260.6m. Accordingly, net assets will increase to about $1115m and net 
cash will increase to about $538.1m, or 48.3% of net tangible assets.</p>
<p>At 30-Jun-2016 there were 705,739,697
<a href="../dbpub/outstanding.asp?i=4924">outstanding shares</a> and 
34,796,000 outstanding share options exercisable at $0.62 per share, all of 
which were vested and some of which have since been exercised. When fully 
exercised, the subscription proceeds would be about $21.6m, <strong>increasing 
net cash to $560m and net assets to $1137m</strong>, and there will be 
740,535,697 shares in issue, a 4.93% dilution. It is inevitable that the special 
dividend will cause the holders to exercise all the options to receive it, so we 
must allow for that.</p>
<p><strong>Fully diluted then, the net tangible assets per share are $1.535 and the net 
cash per share is $0.756</strong>. These compare with yesterday's closing share 
price of $1.05. The sale proceeds of $260.6m (net of expenses) are <strong>
$0.352 per fully diluted share. This is the minimum that should be 
distributed</strong>. This will trigger the option subscriptions which almost match the 
mortgage loan repayment. The retention of HK$300m of net cash is more than 
adequate for our core business as it allows for substantial variations in 
working capital from receivables and payables. The net cash would still amount 
to 34% of remaining net assets of $876m, so there is a strong case for doing 
more than the minimum.</p>
<h3>Share award scheme</h3>
<p>Incidentally, recognising how dilutive share options can be, I am pleased to 
see that on 23-Sep-2016 you
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0923/LTN20160923469.pdf" target="_blank">
announced</a> a share award plan pursuant to which existing shares can be 
acquired in the market and held by an independent trustee, who will not vote the 
shares, until the shares are vested to the employees.</p>
<p>Long-term share awards are a much better way to motivate staff. Shares always have 
immediate upside potential, whereas options can lose their incentive effect if 
the market price drops substantially. The cash spent can be a deductible 
employment expense for tax purposes, and existing shares do not cause any 
dilution of the share base. The cash outlay also focuses the board's attention on the 
real cost of the incentive. However, this only works if you also stop using the 
share option scheme (which expires on 2-Nov-2017 anyway), so please don't grant 
any more options, don't renew the share option scheme, and don't issue new shares into the 
share award scheme, just buy existing shares in the market.</p>
<h3>Conclusions</h3>
<p>As you know, I am the second-largest shareholder of Ming Fai, owning almost 
10%. I know that several other significant investors have already expressed their concerns 
to you. The current directors and their associates combined hold 33.32%. At the 10% 
level, I would be entitled to requisition an Extraordinary General Meeting as 
and when needed, and in any event I can nominate candidates for election at any 
AGM. If you, as a board, don't declare a special dividend, then I will have to 
nominate new directors (including independent directors) who will. I hope that 
will not prove necessary, because I do believe in your ability to develop the 
core amenities business successfully, and I am only trying to add value for all 
shareholders, including the directors.</p>
<p>Regards</p>
<p>David M. Webb</p>

<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4754">ALCO HOLDINGS LIMITED (BM)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=41384">Ming Fai International Holdings Limited</a></li>
				
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