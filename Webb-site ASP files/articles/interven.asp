
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

<script type="text/javascript">document.title="Government Stock Market Intervention";</script>

	<div class="summary">A commentary on the Hong Kong government's controversial intervention in the local stock market, which began on 14-Aug-98. This article covers our various activities in this area in 1998-1999. Webb-site.com was launched in Nov-1998.</div>

<h2 class="center">Government Stock Market Intervention<br>
<span class="headlinedate">31 January 1999</span></h2>
<h3>Background</h3>

<p>On 14-Aug-98 the Hong Kong Government intervened in the stock market and the related
futures market, which had fallen by over 50% in the preceding year following the bursting
of a property and stock market bubble. The Hong Kong Monetary Authority drew its authority
for such a move from its role as protector of the the currency and in particular the link
between the Hong Kong dollar and US dollar. The HKMA alleged that &quot;manipulators&quot;
were profiting from a &quot;double play&quot; involving shorting the currency to squeeze
up interest rates, while holding large short futures positions, thereby profiting as the
stock market fell in sympathy.</p>

<p>Of course, one man's &quot;trading&quot; is another man's &quot;speculation&quot; is
another man's &quot;manipulation&quot;. These trading strategies were only successful
because the rest of the market was not willing to buy the stocks as they fell, correcting
the fall. We have been vigorously opposed to the market intervention because it creates
far more problems in the economy than it might have solved. Indeed, after the intervention
was over, the government introduced some technical amendments to the peg mechanism which
basically allowed them to damp down interest rate movements and make it much harder to
squeeze up interbank rates. Had this amendment been made earlier, then the excuse for
intervention would probably not have existed.</p>

<p>The logical extreme of intervention is when the government takes on a controlling or
total interest in equities, that is, nationalisation. Experiments in communism since World
War II, and to a lesser degree the nationalisation of industries in Western Europe, have
all shown that such an economic system does not work. Even by buying 10% stakes in
companies, the government has distorted the pricing mechanism for equity, which in turn
affects the cost of funds for companies and lead to the inefficient allocation of capital
in the economy. In addition, it creates conflicts of interest as the activities of almost
all businesses are affected to some degree by the government of the territory in which
they operate. For example, telecommunication licenses, the price of government land leases
and transportation franchises all involve direct negotiation with the government. Now that
a part of the reserves are invested in the equity of property developers, will the
Government's land policy really be unaffected?</p>

<p>Read the following articles: </p>

<ul>
  <li>The <a href="scmp980820L.asp">letter we wrote to the SCMP</a>, (published on 20-Aug-98)
    regarding the question of whether the government, by seeking to artificially raise market
    prices, was creating a false market</li>
  <li>The <a href="scmp980820.asp">SCMP article</a> of the same date regarding my letter and
    including a response by Joseph Yam, Chief Executive of the HKMA</li>
</ul>

<h3>The HKMA claims it is above the law</h3>

<p>On 3-Sep-98, a spokesman for the HKMA was quoted in the SCMP as stating that the
Securities (Disclosure of Interests) Ordinance (&quot;SDI&quot;) (requiring disclosure of
interests in excess of 10% of the voting rights in a company) did not apply to the HKMA .
The spokesman claimed that disclosing its holdings in Hong Kong firms would &quot;assist
speculators&quot;. SFC spokesman Bill Weeks was quoted as saying that he was aware the law
allowed for exemptions to the disclosure rule but that &quot;generally the commission's
view is that the law applies to all&quot;.</p>

<ul>
  <li>This prompted us to write a <a href="scmp980904.asp">letter to the SCMP</a>, (published
    on 4-Sep-98) regarding the effects of non-disclosure by governments on free markets, and
    estimating the extent of the intervention which later proved to be correct.</li>
</ul>

<p>The law under which the HKMA sought exemption is known as the Interpretation and
General Clauses Ordinance which in essence says that no law shall apply to the government
&quot;<em>unless it is therein expressly provided or unless it appears by necessary
implication that the Government is bound</em>&quot;. Like most laws, the securities laws
do not (in their text) explicitly apply to anyone, so the question boils down to whether
it is a &quot;necessary implication&quot; that they should apply to the government.</p>

<p>We will probably never see this tested in court, but it seems to me to be common sense
that if the laws on things like insider dealing, creating a false market, and disclosure
of interests don't apply to everyone, then they don't achieve their objective of investor
protection and market transparency. If only one investor (whoever that is) is allowed to
keep his holdings secret, then other investors are disadvantaged (a) through not knowing
and (b) through not being able to keep their own stakes secret. It has to be the case that
when the government gets involved in the markets, it steps beyond the bounds of its
exemption.</p>

<ul>
  <li>In late October, the government finally came clean and disclosed that it had more than
    10% of the voting rights in 2 companies. This meant that they had, in my opinion, breached
    &nbsp; Rule 33 of the Takeover Code, which requires notification of such holdings by 9.00
    a.m. on the next business day after which they are acquired. The Code is voluntary and
    does not have the force of law, so my argument is that the government cannot claim
    exemption from it in law, but can choose not to comply with it, in which case the SFC, as
    market regulator, should take appropriate action. I raised this issue with the SFC, as
    well as the question of whether the SDI law should by &quot;necessary implication&quot;
    apply, and the SCMP ran an <a href="scmp981116.asp">article regarding our correspondence
    with the SFC</a> on 16-Nov-98. The article contains a response from the Chairman of the
    SFC.</li>
</ul>

<p>This issue has not gone away. The government has transferred management of its
portfolio to a wholly-owned company, Exchange Fund Investment Limited (&quot;EFIL&quot;).
On 26-Oct-98, when releasing the first dislcosure of the HKMA holdings, Mr. T. L. Yang,
the Chairman of EFIL, stated that &quot;<em>neither the Govenment nor EFIL is under any
legal obligations to disclose</em>&quot; its holdings, while volunteering to disclose
&quot;<em>incremental changes in shareholding of 1% or more</em>&quot;. There was no
reference to decremental holdings, so let us hope the voluntary undertaking includes
those. However, the assertion of immunity from the SDI law means that EFIL considers
itself to fall within the government's general exemption from some other laws, and we
don't know what those are.</p>

<p>Paradoxically, Mr. Yang also stated that EFIL &quot;<em>will be subject to the full
regulation by the Securities and Futures Commission</em>&quot;. As we've already pointed
out, the SFC regulates the Takeover Code, including Rule 33 regarding disclosure. EFIL's
assertion of immunity is in stark contrast to the apparent views of the SFC Chairman
Andrew Sheng, who was quoted in the SCMP on 14-Nov-98 as saying &quot;<em>[EFIL] is a
private entity. It must follow all Hong Kong's laws and regulations</em>&quot;. So that's
clear then. </p>

<h3>What next</h3>

<p>In Jan-99, EFIL invited selected investment banks, without a public tender, to present
proposals for advisory services in relation to the portfolio. This may include the
lucrative mandate to sell part or all of the portfolio. A shortlist was selected to give
presentations on 4-6 Feb-99. Amazingly, legislator and EFIL board member and legislator
Eric Li Ka Cheung was quoted in the <em>SCMP</em> as saying that factors for appointment
include &quot;where the banks are headquartered&quot; (i.e. local favouritism),
&quot;their comments and predicitions on Hong Kong markets&quot; (i.e. you've got to say
you're bullish, even if you believe in 'random walk' market efficiency theory) and
&quot;their opinions on the Hong Kong dollar peg&quot; (i.e. you've got to be a fan).
Maybe the invitation should have advertised for &quot;yes men&quot; rather than advisers.</p>

<p>You can read our views on what EFIL should do in the article <a href="EFIL1.asp">EFIL
comes to LIFE</a>. </p>

<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=3295">Hong Kong Monetary Authority</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=114">Company & securities law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=121">Currency board/ peg</a></li>
				
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
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