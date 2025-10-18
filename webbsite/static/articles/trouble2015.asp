
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

<script type="text/javascript">document.title="Bubbles and troubles in Hong Kong";</script>

	<div class="summary">Pour yourself a coffee and digest this long article as we investigate several ongoing abusive "open offers" and placings as well as show you who's been making out in multi-billion-dollar bubbles. We call on regulators and rule-makers to take action.</div>

<h2 class="center">Bubbles and troubles in Hong Kong<br>
<span class="headlinedate">24 September 2015</span></h2>
<p>As readers may recall, last year, <a href="../dbpub/articles.asp?p=7889">Lerado Group (Holding) Co Ltd</a> (<strong>Lerado</strong>, 
1225) announced the proposed sale of its core business of baby strollers and infant car 
seats to Canadian listed firm <a href="http://www.dorel.com" target="_blank">Dorel Industries 
Inc</a> (<strong>Dorel</strong>) for HK$930m. Lerado was planning to 
squat on most of the cash proceeds and only pay out $0.30 per share, or $228m. For 
this reason, we <a href="lerado.asp">opposed</a> the sale, because of concern that Lerado would become a 
cash shell trading at a discount to its net asset value. Your editor, David Webb, 
is a disclosed substantial shareholder currently holding over 8%. However, the 
sale was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0916/LTN20140916545.pdf" target="_blank">
approved</a> by shareholders on 16-Sep-2014 and
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1103/LTN201411031795.pdf" target="_blank">
completed</a> on 31-Oct-2014.</p>
<p>Our concerns have now proven justified, culminating in current egregious 
proposals not just by Lerado but by other listed companies. We hope to 
stop them, if the regulators will require certain parties to play fairer. This 
article is long and complicated, and we thought about breaking it into pieces, 
but the picture becomes clearer if you assemble the whole jigsaw, so here it is. 
Apart from Lerado, this article covers transactions by numerous other listed 
companies in which you may have an interest, and several billion US dollars of 
bubbles.</p>
<p>So pour yourself a large coffee and let's get started.</p>
<h3>Lerado share movements</h3>
<p>The first sign of movement in Lerado came on 25-Nov-2014.
<a href="../dbpub/orgdata.asp?p=61696">Intelligence Hong Kong Group Ltd</a> (<strong>IHK</strong>) 
is a company owned 68.27% by Lerado Chairman 
<a href="../dbpub/positions.asp?p=7892">Henry Huang Ying Yuan</a> (<strong>Mr 
Huang</strong>) and 31.73% by his wife, <a href="../dbpub/positions.asp?p=7895">Jamy Huang Chen Li Chu</a>. IHK owns 
148,353,540 shares which was 19.50% of Lerado at 31-Dec-2014, before the recent 
dilutions. On 25-Nov-2014, our
<a href="../ccass/chldchg.asp?i=1997&amp;d=2014-11-25">system shows</a> 
those shares moving from CTBC Asia Ltd (the local subsidiary of a Taiwan 
bank) where they had <a href="../ccass/chldchg.asp?i=1997&amp;d=2009-12-30">
rested</a> since 30-Dec-2009, to <a href="../dbpub/orgdata.asp?p=48794">Convoy 
Investment Services Ltd</a> (<strong>Convoy IS</strong>), the brokerage sister 
of <a href="../dbpub/articles.asp?p=58895">Convoy Financial Holdings Ltd</a> (<strong>Convoy 
FH</strong>, 1019). Convoy IS is in the process of trying to list on the GEM in 
the form of <a href="../dbpub/orgdata.asp?p=2279980">CIS Holdings Ltd</a>, 
which filed an
<a href="../codocs/CIS150323appProof.pdf" target="_blank">application proof</a> on 23-Mar-2015, sponsored by 
<a href="../dbpub/adviserships.asp?p=17646">Quam Capital Ltd</a>.</p>
<p>There can be any number of reasons for such transfers, but one possibility is 
that the shares are security for a loan. Banks and brokers are exempt from 
disclosing security interests in shares pledged to them. It wouldn't be so worrying were it not 
for the fact that <a href="../dbpub/positions.asp?p=44748">Mark Mak 
	Kwong Yiu</a> (<strong>Mr Mak</strong>), CEO of Convoy FH and a director of 
Convoy IS, is also claimed to be an INED of Lerado since 25-Apr-2014. Mr Mak 
joined Convoy as CFO in 2002.</p>
<p>You may recall that in <a href="newyear2015.asp"><em>Some bubbles for New 
Year</em></a> (31-Dec-2014) we warned about a bubble then called
<a href="../dbpub/str.asp?i=11215">Finsoft Corporation</a> (<strong>Finsoft</strong>, 
8018), which was then trading at $1.235 (adjusted for the subsequent 2:1 split), 
with a market value of HK$4.94bn, or 110 times its net asset value. Convoy FH 
owned over 5% of Finsoft. The stock didn't stop there though. It reached a high 
of $2.92 on 20-May-2015, when Finsoft was valued at HK$11.68bn. Since then, 
it has crashed 94.8% to its close on Wednesday (23-Sep-2015) at $0.139, down a net 
88.7% since our article. Finsoften aren't what they seem.</p>
<p>The Finsoft bubble allowed Convoy FH to book unrealised gains of HK$238.4m 
for 2014. It
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=255833" target="_blank">
sold</a> 40m shares (2%) of Finsoft on 20-Jan-2015 for about $73.5m 
(split-adjusted: $0.919 per share) and went below the 5% disclosure threshold. 
The sale was purportedly on-market but it was far larger than market volume that 
day of 1.925m shares so the disclosure must be wrong.</p>
<p>Returning to Lerado, another large chunk of 96,805,800 shares (12.71% at 
31-Dec-2014) was held by <a href="../dbpub/orgdata.asp?p=42186">Hwa Foo Investment Ltd</a> 
(<strong>Hwa Foo</strong>), 30% controlled by 
<a href="../dbpub/positions.asp?p=42188">Patrick Chen 
Chun Chieh</a> (<strong>Mr Chen</strong>), an Executive Director and the son of the 
late co-founder of Lerado, and 70% by his mother. He joined the board on 
3-Apr-2008 following his father's death on 14-Feb-2008. On 8-Sep-2014 those 
shares <a href="../ccass/chldchg.asp?i=1997&amp;d=2014-09-08">moved</a> from 
HSBC (where they had rested since 27-Jun-2007) to UBS Securities HK Ltd , and 
then, more interestingly, they
<a href="../ccass/chldchg.asp?i=1997&amp;d=2014-12-09">moved</a> to small 
broker <a href="../dbpub/orgdata.asp?p=59554">Win Fung Securities Ltd</a> (<strong>Win 
Fung</strong>) on 9-Dec-2014, two weeks after IHK's holding moved to Convoy IS. 
So the Huangs and the Chens had moved custody of 32.21% of Lerado after leaving 
it untouched for years. More on Win Fung below.</p>
<h3>Dispute with Dorel</h3>
<p>First let's mention that on 10-Feb-2015, Lerado
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0210/LTN20150210105.pdf" target="_blank">
announced</a> that it was in dispute with Dorel over the final net asset 
value of the business, which may lead to a partial repayment of the purchase 
price, in an unspecified &quot;significant&quot; amount.</p>
<p>On 27-Mar-2015, Lerado
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0327/LTN20150327803.pdf" target="_blank">
announced</a> that it could not reach agreement with Dorel, so under the terms 
of the sale they had agreed to go to arbitration with an independent accountant, 
not yet appointed. In the
2014
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0331/LTN20150331449.pdf" target="_blank">
annual results</a> announcement on 30-Mar-2015, Lerado revealed that the 
disputed amount was HK$307m, which accordingly had been booked as a liability in 
the balance sheet. Still, Lerado ended 2014 with cash of $797m or HK$1.048 per 
share and no bank borrowings. The disputed amount was about $0.404 per share, so 
even if they have to pay all of that back, there would have been $0.644 per 
share of cash, and net assets of $633m or $0.832 per share.</p>
<p>On 20-Jul-2015, Lerado
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0720/LTN20150720820.pdf" target="_blank">
announced</a> that it and Dorel had appointed RSM Nelson Wheeler as the 
independent accountant to determine the disputed items. Two months later, the 
result has not yet been announced. If Lerado were to win all of it, then the pro 
forma net asset value at 31-Dec-2014 increases to $1.236 per share.</p>
<h3>Lerado swaps shares for property from CIFG</h3>
<p>The day after the results, 31-Mar-2015, Lerado
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0331/LTN201503311635.pdf" target="_blank">announced</a> the
acquisition of a property in Guangzhou from
<a href="../dbpub/articles.asp?p=16610">China Investment and Finance Group Ltd</a> 
(<strong>CIFG</strong>, 1126) for HK$39m, but despite being flush with cash, 
only HK$1m was payable in cash and the rest in 76m new Lerado shares (9.49% of 
then existing shares) issued under the general mandate at $0.50 
each, again a discount to cash and NAV per share.</p>
<p>The intended use of the 
property is as premises for the residual business of Lerado, which is mainly 
mobility scooters for the elderly and disabled, or what it calls 
&quot;medical products&quot;. However, even if intended use of the property sounds 
plausible, the issue of shares at a discount to net cash and NAV was entirely 
inappropriate. The deal
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0417/LTN201504171124.pdf" target="_blank">
completed</a> on 17-Apr-2015, giving CIFG a 8.59% stake in Lerado. Our system shows that CIFG
<a href="../ccass/chldchg.asp?i=1997&amp;d=2015-05-05">
deposited</a> the shares into CCASS with 
<a href="../dbpub/adviserships.asp?p=44712">Astrum Capital Management Ltd</a> (<strong>Astrum</strong>) 
on 5-May-2015.</p>
<p>CIFG is not a regular listed company, but is a closed-end 
investment company listed under 
<a href="http://en-rules.hkex.com.hk/en/display/display_main.html?rbid=4476&amp;element_id=3361" target="_blank">Chapter 21</a>. This prohibits taking controlling 
positions (over 30%) in companies, and requires it to adhere to its stated 
investment restrictions. We asked the Stock Exchange why CIFG was allowed to 
invest in property in the first place. The result was this &quot;<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0807/LTN20150807549.pdf" target="_blank">clarification 
announcement</a>&quot; on 7-Aug-2015, admitting that investment properties were 
outside the scope of CIFG's Investment Policy and blaming it on the former 
Chairman and Vice Chairman. They had been
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0807/LTN20150807549.pdf" target="_blank">
removed</a> by the Board on 14-Sep-2012, 6 months after becoming uncontactable.</p>
<h3>Lerado begins money-lending and stockbroking</h3>
<p>The &quot;Prospects&quot; section of Lerado's 2014 results indicated a new direction. 
The board had &quot;concrete financial knowledge and background&quot; and had decided to 
diversify into &quot;securities trading, money lending business and other financial 
and property investment.&quot; It revealed that on 23-Feb-2015, Lerado had agreed to 
buy an unnamed target company, for HK$1.6m plus its net asset value. The target 
was a securities broker and planned to engage in margin financing business after 
the acquisition was completed. On 17-Apr-2015, Lerado
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0417/LTN201504171152.pdf" target="_blank">
announced</a> that it would reallocate HK$300m of its cash pile for these activities.</p>
<p>On 2-Jul-2015 Lerado
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0702/LTN201507022424.pdf" target="_blank">
announced</a> the name of the target, Yim Cheong Share Broking and Investment Co 
Ltd, and that the acquisition was completed that day. This was then renamed
<a href="../dbpub/orgdata.asp?p=51150">Black Marble Securities Ltd</a> (<strong>Black 
Marble Securities</strong>), and 
Lerado intended to pump HK$200m into it. This small, nearly-dormant broker at 
that point had a minimal two licensed staff and minimal holdings in its CCASS 
account <a href="../ccass/cholder.asp?d=2015-07-02&amp;sort=valndn&amp;part=316">
shown here</a>.</p>
<p class="regbox">Policy note: This highlights a defect in the Listing 
Rules: if you make a &quot;Major Acquisition&quot; (over 25% of your total assets), then 
you need shareholders' approval, but if you buy or establish a small company and 
then pump your funds into this new line of business, then this is completely 
exempt, even though shareholders are exposed to very new and different risks.</p>
<p>Lerado had also established <a href="../dbpub/orgdata.asp?p=2376947">
BlackMarble Capital Ltd</a>, incorporated 28-Jan-2015, a licensed money-lender. 
The application was
<a href="http://www.gld.gov.hk/egazette/pdf/20151909/egn201519091865.pdf" target="_blank">
gazetted</a> on 27-Feb-2015 and the license was
<a href="http://www.cr.gov.hk/en/public/docs/ml_licensees1.pdf" target="_blank">
granted</a> on 22-May-2015.</p>
<h3>Lerado option grants</h3>
<p>On 12-Feb-2015, 
Lerado
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0212/LTN20150212781.pdf" target="_blank">
granted options</a> over 75m new shares (equivalent to 9.86% of the existing 
shares), of which half went to an unspecified number of employees, and half to 
&quot;5 consultants&quot;. The options were exercisable for 2 years at $0.592 per share. It makes no sense whatever to be granting options which exercise at less than 
net cash per share, and much less than NAV per share, diluting both. Staff could 
have been incentivised with a restricted share purchase scheme to use the 
company's cash to buy stock in the market, which closed at $0.58 on the date of 
the option grants.</p>
<p>Despite being options of 2 years duration, 48m of 
the 75m were quickly exercised. We arranged an inspection of the share register 
on 14-Apr-2015 
to discover who had been in such a hurry. We combined that with
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0408/LTN201504081427.pdf" target="_blank">
two</a>
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0417/LTN201504171134.pdf" target="_blank">
filings</a> of allotments by Lerado, which did not name the recipients. Here are the results:</p>
<table class="numtable center fcl">
	<tr>
		<th>Shareholder</th>
		<th>Shares</th>
		<th>Date entered</th>
		<th>Status</th>
	</tr>
	<tr>
		<td>Chu Chun Ting</td>
		<td>7,500,000</td>
		<td>11-Mar-2015</td>
		<td rowspan="2">1 employee, 1 consultant</td>
	</tr>
	<tr>
		<td>Kung Yiu Fai</td>
		<td>7,500,000</td>
		<td>11-Mar-2015</td>
	</tr>
	<tr>
		<td>Chan Kam Fuk</td>
		<td>7,500,000</td>
		<td>17-Mar-2015</td>
		<td>employee</td>
	</tr>
	<tr>
		<td>Law Yee Man, Thomas</td>
		<td>3,000,000</td>
		<td>17-Mar-2015</td>
		<td>employee</td>
	</tr>
	<tr>
		<td>Wang Zewei</td>
		<td>7,500,000</td>
		<td>20-Mar-2015</td>
		<td>consultant</td>
	</tr>
	<tr>
		<td>Wong Sin Fai, Cynthia</td>
		<td>7,500,000</td>
		<td>20-Mar-2015</td>
		<td>consultant</td>
	</tr>
	<tr>
		<td>Kwok Wai Leung</td>
		<td>7,500,000</td>
		<td>2-Apr-2015</td>
		<td>consultant</td>
	</tr>
	<tr>
		<td>Total so far</td>
		<td>48,000,000</td>
		<td>14-Apr-2015</td>
		<td>3 employees, 4 consultants</td>
	</tr>
</table>
<p>That leaves 1 more consultant who has not 
exercised the options.&nbsp;We recognise some of these names:</p>
<ul>
	<li>Chan Kam Fuk is <a href="../dbpub/positions.asp?p=12253">Dominic Chan 
	Kam Fuk</a> (<strong>Dominic Chan</strong>), proprietor of accountancy firm 
	Dominic K.F. Chan &amp; Co. He was appointed as Company Secretary of Lerado on 
	1-Aug-2014.</li>
	<li><a href="../dbpub/positions.asp?p=58370">Thomas Law Yee Man</a> (<strong>Mr 
	Law</strong>), an architect, is an INED of two listed companies,
	<a href="../dbpub/officers.asp?p=10928">AcrossAsia Ltd</a> (<strong>AcrossAsia</strong>, 
	8061) and <a href="../dbpub/officers.asp?p=14233">Sage International Group 
	Ltd</a> (<strong>Sage</strong>, 8082). Here's a connection: Mr Law joined AcrossAsia on 
	28-May-2010, replacing Mr Mak of Convoy, who
	<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2010/0524/GLN20100524031.pdf" target="_blank">
	resigned</a> as INED four days earlier. Perhaps Mr Mak helped to arrange Mr 
	Law as his replacement at AcrossAsia. And here's another connection:
	<a href="../dbpub/natperson.asp?p=20391">Leung Tin Fu</a> (<strong>Mr Leung</strong>), founder and Chairman of Sage until 14-Dec-2007, is also a 
pre-IPO holder of 10% of Convoy IS. Dominic Chan was an INED of Sage, resigning 
the same day as Mr Leung. We don't know what role Mr Law plays 
	as an &quot;employee&quot; of Lerado.</li>
	<li>
	<p><a href="../dbpub/positions.asp?p=64297">Cynthia Wong Sin Fai</a> (<strong>Cynthia 
	Wong</strong>) is a solicitor who
	<a href="http://www.hklawsoc.org.hk/pub_e/memberlawlist/member.asp?id=884139" target="_blank">
	consults for Robertsons</a> and has been Company Secretary of
	<a href="../dbpub/articles.asp?p=4858">Suncorp Technologies Ltd</a> (<strong>Suncorp</strong>, 
	1063) since 15-Feb-2011. We'll come back to that. We don't know what role 
	she plays as a &quot;consultant&quot; to Lerado.</p>
	</li>
	<li>
	<p><a href="../dbpub/natarts.asp?p=2478709">Wang Zewei</a> (<strong>Mr Wang</strong>) 
	is the name of the person who in 2014 sold 22.5% of Sincere Smart 
	International Ltd to <a href="../dbpub/articles.asp?p=14086">Hao Wen 
	Holdings Ltd</a> (<strong>Hao Wen</strong>, 8019) for HK$69m, valuing the 
	business at $306.7m when it had net assets of $2.9m. Two other companies,
	<a href="../dbpub/articles.asp?p=18187">Capital VC Ltd</a> (<strong>Capital VC</strong>, 
	2324) and <a href="../dbpub/articles.asp?p=9176">Unity Investments Holdings Ltd</a> 
(<strong>Unity</strong>, 0913), bought 14% and 29.5% for $42.7m and $90m 
	respectively, without naming the vendor(s). For more, see our article <em>
	<a href="sinceresmart.asp">Hao Wen, Capital VC and Unity</a></em> today. We don't know what role 
	Mr Wang plays 
	as a &quot;consultant&quot; to Lerado. He was the only mainlander on the list, and he gave an 
office address at 10 Gaoxin South 4th Road, Nanshan District, Shenzhen.</p>
	</li>
</ul>
<p>Incidentally, Mr Mak was also an Executive Director of Computech Holdings 
Ltd, now named <a href="../dbpub/articles.asp?p=12131">China Mobile Games and 
Cultural Investment Ltd</a> (<strong>CMG</strong>, 8081), from 30-Jul-2008 to 
28-Apr-2014, three days after he joined Lerado. In fact he was the <em>only</em> 
ED of CMG from 17-Sep-2009 to 8-Nov-2011. The Convoy FH IPO 
prospectus dated 29-Jun-2010 said that despite this, Mr Mak considered Convoy his main focus and &quot;has devoted more than 
80% of his time to his duties&quot; at Convoy during 2007-2009 and he would continue to 
allocate a similar proportion of his time to Convoy after listing. That 
basically meant that CMG only had about 0.2 Executive Directors!</p>
<p>Win Fung
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0422/GLN20150422085.pdf" target="_blank">
acted</a> as the placing agent for CMG in a placing on 22-Apr-2015.</p>
<p>The option shares were deposited into CCASS via various brokers as 
follows. Click on the dates to see the movements in CCASS:</p>
<table class="numtable center c2l">
	<tr>
		<th>Date</th>
		<th>Broker</th>
		<th>Number</th>
	</tr>
	<tr>
		<td>
		<a href="../ccass/chldchg.asp?i=1997&amp;d=2015-04-15">15-Apr-2015</a>
		</td>
		<td>SBI China Capital Financial Services Ltd (<strong>SBI 
		CCFS</strong>)</td>
		<td>7,500,000</td>
	</tr>
	<tr>
		<td>
		<a href="../ccass/chldchg.asp?i=1997&amp;d=2015-04-29">29-Apr-2015</a></td>
		<td>Win Fung</td>
		<td>7,500,000</td>
	</tr>
	<tr>
		<td>
		<a href="../ccass/chldchg.asp?i=1997&amp;d=2015-05-08">8-May-2015</a></td>
		<td>Gransing Securities Co Ltd (<strong>Gransing</strong>)</td>
		<td>7,500,000</td>
	</tr>
	<tr>
		<td>
		<a href="../ccass/chldchg.asp?i=1997&amp;d=2015-05-27">27-May-2015</a></td>
		<td>Gransing</td>
		<td>7,500,000</td>
	</tr>
	<tr>
		<td>
		<a href="../ccass/chldchg.asp?i=1997&amp;d=2015-06-24">24-Jun-2015</a></td>
		<td>Prudential Brokerage Ltd</td>
		<td>7,500,000</td>
	</tr>
	<tr>
		<td>
		<a href="../ccass/chldchg.asp?i=1997&amp;d=2015-08-04">4-Aug-2015</a></td>
		<td>Convoy IS</td>
		<td>3,000,000</td>
	</tr>
	<tr>
		<td>
		<a href="../ccass/chldchg.asp?i=1997&amp;d=2015-08-13">13-Aug-2015</a></td>
		<td>UOB Kay Hian (HK) Ltd</td>
		<td>7,500,000</td>
	</tr>
	<tr>
		<td>Total</td>
		<td>&nbsp;</td>
		<td>48,000,000</td>
	</tr>
</table>
<p>It appears likely that Mr Law deposited his 3m shares with Convoy IS, as all the other deposits matched the 7.5m option grants.</p>
<p>Incidentally, the other pre-IPO investor in 10% of Convoy IS is
<a href="../dbpub/natarts.asp?p=67648">Howard Jiang Qi Hang</a>, who featured in 
several previous investigations on <em>Webb-site Reports</em>.</p>
<p>Gransing is a name you will see again - it has acted 4 times as a placing agent 
for Convoy FH, in a
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0121/LTN20150121366.pdf" target="_blank">
bond placing</a> on 21-Jan-2015 and a
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0916/LTN20140916539.pdf" target="_blank">
bond placing</a> on 16-Sep-2014 as well as two unannounced bond placings on 
8-Jul-2014 and 14-Nov-2014 mentioned in Convoy FH's annual report. Gransing's
<a href="../dbpub/adviserships.asp?p=50836">client list</a> in <em>Webb-site 
Who's Who</em> also shows that it has acted as placing agent for Hao Wen, 
Suncorp and <a href="../dbpub/articles.asp?p=14951">WLS Holdings Ltd</a> (<strong>WLS</strong>, 
8021), a company which we cover below.</p>
<h3>CIFG-Lerado cross-holding</h3>
<p>On 22-Apr-2015, probably in response to queries from the regulators, Lerado 
made a &quot;<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0422/LTN201504221394.pdf" target="_blank">voluntary 
announcement</a>&quot; trying, and in our view failing, to justify its decision to 
use shares rather than cash to buy the property from CIFG.</p>
<p>On 21-May-2015, Lerado
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0521/LTN20150521804.pdf" target="_blank">
announced</a> that it had agreed to subscribe for 130m shares (12.44%) of CIFG 
at at $0.275, or $35.75m in total, setting up a cross-holding between the two, 
as CIFG still held 8.59% of Lerado. This was, incidentally, highly dilutive to 
CIFG, a 66.9% discount to its
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0514/LTN20150514261.pdf" target="_blank">
NAV per share</a> at 30-Apr-2015 of $0.83. This fact was omitted from the CIFG
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0521/LTN20150521826.pdf" target="_blank">
announcement</a>. The issue
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0602/LTN201506021383.pdf" target="_blank">
completed</a> on 2-Jun-2015. Our system indicates that Lerado
<a href="../ccass/chldchg.asp?i=3271&amp;d=2015-06-23">deposited</a> 70m 
CIFG shares with Gransing on 
23-Jun-2015, and <a href="../ccass/chldchg.asp?i=3271&amp;d=2015-06-24">
deposited</a> 60m CIFG shares with <a href="../dbpub/adviserships.asp?p=16123">Kingston Securities Ltd</a> 
(<strong>Kingston</strong>) the next day.</p>
<p>On 11-Aug-2015, Lerado
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=276772" target="_blank">
cut</a> its holding in CIFG from 128.8m shares (12.32%) to 103.392m shares 
(9.89%), selling the shares at an average $0.196, a 29% loss. As the stake was 
cut below 10%, Lerado is no longer a &quot;substantial shareholder&quot; and &quot;connected 
person&quot; of CIFG under the Listing Rules.</p>
<p class="regbox">Policy note: the disclosure threshold for substantial 
shareholdings in HK-listed companies was reduced by law from 10% to 5% on 
1-Apr-2003, but the Listing Rules have never been updated to match this.</p>
<h3>Lerado issues shares to CAID (0048)</h3>
<p>On 26-May-2015, Lerado
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0526/LTN201505261016.pdf" target="_blank">
announced</a> the acquisition of <a href="../dbpub/articles.asp?p=961180">
Brilliant Summit Ltd</a> from <a href="../dbpub/orgdata.asp?p=60877">China 
Automotive Interior Decoration Holdings Ltd</a> (<strong>CAID</strong>, 0048), 
for HK$45m, but again, not using any of the cash pile. Instead, it issued 75m 
shares at $0.60 each, or 7.82% of the enlarged issued shares of Lerado, further 
diluting existing shareholders. The target was &quot;engaged in the trading of 
garment accessories, such as nylon tape, polyester tape and polyester string&quot;. 
It had net assets of just $7.24m and a net profit in the year to 31-Mar-2015 of 
$0.9m.</p>
<p>In giving reasons, Lerado claimed that &quot;certain fabric products and expertise 
knowledge of the Target Group can be utilised in the Group's business of 
manufacturing medial products, including but not limited to powered and non 
powered mobility aid, wheel chairs and other durable equipment&quot;. Stretching the 
polyester yarn further, they claimed that the Target Group's &quot;sizable clientele&quot; 
would allow Lerado to &quot;penetrate into a new market.&quot; This rather ignores the 
fact that Lerado already had its own expertise in sourcing fabrics for baby 
strollers, infant car seats and mobility aids over many years.</p>
<p>CAID had
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2013/0515/GLN20130515177.pdf" target="_blank">
purchased</a> Brilliant Summit from its manager, a Mr Cheung Ngai, for HK$42m on 
15-May-2013. He apparently goes by the name of &quot;Elman&quot; and apart from Brilliant 
Summit (<a href="http://www.tradeeasy.com/supplier/311524/products" target="_blank">products 
here</a>), he runs another company in the same line of business called
<a href="http://www.hktdc.com/sourcing/hk_company_directory.htm?companyid=1X03G05V&amp;locale=en" target="_blank">
San Wah Holdings Ltd</a>. CAID,
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0526/LTN201505261144.pdf" target="_blank">
announcing</a> the sale of Brilliant Summit to Lerado, said that &quot;as a result of 
the constantly increasing costs of sales and competition, the Company is of the 
view that its business is not expected to grow at its current rate without 
further investments and developments.&quot; CAID intended to hold the Lerado shares 
&quot;to achieves earnings in the form of capital appreciation.&quot;</p>
<p>The transaction
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0616/LTN20150616807.pdf" target="_blank">
completed</a> on 16-Jun-2015. We can see that CAID deposited the 75m new Lerado 
shares with Win Fung in two batches,
<a href="../ccass/chldchg.asp?i=1997&amp;d=2015-06-23">40m on 23-Jun-2015</a> 
and <a href="../ccass/chldchg.asp?i=1997&amp;d=2015-07-14" target="_blank">
35m on 14-Jul-2015</a>. Of all the brokers it could use, why this little firm, 
and why is this the same firm in which Mr Chen and one of the option holders 
also deposited their Lerado shares? The shares are positioned in the 
same custodian ahead of an important vote on Lerado's future. To summarise those deposits of shares with 
Win Fung:</p>
<table class="numtable center fcl">
	<tr>
		<th>Shareholder</th>
		<th>Shares</th>
		<th>Deposit date</th>
	<tr>
		<td>Mr Chen (Hwa Foo)</td>
		<td>96,805,800</td>
		<td>
		<a href="../ccass/chldchg.asp?d1=2015-09-22&amp;d=2014-12-09&amp;sort=chngdn&amp;i=1997">9-Dec-2014</a></td>
	</tr>
	<tr>
		<td>An exercised option holder</td>
		<td>7,500,000</td>
		<td>
		<a href="../ccass/chldchg.asp?d1=2015-09-22&amp;d=2015-04-29&amp;sort=chngdn&amp;i=1997">29-Apr-2015</a></td>
	</tr>
	<tr>
		<td>CAID</td>
		<td>40,000,000</td>
		<td>
		<a href="../ccass/chldchg.asp?d1=2015-09-22&amp;d=2015-06-23&amp;sort=chngdn&amp;i=1997">23-Jun-2015</a></td>
	</tr>
	<tr>
		<td>CAID</td>
		<td>35,000,000</td>
		<td>
		<a href="../ccass/chldchg.asp?d1=2015-09-22&amp;d=2015-07-14&amp;sort=chngdn&amp;i=1997">14-Jul-2015</a></td>
	</tr>
	<tr>
		<td>Total</td>
		<td>179,305,800</td>
		<td>&nbsp;</td>
	</tr>
</table>
<br>
<h3>CAID's new INED or mooncake coordinator</h3>
<p>For some light relief, on 4-Sep-2015 CAID
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0904/LTN201509041352.pdf" target="_blank">
appointed</a> a new INED and audit committee member, Ms
<a href="../dbpub/positions.asp?p=2471005">Adeline Ng Li La</a>, who 
&quot;has over 10 years of experience in human resources and corporate management&quot;. 
She also has a Certificate of Human Resources Management from HK Baptist 
University and is &quot;a senior administrative officer of a renowned international 
technology company in Hong Kong&quot;. Wow, she sounds highly qualified, doesn't she?</p>
<p>A quick search discovers her Linked In page (<a href="../codocs/AdelineNgLinkedIn.pdf" target="_blank">copy 
here</a>). Since May 2015, she has been personal assistant to the General 
Manager of Amadeus Hong Kong Ltd - and her duties include &quot;supervise the 
receptionist and the cleaning lady&quot;, &quot;coordinate mooncake distribution&quot;, 
&quot;manage pantry cabinet&quot; and 
planning the Christmas party. Now this of course is all important work, but 
probably not that relevant to the duties of a listed company director and audit 
committee member. We wonder how she was introduced to CAID. This is probably not 
what HKEx had in mind when it started promoting board diversity, but it's what 
you get when as a regulator, you <a href="3wisemonkeys.asp">let controlling 
shareholders vote</a> on INED elections.</p>
<h3 id="CAIDconvoy">CAID and Convoy</h3>
<p>On 30-Jun-2015, CAID
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0630/LTN201506301279.pdf" target="_blank">
announced</a> a placing via Convoy IS, listing the Financial 
Adviser as <a href="../dbpub/adviserships.asp?p=2191911">Opus Capital Ltd</a> (<strong>Opus 
Capital</strong>) and using the full 20% general mandate of 276.48m shares 
at $0.485, a 19.2% discount to the closing price of $0.60. However, the price 
then collapsed, and on 9-Jul-2015, they
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0709/LTN201507091252.pdf" target="_blank">
cut the placing price</a> to $0.345, a 42.5% discount to the original closing 
price. The placing
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0721/LTN20150721478.pdf" target="_blank">
completed</a> on 21-Jul-2015. Our
<a href="../ccass/chldchg.asp?i=6193&amp;d=2015-07-21" target="_blank">CCASS 
analysis shows</a> that 125.48m shares were deposited with Astrum, only 68m with 
Convoy IS and 25m with Kingston, with the remaining 58m to 4 other brokers.</p>
<p>CAID's
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0831/LTN201508311368.pdf" target="_blank">
interim results</a> for 30-Jun-2015 disclosed a huge unrealised gain of RMB 
448.6m (HK$561m) on &quot;held-for-trading investments&quot; which then had a market value 
of RMB564.0m (HK$705m). In other words, a gain of about 389% in 6 months. No 
normal stock will give you that, but a bubble stock will. Net tangible assets at 
30-Jun-2015 were RMB761.9m (HK$952m) or about $0.689 per share, so the 
investments accounted for 74% of that.</p>
<p>CAID's interim results and report contain the following statement, which we regard as 
false and misleading:</p>
<blockquote>&quot;At 30 June 2015, there was no significant investment 
held by the Group.&quot;</blockquote>
<p class="regbox">Policy note: Some of the listed companies which have 
recently reported exceptionally large percentage gains on listed securities must own 
bubble stocks. If you know what stocks a listed company owns, then you would be able 
to take the SFC's <a href="../dbpub/subject.asp?c=106">concentration warnings</a> into account and discount those 
investments to what <em>you</em> regard as fair value, rather than relying on inflated 
market valuations. But unfortunately, the Stock Exchange and SFC do not require such 
disclosure, even when inflated listed investments make up the bulk of a 
companies net assets. They simply rely on the company having to announce losses 
as inside information
<em>after</em> the bubble has burst, rather than telling you that they hold 
bubble stocks in the first place.<br><br>This is despite the fact that Listing Rules
<a href="http://en-rules.hkex.com.hk/net_file_store/new_rulebooks/h/k/HKEX4476_3830_VER10.pdf" target="_blank">
Appendix 16 paragraphs 32(4) and 40(2)</a> (or on GEM,
<a href="http://en-rules.hkex.com.hk/net_file_store/new_rulebooks/h/k/HKEX4476_929_VER10.pdf" target="_blank">
Rules 18.41(4) and 18.59</a>) require that companies disclose &quot;significant 
investments held, their performance during the financial [year/half-year] and 
their future prospects&quot;. It seems that SEHK just doesn't want to enforce this.<br>
<br>Although the Listing Rules which require such disclosure contain no 
definition of &quot;significant&quot;, it should be seen in the context of the size of the 
holder's balance sheet and therefore the potential impact on shareholder value 
if the market value of the investments were to change. Whether the investment is 
&quot;held-for-trading&quot; or as a long-term &quot;available for sale&quot; asset is irrelevant to 
the potential impact on shareholder value, except for the fact that profits tax 
applies to trading.<br><br>Separately, many listed companies have avoided the 
notifiable transaction rules in
<a href="http://en-rules.hkex.com.hk/net_file_store/new_rulebooks/h/k/HKEX4476_2655_VER10.pdf" target="_blank">
Chapter 14</a> by declaring themselves to be &quot;in the business&quot; of trading 
securities. This then allows them to invest as much of their shareholders' money 
as they like on purchasing &quot;held-for-trading&quot; securities without announcing the 
transactions, because they are deemed transactions &quot;of a revenue nature in the 
ordinary and usual course of business&quot; under
<a href="http://en-rules.hkex.com.hk/en/display/display_main.html?rbid=4476&amp;element_id=2661" target="_blank">
Listing Rule 14.04(1)(g)</a>. The Stock Exchange should close this loophole. 
Investments in securities, regardless of how they are booked, should be subject 
to the notifiable transaction rules.</p>
<p>You might wonder then why CAID did not just cash in some of its $705m of 
investments rather than raise $94.2m in a placing of 20% new shares, claiming 
that it needed the money. The results failed to identify these spectacular 
investments, but noted that by 31-Aug-2015, the value had decreased by 23.5% 
since the end of June. That's about HK$224m of loss.</p>
<h3>CIFG and Lerado: parallel open offers</h3>
<p>On 17-Aug-2015, Lerado
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0817/LTN20150817049.pdf" target="_blank">
announced</a> a massive 3:1 open offer of new shares at $0.15 each, a 68% 
discount to the market price of $0.47, with no excess applications. The primary underwriter is Gransing, the 
Financial Adviser is <a href="../dbpub/adviserships.asp?p=66798">Octal Capital Ltd</a> (<strong>Octal 
Capital</strong>) and the IFA is 
Opus Capital, the same as the Financial Adviser to CAID.</p>
<p>As we've <a href="openoffers.asp">said before</a>, deep discount open offers are a form of extortion 
of 
existing shareholders, because they are faced with the choice of either being 
heavily diluted economically, or putting in cash to prevent the dilution. Unlike 
rights issues, the holder does not have the third option of selling his 
entitlements to recover the discount and thereby mitigate the economic damage. 
For this reason, the UK Listing Rules include a limit (set decades ago) of not 
more than a 10% discount on open offers. Hong Kong, still in many ways a 
developing market, allows this extortion to continue. See
<a href="https://www.handbook.fca.org.uk/handbook/LR/9/5.html" target="_blank">
UK Listing Rule 9.5.10</a>.</p>
<p>Adding to this abuse is that an open offer often involves no ability for 
shareholders to make &quot;excess application&quot; for unsubscribed shares. Nor are the 
unsubscribed shares sold in the market to capture the premium above the issue 
price for the benefit of passive shareholders. This leaves the underwriter with 
the benefit of the discount on shares which shareholders cannot or do not 
subscribe. <strong>In these circumstances, the open offer in practice is a 
conditional placing of deeply discounted shares with the &quot;underwriter&quot;, subject 
to a right of first refusal by existing shareholders pro rata to their holdings.</strong></p>
<p>Gransing cannot end up as a controlling 
shareholder of Lerado, so it has to have sub-underwriters. From a
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=278097" target="_blank">
disclosure of interest</a>, we can see that
Capital VC (mentioned above) is a sub-underwriter for 370m shares, or 9.64% of the enlarged capital. 
Another
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=73747" target="_blank">
disclosure</a> shows that <a href="../dbpub/positions.asp?p=67849">Barry Lau 
Wang Chi</a> is a sub-underwriter for 370m shares. He is a Responsible Officer 
of <a href="../dbpub/orgdata.asp?p=1805721">Adamas Asset Management (HK) Ltd</a> 
(<strong>Adamas</strong>), which will feature below.</p>
<p>On 9-Sep-2015, CIFG
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0909/LTN20150909992.pdf" target="_blank">
announced</a> a huge 8:1 open offer with no excess applicatoins, &quot;underwritten&quot; 
by Black Marble Securities, which is owned by Lerado. The Financial Adviser to CIFG is
<a href="../dbpub/adviserships.asp?p=2055719">Akron Corporate 
Finance Ltd</a> (<strong>Akron</strong>) and the IFA is Opus Capital, the same as Lerado's 
IFA and CAID's FA.</p>
<p>As Lerado owns less than 10% of CIFG, the underwriting is not a &quot;connected transaction&quot;. However, it is 
<strong>blatantly clear that Lerado has a &quot;material 
interest&quot; in the CIFG transaction and should be prohibited from voting in the EGM 
of CIFG</strong> to approve the open offer. Furthermore, Lerado stands to benefit from 
any unsubscribed shares at the discounted offer price. As there are no excess 
applications, this is in effect a discounted placement with Lerado subject to 
clawback by existing holders.Listing Rule 2.15 states:</p>
<blockquote>&quot;Where a transaction or arrangement of an issuer is 
subject to shareholders' approval under the provisions of the Exchange Listing 
Rules, any shareholder that has a material interest in the transaction or 
arrangement shall abstain from voting on the resolution(s) approving the 
transaction or arrangement at the general meeting.&quot;</blockquote>
<p><strong>Correspondingly, we submit that CIFG should not be permitted to vote 
in the Lerado EGM, because obviously Lerado is engaged in a commercial 
transaction with CIFG to provide it with funding under the CIFG open offer.</strong></p>
<h3 id="ChenDisposal">Mr Chen's &quot;disposal&quot; at a 53% loss</h3>
<p>Now, according to a
<a href="http://di.hkex.com.hk/di/NSForm3A.aspx?fn=178443" target="_blank">
disclosure of interest</a>, on 9-Sep-2015, Mr Chen, ED of Lerado, sold his 
entire interest of 97,823,800 shares, including a personal holding of 1,018,000 
shares and those held by Hwa Foo. Some of it was on-exchange at 
$0.25, but most of it was off-market at $0.22 because total market volume that 
day was only 7,625,800 shares. When we look at
<a href="../ccass/chldchg.asp?d=2015-09-11&amp;i=1997">CCASS movements</a>, 
on the settlement date of 11-Sep-2015 we see his personal holding of 1,018,000 
shares leaving Core Pacific Yamaichi, and only 2,805,800 shares leaving Win 
Fung, and there have been no reductions in
<a href="../ccass/chistory.asp?i=1997&amp;part=1088">Win Fung's balance</a> 
since then. So it appears that the other 94,000,000 shares were transferred, off 
market, to other clients of Win Fung and remain there.</p>
<p>As an ED of Lerado, Mr Chen would have been prohibited from voting in favour 
of the proposed open offer, so it is a matter of great concern that these shares 
may have been placed in friendly hands, along with the positions held by CIFG 
and CAID, to vote in favour (if they are not required to abstain).</p>
<p>This disposal, at a deep discount to cash and to net asset value, of a key 
block of shares, really makes no economic sense for Mr Chen. If he was unhappy 
with the effects of the proposed open offer, he could have joined us in voting
<u>against</u> the proposal. He was only prohibited 
from voting in favour. At a purported disposal price (for most of his shares) of 
$0.22, he appears to have accepted a loss of 53% since the open offer was 
announced. We find this hard to believe. Accordingly <strong>we urge the SFC to 
investigate the true nature of the transactions and who has bought the shares.</strong> 
We would be surprised if the &quot;buyers&quot; had not been mentioned elsewhere in this 
article.</p>
<a href="../dbpub/str.asp?i=1997">
<img class="center" alt="" src="../images/1225chart.png"></a>
<h3 id="c33m">China 33 Media (8087)</h3>
<p>There's another open offer we need to tell you about, and the background is 
this.</p>
<p>On 26-Jan-2015,
<a href="../dbpub/orgdata.asp?p=64396">China 33 Media Group Ltd</a> (<strong>C33M</strong>, 
8087) 
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0126/GLN20150126065.pdf" target="_blank">announced</a> that its controlling shareholder, 
<a href="../dbpub/orgdata.asp?p=2477173&amp;s1=stakdn&amp;s2=&amp;x=y">Lizhong Ltd</a> (<strong>Lizhong</strong>), 
which had held 243.756m shares (43.13%) had 5 days earlier pledged 192m shares 
(32.00%) to a lender and on 22-Jan to 26-Jan Lizhong had sold its remaining 
66.756m shares (11.13%) in the market. They didn't say who the lender was, but a 
subsequent
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=255672" target="_blank">
disclosure of interest</a> shows that it is funds managed by Adamas, which was 
mentioned above. Our analysis shows the average price received by Lizhong in the 
3 days was $0.4192 per share, a total of $27.98m. Now, why did Lizhong need to sell those shares and 
borrow that money by pledging the remainder? Read on.</p>
<p>On 10-Apr-2015, CIFG, via its 100% subsidiary New Express Investment Ltd, <a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0410/GLN20150410077.pdf" target="_blank">
agreed</a> to subscribe 120m shares (16.67%) of
<a href="../dbpub/orgdata.asp?p=64396">China 33 Media Group Ltd</a> (<strong>C33M</strong>, 
8087) at $0.22, exhausting its general mandate, for a total of HK$26.4m. The 
deal
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0422/GLN20150422083.pdf" target="_blank">
completed</a> on 22-Apr-2015, diluting Lizhong from 32.00% to 26.67%.
<a href="../ccass/chldchg.asp?i=6711&amp;d=2015-05-06">Our system shows</a> 
that on 6-May-2015, CIFG deposited its C33M shares with Gransing.</p>
<p>Three months later, on 24-Jul-2015, C33M
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0724/GLN20150724069.pdf" target="_blank">
announced</a> a massive 7 for 1 open offer at $0.10, a 75.6% discount to the 
closing price of $0.41, without excess applications. The Financial Adviser was Octal Capital 
(the same as for Lerado's open offer), and the 
underwriters were Gransing, Kingston and <a href="../dbpub/adviserships.asp?p=1441">RHB OSK Securities HK Ltd</a> 
(<strong>RHB OSK</strong>). 
The IFA again was Opus Capital, the same as for Lerado. Lizhong undertook to take up part of its 
entitlement amounting to 844,799,700 shares, which to the nearest thousand is 
4.4 shares for each share it owns, not 7. That would cost it $84.5m, but of 
course, it had already raised about $27.98m by selling shares in the market in 
January, so there was a funding gap of $56.5m, or about $0.294 per existing 
share, which it might have borrowed from Adamas funds.</p>
<p>If CIFG was to maintain 
its holding, it would have to put in another $0.70 for each share it held. It 
had sold a few shares but still held 113.622m (15.78%). The share price dived 
26.8% on the day after the news, but the prospect strangely seemed to delight 
CIFG, which undertook not to sell any more and to take up all its entitlements 
to 795.354m shares at a cost of $79.5m. However, on 4-Aug-2015, C33M
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0804/GLN20150804241.pdf" target="_blank">
announced</a> that it and Gransing had agreed to cut CIFG's commitment to 290m 
shares. As a result CIFG would be diluted to 7.01% of C33M.</p>
<p>Under 
<a href="http://en-rules.hkex.com.hk/en/display/display_main.html?rbid=4476&amp;element_id=547" target="_blank">
GEM Listing Rule 10.39(1)</a> or
<a href="http://en-rules.hkex.com.hk/en/display/display_main.html?rbid=4476&amp;element_id=2283" target="_blank">
Main Board Listing Rule 7.24(5)(a)</a>, if an open offer is at a ratio higher than 1 for 2 
then it must be approved by &quot;independent&quot; shareholders excluding the controlling 
shareholder or, if none, the executive directors and their associates. So the largest holder of C33M, Lizhong, could not vote 
in favour 
at the EGM, as it is an associate of the Chairman.</p>
<p>How convenient, then, that there was another &quot;independent&quot; shareholder 
who could vote in favour. Look at the
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0831/GLN20150831059.pdf" target="_blank">
EGM results</a> on 31-Aug-2015. CIFG almost certainly voted its 113.622m shares 
in favour, and only 2,050 other shares voted in favour, while 28,638,000 shares 
voted against. The open offer was thereby approved, and the
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0914/GLN20150914009.pdf" target="_blank">
prospectus</a> was published on 14-Sep-2015.</p>
<h4>Update, 26-Sep-2015</h4>
<p>The C33M open offer prospectus discloses that several sub-underwriters have 
been engaged. Gransing, with a commitment of 1,905,200,300 shares (33.07% of the 
enlarged shares), engaged SBI CCFS for 800m shares (13.89%) and 3 other unnamed 
sub-underwriters for a total of 540m shares (9.37%), each with less than 5% of 
enlarged shares. RHB OSK, with a commitment of 500m shares (8.68%) had engaged 2 
unnamed sub-underwriters to take all of them.</p>
<p>Kingston, with an underwriting commitment of 1500m shares (26.04%), had 
engaged but then terminated 4 sub-underwriters to take all of it. One was 
Harvest Aspect International Ltd, which a
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=73100" target="_blank">
filing shows</a> is owned by <a href="../dbpub/natperson.asp?p=2472281">William 
Yu Tsung Chin</a>, for 644.64m shares (11.19%). The remaining 3 each had less 
than 5% but totaled 14.85%. After these 4 were terminated, Kingston engaged a 
single sub-underwriter for the whole lot. Guess who? Black Marble Securities 
(owned by Lerado).</p>
<p>SBI CCFS and Black Marble have each failed to file a disclosure of interest.</p>
<p>The denominator in the calculation of percentage for disclosure of interests 
under
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/s308.html#issued_voting_shares" target="_blank">
s308 of the Securities and Futures Ordinance</a> is based on the number of 
&quot;issued shares&quot;, not the number which may be in issue in the future. So in a 7:1 
open offer, there are new shares equivalent to 700% of existing shares. All the 
filings by the underwriters and sub-underwriters in the C33M case use the wrong 
denominator (the number of shares which will be in issue if the open offer 
completes) and hence show the wrong percentage, which should be multiplied by a 
factor of 8. Anyone with an underwriting commitment equal to 5% or more of the
<em>existing shares </em>(in the case of C33M, 36m shares) should make a filing, 
and clearly, that has not happened, with several sub-underwriters of Gransing, 
RHB OSK and Kingston. The SFC should require them to correct their filings and 
to procure filings by their sub-underwriters, including those which have now 
been terminated.</p>
<h3>GreaterChina Professional Services (8193)</h3>
<p>Now let's look at how Lerado (via Black Marble Securities) and Akron 
(Financial Adviser to CIFG on its open offer) have been working together in 
another transaction.</p>
<p><a href="../dbpub/articles.asp?p=66066">GreaterChina Professional Services 
Ltd</a> (<strong>GPS</strong>, 8193) is listed on GEM and owns
<a href="../dbpub/adviserships.asp?p=7094">Greater China Appraisal Ltd</a>, 
which values real estate and other assets. On 13-Nov-2014, GPS began to deviate 
from its core business, by
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2014/1114/GLN20141114003.pdf" target="_blank">
buying</a> 80% of Golden Vault Ltd, which indirectly owns a mainland advertising 
business with in-elevator poster frames and LCD displays in Changshu, PRC, for 
HK$110m in promissory notes.</p>
<p>Golden Vault had turnover of RMB 7.34m in 2013 and net assets of RMB 5.73m 
(HK$7.16m) at 30-Sep-2014. This business was valued by
<a href="../dbpub/adviserships.asp?p=49260">Roma Appraisals Ltd</a> at $184m, 
because, hey, elevators are difficult to get into - especially when they are 
going up. That valuer is owned by <a href="../dbpub/articles.asp?p=152902">Roma 
Group Ltd</a> (<strong>Roma</strong>, 8072) and the financial adviser on the 
profit forecast was Akron.</p>
<p>A
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=265720" target="_blank">
disclosure of interest</a> shows that on 11-May-2015,
<a href="../dbpub/articles.asp?p=4923">China Environmental Energy Investment Ltd</a> 
(<strong>CEEI</strong>, 0986) increased its holding in GPS from 2.63% to 5.13%, 
buying 21.495m shares at $0.556 per share. From our CCASS system we see the 
shares
<a href="../ccass/chldchg.asp?sort=chngdn&amp;i=6887&amp;d=2015-05-13">
deposited</a> with <a href="../dbpub/articles.asp?p=51093">Southwest Securities (HK) Brokerage Ltd</a> 
(<strong>SWSHK</strong>, formerly Tanrich Securities Co Ltd).</p>
<p>On 8-Jul-2015, Roma
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0708/GLN20150708075.pdf" target="_blank">
announced</a> that it had agreed to lend up to HK$58m to
<a href="../dbpub/orgdata.asp?p=2470275">Brilliant One Holdings Ltd</a> (<strong>Brilliant 
One</strong>) for 12 months at 12% p.a., secured by 310.85m shares in an unnamed 
GEM-listed company and guaranteed by persons named Ip Kwok Kwong and Wong Chi 
Keung, the ultimate owners of Brilliant One. That non-disclosure of the GEM 
company's name was silly, because it was easily determined that Brilliant One 
was the 36.23% controlling shareholder of GPS, which eventually
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0804/GLN20150804245.pdf" target="_blank">
announced</a> the loan facility on 4-Aug-2015.
<a href="../dbpub/positions.asp?p=66067">Ip Kwok Kwong</a> is the MD of GPS, 
while Wong Chi Keung (<a href="../dbpub/positions.asp?p=6062">this one</a>) is 
an accountant with 13 INED positions. The loan facility includes a maximum 
loan-to-value ratio of 65%. So if they draw the full loan, then the share price 
falling below $0.287 would trigger a top-up obligation. The shares were
<a href="../ccass/chldchg.asp?d1=2015-09-17&amp;d=2015-07-09&amp;sort=chngdn&amp;i=6887">
moved</a> from Emperor Securities Ltd to Infast Brokerage Ltd on 9-Jul-2015.</p>
<p>On 9-Jul-2015, the day after the share pledge, GPS
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0712/GLN20150712005.pdf" target="_blank">
announced</a> a huge proposed placing of shares under a specific mandate, 2.6bn 
shares at $0.10, a 74.4% discount to the market price of $0.39, via Black Marble 
Securities, which is owned by Lerado. The Financial Adviser is Akron (the same 
as for Lerado's open offer). That represents 303% of the existing 
shares, and they are not even bothering to make the shares available to existing 
shareholders by an open offer or rights issue. Simultaneously, it was proposed that
<a href="../dbpub/articles.asp?p=4971">SEEC Media Group Ltd</a> (<strong>SEECM</strong>, 
0205) would subscribe 1.4bn shares at the same price, a total of $140m, for 
28.82% of the enlarged shares.</p>
<p class="regbox">Policy note: As we mentioned above, open offers or rights 
issues larger than 1 for 2 (a 50% enlargement of issued shares) must be subject 
to shareholders' approval with controlling shareholders abstaining, or if there 
are none, then with executive directors and their associates abstaining. That 
does provide some small measure of protection, (unless the vote is being 
manipulated with warehoused shares). However, this protection is negated by the 
fact that a massive placing under a &quot;specific mandate&quot; can be approved without 
requiring controllers or executive directors to abstain. The Listing Rules 
should be amended to close the loophole so that controllers/executive directors 
should be required to abstain from voting in favour of any proposal to approve a 
&quot;specific mandate&quot; that enlarges the issued shares by more than 50%.</p>
<p>Brilliant One, which has pledged its controlling shareholding to Roma, was 
allowed to vote to approve this outrageous proposal.</p>
<p>Of the $395.1m net proceeds, GPS intends to use $100m in its money-lending 
subsidiary, <a href="../dbpub/orgdata.asp?p=1760649">Colbert Finance Ltd</a>, 
and $150m to develop its securities brokerage business. It doesn't own a 
stockbroker yet, but it plans to either buy one or set one up. The EGM
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0914/GLN20150914045.pdf" target="_blank">
approved</a> the placing on 14-Sep-2015 without objection. With an avalanche of 
shares due to hit the market at $0.10, it is quite impressive that the stock 
still closed at $0.495 on 23-Sep-2015.</p>
<h3>SEECM (0205)</h3>
<p>Now let's look at a fourth open offer involving Lerado (via Black Marble 
Securities) and Opus Capital.</p>
<p>SEECM is, or was, principally engaged in advertising agency, distribution of 
books and magazines. And securities trading, of course, like all shoddy 
companies should be. It
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0712/LTN20150712007.pdf" target="_blank">
announced</a> its investment in GPS on 10-Jul-2015.</p>
<p>On 17-Jul-2015, SEECM
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0717/LTN20150717023.pdf" target="_blank">
announced</a> that it had agreed to subscribe 103.02m shares (16.67%) of
<a href="../dbpub/articles.asp?p=63313">China New Economy Fund Ltd</a> (<strong>CNEF</strong>, 
0080) at $0.385, for a total of HK$39.66m, exhausting CNEF's general mandate. 
CNEF is another Chapter 21 investment company, and that was a 61.5% discount to 
the NAV of CNEF at 30-Jun-2015 of $1.00. As we noted in our article
<a href="newyear2015.asp"><em>Some Bubbles for New Year</em></a> on 
31-Dec-2014, CNEF had shares in the Finsoft bubble alongside Convoy FH, and Tony Tai Man Hin, the 
CFO and Company Secretary of CNEF, was an INED of Finsoft. He retired from 
Finsoft on 5-May-2015. The CNEF
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0717/LTN20150717003.pdf" target="_blank">
announcement</a> of the subscription named Astrum as the placing agent and did 
not mention the discount to NAV.</p>
<p>Also on 17-Jul-2015, SEECM
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0717/LTN20150717897.pdf" target="_blank">
announced</a> that it is applying to the SFC to set up a stockbroker. Now 
everyone wants to be a broker. Lerado, GPS and SEECM.</p>
<p>On 19-Aug-2015, SEECM
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0819/LTN201508191193.pdf" target="_blank">
announced</a> a huge open offer, 3 for 1 at $0.10, a 61.5% discount to the 
market price of $0.26. The Financial Adviser is Opus Capital (the FA of CAID and 
the IFA of C33M and Lerado), the IFA is 
<a href="../dbpub/adviserships.asp?p=17363">Hercules 
Capital Ltd</a> (<strong>Hercules</strong>) and the underwriter is Black Marble 
Securities, owned by Lerado. Again there will be no excess applications, so the 
&quot;underwriter&quot; gets the benefit of discounted unsubscribed shares. Of net proceeds of $624m, 
SEECM plans to use HK$365m to set up a stockbroker, $30m to set up a corporate 
finance advisory and asset management firm and $225m for the acquisition and 
operation of an unspecified e-commerce platform.</p>
<p>The shares dived on the news, dropping 35.4% to $0.168 the next day. But they 
weren't done yet. On 9-Sep-2015, they decided to increase the carnage by
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0909/LTN201509091041.pdf" target="_blank">
consolidating</a> the shares 2:1 and then
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0909/LTN201509091043.pdf" target="_blank">
changing</a> the offer terms to 5 new shares for each consolidated share at 
$0.10, equivalent to $0.05 before the consolidation. So the offer discount 
becomes an effective 80.8% discount to the original closing price of $0.26. This 
will raise a bit less though, HK$519m. This news caused another drop in the 
price, by 16.7% from $0.156 to $0.13 the next day. So the stock price had now 
halved even before putting the plan to a vote.</p>
<p>A
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0918/LTN20150918015.pdf" target="_blank">
circular</a> for the capital reorganisation went out on 18-Sep-2015 for an EGM 
on 12-Oct-2015. <strong>We urge shareholders to vote against the resolutions</strong>. 
They are special resolutions that require a 75% majority to pass, so blocking it 
is more feasible than usual. If it passes, then a circular to propose the open 
offer is due out on 28-Oct-2015.</p>
<h3 id="CYChan">Chan Cheong Yee and CESHK</h3>
<p>There is a common person to a number of these companies.
<a href="../dbpub/positions.asp?p=15504">Chan Cheong Yee</a> (<strong>C Y Chan</strong>) 
is a Responsible Officer of <a href="../dbpub/adviserships.asp?p=5437">China 
Everbright Securities (HK) Ltd</a> (<strong>CESHK</strong>). CESHK is the 
investment manager of four Chapter 21 companies: CIFG, CNEF,
<a href="../dbpub/articles.asp?p=16163">China Innovation Investment Ltd</a> (<strong>CII</strong>, 
1217) and <a href="../dbpub/articles.asp?p=11970">China Investment Development 
Ltd</a> (<strong>CID</strong>, 0204). C Y Chan is an ED of all 4 companies, and 
he is also an ED of Capital VC.</p>
<h3>CID (0204)</h3>
<p>CID is in its own little bubble - it closed on 23-Sep-2015 at $0.157, 
compared with NAV of $0.024 at
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0915/LTN20150915205.pdf" target="_blank">
31-Aug-2015</a>.</p>
<h3>CEEI (0986)</h3>
<p>Now remember we mentioned CEEI, the investor in GPS? On 12-Nov-2014, CEEI
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1120/LTN20141120694.pdf" target="_blank">
announced</a> a placing of 48,190,489 shares at $0.97 per share to raise 
HK$46.28m, exhausting the general mandate, followed by a huge 8:1 rights issue 
at $0.195 per share, an 82.4% discount to the market price of $1.11, to raise 
between $376m and $451m. Excess applications were allowed. At the time, CEEI had 
no substantial shareholders.</p>
<p>Win Fung was both the placing agent and the rights issue underwriter. 
The placing was on a best efforts basis, and on 27-Nov-2014, the placing price
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1127/LTN20141127748.pdf" target="_blank">
was cut</a> to $0.66. The placing was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1203/LTN20141203445.pdf" target="_blank">
completed</a> on 3-Dec-2014, and all the shares
<a href="../ccass/chldchg.asp?sort=chngdn&amp;i=1165&amp;d=2014-12-03">were 
deposited</a> into the CCASS account of Win Fung for its clients. Not a single 
share moved out of that account until after the EGM to approve the rights issue. And guess what, the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1218/LTN20141218288.pdf">
EGM results</a> on 18-Dec-2014 show that the number of shares voted in favour of 
the rights issue was 48,437,576, just 247,087 more than the number of placing 
shares.</p>
<p>On 12-Mar-2015, CEEI
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0312/LTN20150312842.pdf" target="_blank">
announced</a> that it would start investing in &quot;quality stock and other 
financial products&quot;, so don't say you weren't warned! On 17-Apr-2015, CEEI
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0417/LTN201504171319.pdf" target="_blank">
announced</a> that it had bought 51m shares (0.337%) of Suncorp (mentioned 
above) that day in the market for HK$61.45m at an average of $1.205 after a huge 
run up in the share price following
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0413/LTN201504131280.pdf" target="_blank">
completion</a> of a placing at $0.245 per share on 13-Apr-2015. The stock closed 
at $0.204 on 23-Sep-2015, down 83% since the purchase by CEEI. Some of the other 
investments by CEEI are covered below. </p>
<h3>WLS (8021)</h3>
<p>Now let's tell who may have benefitted from a huge bubble in the shares of
<a href="../dbpub/orgdata.asp?p=14951">WLS Holdings Ltd</a> (<strong>WLS</strong>, 
8021), a construction company.</p>
<p>As background, on 21-Oct-2014, WLS
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2014/1021/GLN20141021039.pdf" target="_blank">
announced</a> that CIFG would subscribe for 79m shares (16.67% of enlarged) at 
$0.177, a 0.6% premium to market, exhausting the general mandate. On the face of 
it, WLS had no other substantial shareholders. The deal
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2014/1031/GLN20141031099.pdf" target="_blank">
completed</a> on 31-Oct-2014. The shares were
<a href="../ccass/chldchg.asp?i=3082&amp;d=2014-11-05">deposited</a> with 
<a href="../dbpub/orgdata.asp?p=50814">Fordjoy Securities and Futures Ltd</a> (<strong>Fordjoy</strong>) on 5-Nov-2014. CIFG rapidly sold off the 
shares, from 12-Nov-2014, dropping below 5% on 3-Dec-2014.</p>
<p>WLS owns a licensed money-lender, <a href="../dbpub/orgdata.asp?p=2227726">
Gold Medal Hong Kong Ltd</a>, incorporated on 19-Mar-2014 and licensed on 
26-Nov-2014.</p>
<p>On 21-Jan-2015, WLS
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0121/GLN20150121035.pdf" target="_blank">
announced</a> a 5:1 share consolidation and a proposed massive placing of 540m 
consolidated shares (563.16% of the existing shares) at $0.30 via SWSHK (then Tanrich 
Securities Co Ltd). The Financial 
Adviser was Akron. This placing price was a 42.3% discount to the adjusted 
closing price of $0.52. At the 5-Mar-2015
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0305/GLN20150305083.pdf" target="_blank">
SGM to approve</a> the placing, votes in favour were 89,597,500, or 18.69% of 
the issued shares. Total turnout was only 19.00%. We suspect most of those votes 
in favour were shares previously held by CIFG, but we'll never know for sure.</p>
<p>Of the 540m shares, we know that CEEI took 63m shares (9.91% of enlarged), 
because it
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0318/LTN201503181052.pdf" target="_blank">
announced</a> the subscription on 18-Mar-2015. Disclosures of interests show that
<a href="../dbpub/positions.asp?p=93626">
Samuel Chiu Se Chung</a>, a licensed Representative of Roofer Securities Ltd,
also
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=68932" target="_blank">
subscribed</a> 9.9%. Unity, mentioned above,
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=260175" target="_blank">
subscribed</a> 31.5m shares (4.95%),
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=260181" target="_blank">
as did</a> Capital VC, mentioned above
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=260049" target="_blank">
and</a>&nbsp; <a href="../dbpub/orgdata.asp?p=68429">Avant Capital Management (HK) Ltd</a> (<strong>Avant</strong>), 
as asset manager.&nbsp;Mr Ye Ruiqiang
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=63024" target="_blank">
subscribed</a> 4.95%. As of 31-Dec-2014, he owned 6.44% of Capital VC.</p>
<p>There are 4 subscribers whom we cannot identify. A person named Zhang Yan
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=68998" target="_blank">
subscribed</a> 40.67m shares (6.40%) which were probably deposited with Emperor 
Securities Ltd, and a person named Zheng Wanying
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=68948" target="_blank">
subscribed</a> 31.33m shares (4.93%). A person named Civic Cheung Sun 
Kei <a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=68994">subscribed</a> 
54m shares (8.49%) and another named Cheung Kam Hong
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=68992" target="_blank">
subscribed</a> the same number.</p>
<p>A person named Wong Chun Wah
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=68949" target="_blank">
subscribed</a> 23m shares (3.62%). It's a common name but we see that the same number 
went to the custody of Henik Securities Ltd, where there is a licensee called
<a href="../dbpub/positions.asp?p=99256">Wong Chun Wah</a>. Similarly a person named 
Ma Kin Lung
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=68918" target="_blank">
subscribed</a> 31.0m shares (4.88%), and we see that number deposited with Get 
Nice Securities Ltd, where <a href="../dbpub/positions.asp?p=78780">Ma Kin Lung</a> 
is a licensed representative.</p>
<p>A person named Tam Siu Ki
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=68991" target="_blank">
subscribed</a> 54m shares (8.49%), increasing his stake to 9.28%. That may or 
may not be the same as <a href="../dbpub/natarts.asp?p=103952">Simon Tam Siu Ki</a>, 
who was a representative of RHB OSK (then known as Prudence 
Securities Co Ltd) until his license was revoked on 30-Oct-2003 for rat-trading 
and other trading malpractices. In summary, then after the placing, the holdings 
were:</p>
<table class="numtable center c2l">
	<tr>
		<th>&nbsp;</th>
		<th>Name</th>
		<th>Shares</th>
		<th>Stake %</th>
	</tr>
	<tr>
		<td>1</td>
		<td>CEEI (0986)</td>
		<td>63,000,000</td>
		<td>9.91</td>
	</tr>
	<tr>
		<td>2</td>
		<td>Samuel Chiu Se Chung</td>
		<td>63,000,000</td>
		<td>9.91</td>
	</tr>
	<tr>
		<td>3</td>
		<td>Tam Siu Ki</td>
		<td>59,000,000</td>
		<td>9.28</td>
	</tr>
	<tr>
		<td>4</td>
		<td>Cheung Kam Hong</td>
		<td>54,000,000</td>
		<td>8.49</td>
	</tr>
	<tr>
		<td>5</td>
		<td>Cheung Sun Kei, Civic</td>
		<td>54,000,000</td>
		<td>8.49</td>
	</tr>
	<tr>
		<td>6</td>
		<td>Zhang Yan</td>
		<td>40,670,000</td>
		<td>6.40</td>
	</tr>
	<tr>
		<td>7</td>
		<td>Avant</td>
		<td>31,500,000</td>
		<td>4.95</td>
	</tr>
	<tr>
		<td>8</td>
		<td>Capital VC (2324)</td>
		<td>31,500,000</td>
		<td>4.95</td>
	</tr>
	<tr>
		<td>9</td>
		<td>Unity (0913)</td>
		<td>31,500,000</td>
		<td>4.95</td>
	</tr>
	<tr>
		<td>10</td>
		<td>Ye Ruiqiang</td>
		<td>31,500,000</td>
		<td>4.95</td>
	</tr>
	<tr>
		<td>11</td>
		<td>Zheng Wanying</td>
		<td>31,330,000</td>
		<td>4.93</td>
	</tr>
	<tr>
		<td>12</td>
		<td>Ma Kin Lung</td>
		<td>31,000,000</td>
		<td>4.88</td>
	</tr>
	<tr>
		<td>13</td>
		<td>Wong Chun Wah</td>
		<td>23,000,000</td>
		<td>3.62</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>Total</td>
		<td>540,000,000</td>
		<td>85.71</td>
	</tr>
</table>
<p>The WLS placing
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0327/GLN20150327111.pdf" target="_blank">
completed</a> on 27-Mar-2015 and the CCASS deposits
<a href="../ccass/chldchg.asp?sort=chngdn&amp;i=3082&amp;d=2015-03-27">are 
here</a>. By that time, the stock had more than doubled to $1.25. Unlike the 
allotments after the IPO, there was no concentration warning. Yet 13 holders 
held 85.71% of the stock.</p>
<p>The price continued to climb. On 15-May-2015, with the stock at $2.26, 7.53x the placing price, WLS
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0515/GLN20150515173.pdf" target="_blank">
announced</a> a 7:1 bonus issue. The stock spiked again and was suspended at 
$4.27 on 17-Jun-2015, prompting the company to
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0617/GLN20150617067.pdf" target="_blank">
announce</a> that it was negotiating for a possible share issue. After a brief 
correction to $2.50, it was suspended again on 19-Jun-2015, pending
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0623/GLN20150623077.pdf" target="_blank">
announcement</a> on 23-Jun-2015 of a &quot;framework agreement&quot; for possible 
subscriptions by Avant and <a href="../dbpub/orgdata.asp?p=2477919">Shin Kong Capital Management Inc</a> (<strong>SKCM</strong>) of 1920m and 5760m 
shares (post-bonus) at $0.06875, a 78% discount to the bonus-adjusted closing 
price of $0.3125, to raise $528m gross and enlarge the issued shares by 151%.</p>
<p>While the stock was suspended, it went ex-bonus on 23-Jun-2015 and the bonus 
shares were distributed on 3-Jul-2015, so for 10 days straddling the half-year 
point, only 1/8 of the company was tradable. When trading in those shares 
resumed on 24-Jun-2015, the stock shot up again on heavy volume, reaching a 
daily high of $1.22 on 26-Jun-2015. Remember that most of the existing shares 
had been issued at a bonus-adjusted $0.0375, so they were now up 32.5x. WLS 
closed at $1.05 on 30-Jun-2015, allowing those listed companies which held the 
stock to book enormous &quot;fair value gains&quot; in their interim results. At the end 
of June, WLS had a market capitalisation of HK$5341m, compared with net tangible 
assets
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0724/GLN20150724071.pdf" target="_blank">
at 30-Apr-2015</a> of HK$282m (<strong>$0.055 per share</strong>), so it was trading at 18.9x 
NAV.</p>
<a href="../dbpub/str.asp?i=3082">
<img class="center" alt="" src="../images/8021spike.png"></a>
<p>Disclosures of interest indicate that SKCM was using a vehicle called
<a href="../dbpub/orgdata.asp?p=2478101&amp;s1=stakdn&amp;s2=&amp;x=y">SKCM TMT 
I, L.P.</a>, which was 50% owned by Chiang Chun Yi and 50% by
<a href="../dbpub/natarts.asp?p=52015">Yam Tak Cheung</a>, and managed by
<a href="../dbpub/orgdata.asp?p=2478102">SKCM TMT GP Co. Ltd</a>, which is 40% 
owned by SKCM. After all that excitement, SKCM
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0813/GLN20150813003.PDF" target="_blank">
backed out</a> of the deal on 8-Aug-2015 citing disagreement over due diligence 
on WLS, but Avant
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0813/GLN20150813195.pdf" target="_blank">
signed</a> a new agreement on 12-Aug-2015 to continue to subscribe 1920m shares 
at $0.06875, conditional on WLS issuing at least 252m shares in a fund-raising 
exercise so that Avant ends up with 29.48% of less - certainly under the 30% 
takeover trigger.</p>
<p>Now this long and winding road takes us back to Lerado. On 18-Aug-2015, 
WLS
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0818/GLN20150818069.pdf" target="_blank">
announced</a> two placings via Black Marble Securities, owned by Lerado. The 
underwritten tranche is of 360m shares (7.08% of existing shares) at $0.06875, and there is a further &quot;best 
efforts&quot; placing of 5400m shares (106.15%) at the same price, at 82.1% discount to the 
closing price of $0.385. Together these could raise $389.22m mostly for, you 
guessed it, money-lending and securities business. The shares closed 
on 23-Sep-2015 at $0.27, down 74.3% since the end of June, but still at 4.9x 
NAV.</p>
<h3 id="CJ">Raise the umbrellas: China Jicheng (1027)</h3>
<p>Perhaps the most ridiculous bubble in our market at present (although there 
is a lot of competition for that title) is umbrella maker
<a href="../dbpub/orgdata.asp?p=2350356">China Jicheng Holdings Ltd</a> (<strong>CJ</strong>, 
1027) which listed on 13-Feb-2015. It peaked on 18-Sep-2015 at $3.18 
with a market value of HK$47.7bn, compared with net tangible assets in the 
30-Jun-2015
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0828/LTN20150828924.pdf" target="_blank">
interim results</a> of $399.6m, or $0.0267 per share. So it was trading at 119x 
NTA.</p>
<p>Adjusting for a 25:1 stock split in June, CJ's IPO priced the shares at 
$0.044, so was up 72.3x since the IPO. This gives new meaning to the term 
&quot;umbrella movement&quot;. The initial custody positions of the 150m IPO shares (25%) 
are in our
<a href="../ccass/choldings.asp?d=2014-09-16&amp;sort=holddn&amp;i=13487">
records here</a>. The top 3 brokers will now be familiar to you: Gransing (8.72% 
of CJ), Win Fung (8.18%) and SWSHK (3.73%), a total 20.64% or 82.54% of the 
float.</p>
<p>On 14-May-2015, the SFC
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0514/LTN20150514327.PDF" target="_blank">
warned</a> that 16 shareholders owned 24.02% of CJ, or 96.08% of the float, 
leaving 0.98% of CJ for everyone else. The stock closed at $13.76 the day before 
that warning, or $0.5504 after the stock split, so it is up 5.14x since then.</p>
<p>In its
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0630/LTN20150630045.pdf" target="_blank">
annual results</a> for 31-Mar-2015, CEEI (mentioned above) disclosed a holding 
of 12.67m shares (2.11%) in CJ at a purchase cost of $1.10 per share, which 
means they were allocated in the IPO, because they have never traded that low. 
After the stock split that will be 316.75m shares at $0.044. So CEEI doesn't 
always pay bubble prices for bubble shares - it occasionally gets in at the 
bottom.</p>
<p>The controlling shareholder of CJ is its Chairman, Huang Wenji, with 11.25bn 
shares (75%) which, on paper, makes him a US$ umbrella multi-billionaire. We note that on 17-Sep-2015, he
<a href="../ccass/chldchg.asp?i=13487&amp;d=2015-09-17">deposited</a> 1.5bn 
shares into CCASS with Black Marble Securities, owned by Lerado. That could be 
preparation for a placing of existing shares and possibly a subscription of new 
ones, if anyone is dumb enough to buy them.</p>
<a href="../dbpub/str.asp?i=13487">
<img class="center" alt="" src="../images/1027bubble.png"></a>
<h3>Lerado interim results show massive gain</h3>
<p>Lerado is one of several companies which have made enormous market gains in 
the first half of 2015 without disclosing what stocks it bought. In the 
30-Jun-2015
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0828/LTN201508281786.pdf" target="_blank">
interim results</a>, it disclosed &quot;held-for-trading investments&quot; comprising 
&quot;equity securities listed in Hong Kong&quot; of HK$702.1m. It also said that by 
28-Aug-2015, the value had declined by 11%. It booked an unrealised gain of 
$626.5m, implying a purchase cost of $75.6m and a gain of 829% in 6 months or 
less. No normal stock does that. Whatever stock(s) they hold, it must be bubble 
paper, and investors deserve to know what it is so that they can make their own 
assessment of &quot;fair value&quot; rather than relying on an artificial market price.</p>
<p>After providing for $105m of profits tax on the gains, Lerado had net 
tangible assets at 30-Jun-2015 of $1220m, or $1.27 per share. But if those gains 
evaporate, then the NTA drops to $698.5m, or $0.728 per share. Both figures are 
before dilution from the proposed open offer. If the offer proceeds, then that 
NAV would be diluted to about $0.430 (with the gains) or $0.295 (without the 
gains). Both figures assume that Lerado loses the Dorel arbitration, which is 
worth $307m, which is $0.320 per share before the open offer or $0.080 per share 
after the open offer.</p>
<h3>Capital VC's open offer</h3>
<p>On 13-Mar-2015, Capital VC
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0313/LTN20150313967.pdf" target="_blank">
announced</a> a 5:1 share consolidation to be followed by a 7:1 open offer at 
$0.25 per consolidated share without excess applications. That was a 76.5% discount to the adjusted closing 
price of $1.065 per share. The Financial Adviser was Akron, and the &quot;underwriter&quot; 
was SBI CCFS. The
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0311/LTN20150311813.pdf" target="_blank">
last published</a> NAV at 28-Feb-2015 was an adjusted $4.821, so the issue 
discount to NAV was 94.8%. The stock sold off on the 
news, down 39.9% the next day to an adjusted $0.64.</p>
<p class="regbox">Policy note: Chapter 21 investment companies like Capital 
VC have to publish their NAV monthly. This involves valuing all their listed 
investments at market prices, so they know what they are. Until 2002, these 
announcements had to be published in newspapers, so space was at a premium. Now 
that announcements are online for the last 13 years, this is no longer the case. 
Yet the Listing Rules still only require Chapter 21 companies to disclose the 
top 10 investments once per year in the annual report. This is ridiculous. The 
top 10 investments should be disclosed every month so that shareholders know 
what risks they are taking.</p>
<p>Again, investors faced the extortion of having to either see the investment 
heavily diluted, or put in more cash, and no excess applications were allowed, 
so it is really a placing with the &quot;underwriter&quot; subject to first refusal of 
existing holders pro rata. The underwriter benefits from any unsubscribed shares at a discount to 
market. To eliminate the possibility of SBI CCFS holding a controlling 
stake, it had to arrange sub-underwriters. They included Gransing, for 180m 
shares, <a href="../dbpub/orgdata.asp?p=50922&amp;s1=stakdn&amp;s2=&amp;x=y">Jun 
Yang Securities Co Ltd</a> (<strong>Jun Yang Securities</strong>), for 152m, 
Avant, for 142.5m, and Fordjoy, for 80m shares. </p>
<p>Incidentally, SBI CCFS is 52% owned by
<a href="../dbpub/positions.asp?p=8827">Cao Guo Qi</a>, a director of several 
listed companies, and 48% by <a href="../dbpub/positions.asp?p=91144">Zhang 
Xiongfeng</a>, the current Chairman of CMG, mentioned above.</p>
<p>On 11-Jun-2015, Capital VC shareholders
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0611/LTN20150611745.pdf" target="_blank">
approved</a> the consolidation and open offer without objection. Voting turnout 
was only 14.39% of the issued and eligible shares, probably including the 6.44% 
owned by Ye Ruiqiang.</p>
<p class="regbox">Policy note: shareholders are often unaware of 
opportunities to protect themselves by voting against such egregious proposals, 
because the SFC does not require banks and brokers who hold their stock to 
inform them of EGMs and seek voting instructions. As a result, most banks and 
brokers, in the small print of the client contracts, state that they are not 
obliged to do so. This is a major barrier to investor participation in 
governance, and the SFC should act to resolve this, as we said in our submission
<em><a href="PRR.asp">Principles of Responsible Regulation</a></em> 
(26-May-2015). </p>
<p>On 24-Jun-2015, six days before Capital VC's financial year-end, it
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0624/LTN20150624717.pdf" target="_blank">
announced</a> that it was changing its year-end to 30-Sep-2015, so it would 
produce a second set of condensed &quot;interim&quot; results for the 12 months to 
30-Jun-2015. The purported reason for this was:</p>
<blockquote>&nbsp;&quot;to align the Company's financial year end date 
with that of the Company's principal associate,
<a href="../dbpub/orgdata.asp?p=67592">CNI Bullion Limited</a>, which is the 
Group's substantial investment.&quot;</blockquote>
<p>This holds no water though. Remember, Capital VC is a Chapter 21 investment 
company, so under
<a href="http://en-rules.hkex.com.hk/en/display/display_main.html?rbid=4476&amp;element_id=3367" target="_blank">
Rule 21.04(3)(a)</a>, it is not allowed to take &quot;legal, or effective, management 
control of underlying investments&quot; and under Rule 21.04(3)(b) it is required to 
maintain a &quot;reasonable spread of investments&quot;. So there is no logical reason to 
align the year ends of Capital VC and any of its investments, including CNI 
Bullion Ltd, which only accounted for 9% of Capital VC's NAV at 31-Dec-2014.</p>
<p>So what was the real reason for extending the year-end? In our view, to delay 
the annual disclosure of the portfolio. It's so embarrassing to have to show 
that your castle is built on sand.</p>
<p>On 15-Jul-2015 Capital VC
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0715/LTN20150715447.pdf" target="_blank">
announced</a> that its NAV at 30-Jun-2015 was $9.0782 per share, and on 
27-Aug-2015 it announced the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0827/LTN20150827386.pdf" target="_blank">
second interim results</a> for the 12 months to June. Capital VC booked a 
pre-tax profit on financial assets of $1314m for the 12 months, compared with 
$163m in the first 6 months, so the second-half profit was $1151m. As an 
investment company, it does not distinguish between realised and unrealised 
gains, but we can deduce them from the amount of deferred tax, which is tax that 
is only payable when they cash out. Note 8 shows deferred tax of $132m, so 
as profits tax is 16.5% they have about $800m of net unrealised gains, probably 
in bubble stocks.</p>
<p>Anyway, with that NAV in mind, let's return to the open offer. 7:1 at $0.25, 
versus NAV of $9.0782, so the open offer would dilute NAV to $1.354 before 
expenses. Shareholders who did nothing would lose 85% of their net asset value. 
Yet, when the offer
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0720/LTN20150720678.pdf" target="_blank">
closed</a> on 9-Jul-2015, only 23.7% of the shares were subscribed. That left 
the underwriters and whoever was behind them with 66.75% of the company, 
acquired at $0.25 per share. The market price closed that day at $0.32. Due to 
market losses in July, the NAV closed that month at $1.0292, and $0.8824 at the 
end of August. Amazingly there was nobody with a disclosed 5% shareholding after 
the offer closed.</p>
<p>Meanwhile, even in market price terms, the shareholders who did not subscribe 
(and most of them did not vote against the open offer) had seen the price 
collapse from $1.065 before the open offer to $0.32, even while Capital VC was 
racking up huge gains as a holder of the unnamed inflated stocks.</p>
<h3>Jun Yang (0397)</h3>
<p>Jun Yang Securities is owned by <a href="../dbpub/orgdata.asp?p=4951">
Jun Yang Financial Holdings Ltd</a> (<strong>Jun Yang</strong>, 0397). Until 
August, this was known as Jun Yang Solar Power Investments Ltd, but that's out 
of fashion, so now, like everyone else, it wants to be a financial services 
powerhouse.</p>
<p>Note 24 on page 113 of Jun Yang's
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0423/LTN20150423574.pdf" target="_blank">
2014 annual report</a> reveals that it owned 2.49% of
<a href="../dbpub/orgdata.asp?p=40901">Tech Pro Technology Development Ltd</a> (<strong>Tech 
Pro Technology</strong>, 3823) and 4.49% of Town Health International Medical Group Ltd (<strong>Town 
Health</strong>, 3886). Those had a market value of about HK$235m and $280m 
respectively, out of total listed equities of $854m. Jun Yang booked an 
unrealised gain on held-for-trading investments of HK$350m for 2014, without 
which it would have made a loss before tax of $98m.</p>
<h3 id="techPro">Tech Pro Technology (3823)</h3>
<p>This is another bubble stock, up 93.14% in 2014, and it has kept on going, up 
a net 22.62% this year so far. It closed on 23-Sep-2015 at $1.87, valuing the firm 
at HK$12.13bn. When a company includes the syllable &quot;Tech&quot; in its name twice, 
you know it is desperate for attention. The company makes LED lamps and losses. 
Oh and football. Yes, it
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0614/LTN20150614007.pdf" target="_blank">
has bought</a> a French soccer club,
<a href="http://www.fcsochaux.fr/" target="_blank">FC Sochaux-Montbeliard SA</a>. 
After all, why sponsor the shirts when you can buy the whole thing?</p>
<p>The interim report at 30-Jun-2015, shows net tangible assets of RMB475m 
(HK$594m) or about HK$0.092 per share. Turnover for the period was RMB111m, so 
if you annualize that you get RMB222m or HK$278m. So the shares are trading at 
about 20.4x NTA and about 44x turnover.</p>
<a href="../dbpub/str.asp?i=4898">
<img class="center" alt="" src="../images/3823bubble.png"></a>
<h3>L&amp;A (8195)</h3>
<p>This is another bubble stock. <a href="../dbpub/articles.asp?p=2313502">L &amp; A 
International Holdings Ltd</a> (<strong>L&amp;A</strong>, 8195) makes cashmere 
sweaters. It listed on 10-Oct-2014 after a
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2014/1009/GLN20141009001.PDF" target="_blank">
placing</a> at $0.06 per share (adjusted for the 10:1 split on 21-Apr-2015). In 
the placing, the top 10 placees received 89.74% of the float. It closed on 
23-Sep-2015 at $2.92, up 48.7x since the listing. The market value is 
HK$11.68bn, compared with net tangible assets of HK$129m at 31-Mar-2015, or 
about $0.032 per share, so it trades at 90x book value. Revenue for the year was 
$350m, so it trades at 33x sales.</p>
<p>Despite this ridiculous valuation, or perhaps because of it, CEEI bought 
69.384m L&amp;A shares (1.73%) in the market from 17-Apr-2015 to 12-May-2015, 
spending a total of HK$112.7m or an average of $1.62 per share. This was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2015/0512/LTN20150512818.pdf" target="_blank">
announced</a> on 12-May-2015. Of course, we don't know who the sellers were. 
Lucky them.</p>
<a href="../dbpub/str.asp?p=12850">
<img class="center" alt="" src="../images/8195bubble.png"></a>
<p>On 24-Jun-2015, the SFC issued a
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0624/GLN20150624047.PDF" target="_blank">
concentration warning</a>, noting that 19 shareholders held 23.18% out of the 
25% float.</p>
<h3>Roundup</h3>
<p>What you have seen here is a repeated pattern of abuse. The key steps in 
several transactions are:</p>
<ol>
	<li>Position votes in friendly hands which are not visibly connected to 
	controlling shareholders or executive directors, by issuance of new shares or transfer of 
	existing shares.</li>
	<li>Arrange loan financing for any existing controller to take up 
	entitlements, or even sell shares in the market with enough time gap to 
	deter allegations of insider dealing.</li>
	<li>Announce either (i) a large, deep-discount open offer without excess 
	applications; or (ii) a &quot;special mandate&quot; placing, which in the first case 
	will need &quot;independent&quot; shareholders' approval and in the latter, just 
	shareholders' approval.</li>
	<li>Use friendly votes to approve the proposal which damages the financial 
	interests of anyone who cannot or does not put up cash (in the case of a 
	placing, this isn't even an option).</li>
	<li>Complete the fund-raising and receive deeply discounted shares as the 
	underwriter, sub-underwriter or placee of the shares.</li>
</ol>
<p>Hong Kong deserves better if it wishes to make a claim to be a world-class 
financial centre.</p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1805721">Adamas Asset Management (HK) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2055719">Akron Corporate Finance Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=68429">Apollo Asset Management Limited (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=66066">Asia-Pac Financial Investment Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=44712">Astrum Capital Management Limited (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=51150">Black Marble Securities Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2376947">BlackMarble Capital Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2470275">Brilliant One Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=961180">BRILLIANT SUMMIT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11970">CAPITAL REALM FINANCIAL HOLDINGS GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18187">Capital VC Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=64396">China 33 Media Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=60877">CHINA AUTOMOTIVE INTERIOR DECORATION HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5437">CHINA EVERBRIGHT SECURITIES (HK) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=50814">China Gather Wealth Financial Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16163">China Innovation Investment Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16610">China Investment and Finance Group Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=59554">China Jianxin Financial Services Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2350356">China Jicheng Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=63313">China New Economy Fund Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2279980">CIS HOLDINGS LIMITED (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=48794">CIS SECURITIES ASSET MANAGEMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1760649">Colbert Finance Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=58895">Convoy Global Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2282025">Dorel Industries Inc.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4923">Dufu Liquor Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2019649">Finsoft Financial Investment Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14367">GET NICE SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2227726">GOLD MEDAL HONG KONG LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2477718">Golden Vault Limited (VG)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=50836">GRANSING SECURITIES CO., LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=7094">GREATER CHINA APPRAISAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12131">Hang Tai Yue Group Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14086">Hao Wen Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9176">Harbour Digital Asset Capital Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=50844">HENIK SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17363">HERCULES CAPITAL LIMITED (b2002-05-21)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=61696">INTELLIGENCE HONG KONG GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16123">KINGSTON SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2313502">Legendary Education Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=7889">Lerado Financial Group Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2477173">Lizhong Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4951">Minerva Group Holding Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=50922">Minerva Holding Financial Securities Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=66798">Octal Capital Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2191911">Opus Capital Limited (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14233">Qing Hua Holding Group Company Limited (BM)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1441">RHB SECURITIES HONG KONG LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=152902">Roma (meta) Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49260">Roma Appraisals Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=417290">SAN WAH HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=41149">SBI China Capital Financial Services Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4971">SEEC MEDIA GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2477919">Shin Kong Capital Management Inc.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2478102">SKCM TMT GP Co., Ltd</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2478101">SKCM TMT I, L.P.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=51093">SOUTHWEST SECURITIES (HK) BROKERAGE LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4858">SUNCORP TECHNOLOGIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=40901">Tech Pro Technology Development Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14951">WLS HOLDINGS LIMITED (BM)</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=12253">Chan, Dominic Kam Fuk</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=15504">Chan, Quattro Cheong Yee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=42188">Chen, Patrick Chun Chieh</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=65598">Chiang, Chun Yi</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=93626">Chiu, Samuel Se Chung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=7895">Huang Chen, Jamy Li Chu</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=7892">Huang, Henry Ying Yuan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=67648">Jiang, Howard Qi Hang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=58370">Law, Thomas Yee Man</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=20391">Leung, Eddie Tin Fu</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=78780">Ma, Kin Lung (SFC:ABE945)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=44748">Mak, Mark Kwong Yiu</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2471005">Ng, Adeline Li La</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=103952">Tam, Simon Siu Ki</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2478709">Wang, Zewei</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=99256">Wong, Chun Wah (SFC:AGV352)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=64297">Wong, Cynthia Sin Fai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=52015">Yam, Tak Cheung</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=106">Bubble/concentration warnings</a></li>
				
				<li><a href="/dbpub/subject.asp?c=136">Enigma Network</a></li>
				
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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