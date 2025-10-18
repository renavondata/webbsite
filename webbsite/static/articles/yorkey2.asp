
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

<script type="text/javascript">document.title="Porky Yorkey, Round 2";</script>

	<div class="summary">Webb-site urges shareholders of Yorkey (2788) to vote against connected transactions with the largest shareholder and urges the board to distribute the surplus cash, which has grown fatter since our previous campaign in 2013. We also warn Citibank not to stuff the ballot with a discretionary proxy appointed by management as they did at the 2014 AGM.</div>

<h2 class="center">Porky Yorkey, Round 2<br>
<span class="headlinedate">1 June 2015</span></h2>
<p>Two years ago, Webb-site <a href="yorkey.asp">called</a> on 
minority shareholders of <a href="../dbpub/articles.asp?p=32013">Yorkey Optical International (Cayman) Ltd</a> (<strong>Yorkey</strong>, 
2788.HK, 9188.TT) to veto connected transactions with its largest shareholder 
unless the board took steps to return the massive amounts of surplus cash to 
shareholders. We were unsuccessful in that campaign, but we are back to fight 
again, this time with a larger holding and, we hope, more support.</p>
<p>Yorkey has proposed renewing connected transactions with its largest 
shareholder, Asia Optical Co., Inc. (<strong>Asia Optical</strong>,
<a href="http://www.bloomberg.com/quote/3019:TT" target="_blank">3019.TT</a>). 
The proposal covers the next 3 years, so this is the last chance we have for any 
activism at Yorkey until 2018. There is a
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0505/LTN20150505770.pdf" target="_blank">
<strong>EGM circular</strong></a> dated 5-May-2015, for a meeting on 
18-Jun-2015. We urge independent shareholders to <strong>VOTE AGAINST</strong> 
the only resolution at the EGM, as shown on the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0505/LTN20150505819.pdf" target="_blank">
proxy form</a>.</p>
<p>Also, the Annual General Meeting occurs 2 hours before the EGM. The
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0430/LTN20150430622.pdf" target="_blank">
AGM circular is here</a>. Referring to the resolutions on the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0430/LTN20150430674.pdf" target="_blank">
proxy form</a>, we urge shareholders to <strong>VOTE AGAINST items 4(i) to 
4(vii)</strong> (re-election of all directors) and as usual <strong>VOTE AGAINST 
items 6 and 8</strong> (general mandate to issue new shares). We are unlikely to 
win at the AGM because Asia Optical can vote, but it will send a clear vote of 
no confidence in the way the board has been behaving.</p>
<p>If you are a <u>registered</u> shareholder (with a 
share certificate) then you can send a proxy form yourself, but otherwise you 
should instruct your bank, broker or custodian (your intermediary) who holds 
your shares (or in Taiwan, TDRs) to vote on your behalf. You can indicate your 
instructions by sending the following templates to your intermediary:
<a href="../codocs/2788EGM150618.pdf" target="_blank">template for EGM</a> and
<a href="../codocs/2788AGM150618.pdf" target="_blank">template for AGM</a>.</p>
<h3>The pork</h3>
<p>Not much has changed since 2013, except that Yorkey has become even fatter. 
Back on 31-Dec-2012, it had cash of US$113.1m and no debt. Two years later, cash 
has increased to US$122.6m with no debt. Turnover declined from US$92.8m in 2012 
to US$84.5m in 2014, but profitability has improved. There are 827.778m shares 
in issue, unchanged. There are no substantial capital expenditure plans.</p>
<p>At the exchange rate of US$1=HK$7.75, there is HK$949.9m of cash, or about
<strong>HK$1.148</strong> per share. The share price closed on Friday 
29-May-2015 at $1.11, a discount to the cash. Net tangible assets are US$145.4m 
(HK$1126.9m) or HK$1.361 per share. So the cash is equal to 84% of the net 
assets.</p>
<p>We consider that a reasonable working capital provision, without incurring 
any debt during the year, should not exceed 3 months' turnover or US$21.1m 
(HK$163.6m), or about HK$0.198 per share. That leaves room for a distribution of
<strong>HK$0.95</strong> per share. The result would be a slimmer, fitter Yorkey, 
with the potential for it to become a shell for a better business in a back-door 
listing.</p>
<p>For 2014, Yorkey has proposed only a final dividend of $0.035 payable 
on 21-Jul-2015 and a later special dividend, not payable until 3-Sep-2015, of 
$0.035, by which time it will probably have earned that much in net operating 
cash flow and interest.</p>
<p>As investors, we are not concerned that blocking the connected transactions 
will damage Yorkey's business, because this amounts to less than 20% of Yorkey's 
turnover (17% in 2014), it has other arm's length customers and because 
shareholders would be better off if it shut down its business and became a 
listing shell. Besides, if we are successful in blocking the connected 
transactions, then after the EGM there is nothing to stop the board declaring a 
special dividend of the surplus cash, in which case we would be willing to move 
forward and renew the connected transactions at a second EGM.</p>
<h3>The ownership structure</h3>
<p>Taiwan-listed Asia Optical Co., Inc. (<strong>Asia Optical</strong>,
<a href="http://www.bloomberg.com/quote/3019:TT" target="_blank">3019.TT</a>) 
owns 27.40% and is the counterparty to the connected transactions, so it cannot 
vote.</p>
<p>Another Taiwan-listed shareholder, Ability Enterprise Co., Ltd. (<strong>Ability Enterprise</strong>,
<a href="http://www.bloomberg.com/quote/2374:TT" target="_blank">2374.TT</a>), 
with 17.37% can vote, and this time, we believe that it will see the value 
potential in this transaction, as they voice opposition to the hoarding of cash 
at the last AGM and voted against management.</p>
<p>Since the previous battle, Webb-site Editor David Webb has increased 
his holding through the 5% disclosure threshold and now holds over 6% of Yorkey. 
So together with Ability Enterprise, that is likely over 23.4% against the 
connected transactions.</p>
<p>However, the so-called &quot;Employees' Trust&quot; represented by its trustee Fortune 
Lands International Ltd (<strong>Fortune Lands</strong>) still holds 13.65% 
(yes, not a single employee has ever withdrawn his or her share entitlement) and 
can vote. It is a near-certainty that it will vote in favour. The board of 
directors of Fortune Lands comprises Yorkey's co-founder and former chairman Mr 
Cheng Wen Tao, the CEO, a senior manager Mr Chen Yao Tang (who holds 100% of 
Fortune Lands) , and two of its so-called independent directors.</p>
<p>Another threat exists from the Taiwan Depository Receipt (<strong>TDR</strong>) 
program. As we reported on 18-Jun-2014 (<a href="citistuff.asp">Citibank 
vote-stuffing in HK AGMs)</a>, Yorkey has been using a provision in the TDR 
agreements to appoint a discretionary proxy to vote any shares for which the 
TDR-holders have not given voting instructions. As TDR-holders are mostly retail 
investors who either can't or don't give instructions via their brokers or 
banks, this resulted in all of the underlying TDR shares being voted by a 
discretionary proxy appointed by Citibank, the custodian in the TDR program, and 
he voted in favour of all the board's proposals at the AGM.</p>
<p>It is <a href="citistuff2.asp">unclear</a> whether 
management's instructions to appoint a proxy were given directly to Citibank or 
via the Taiwan depository, CTBC Bank, but either way, we call on Citibank in 
Hong Kong not to repeat the mistake by accepting similar instructions again. 
Citibank should not facilitate vote-stuffing in Hong Kong with shares for which 
the beneficial owners (the TDR holders) have not given instructions. It should 
require confirmation from CTBC that any instructions it provides have been given 
by TDR holders. And of course, we call upon TDR holders to vote against the 
connected transactions and prevent anyone from abusing their voting rights. For 
more on the TDR problem, see your editor's
<a href="http://video.cnbc.com/gallery/?video=3000285523" target="_blank">CNBC 
appearance</a> on 18-Jun-2014.</p>
<p>Currently there are 72.986m TDRs, or about 8.82% of Yorkey. In the 
worst case, if Citibank repeats its atrocious behaviour and issues a 
discretionary proxy at management request, then along with Fortune Lands there 
will be 22.47% in favour of the connected transactions.</p>
<h3>Act now!</h3>
<p>So it could be 23.4% against the connected transactions and 22.5% in favour, 
with the unknown factor being the 26.76% held by other independent shareholders, 
including institutional and retail investors. So if you hold Yorkey shares, 
don't sit back and let bad things happen. Contact your bank, broker or 
custodian, and <strong>vote against</strong> the connected transactions at the 
EGM. Not sure how? See our <a href="../pages/howtovote.asp">voting guide</a>.</p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=32019">Asia Optical Co., Inc.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=32013">Yorkey Optical International (Cayman) Ltd.</a></li>
				
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