
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

<script type="text/javascript">document.title="Starless Now?";</script>

	<div class="summary">The PCCW-HKT takeover document is out, and we've read it. We'll give you the inside track on that in the next few days. But first, spare a thought for News Corp's Star TV, which in November announced a joint venture with HKT for digital TV. In another Webb-site.com exclusive, we have seen the full joint venture agreement. The JV seems almost certain to collapse, and we'll tell you why...</div>

<h2 class="center">Starless Now?<br>
<span class="headlinedate">28 May 2000</span></h2>
<p>On 10-Nov-99, with much fanfare, Rupert Murdoch breezed into
town and <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19991111/LTN19991111024.HTM" target="_blank">announced</a>
a proposed joint venture between his <a href="http://www.startv.com/" target="_blank">Star
TV</a> (owned by News Corp) and <a href="http://www.cwhkt.com/" target="_blank">Cable
&amp; Wireless HKT</a>. At that stage it was just a Memorandum of Understanding,
but the lawyers got to work and produced a binding <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000120/LTN20000120036.HTM" target="_blank">agreement</a>
on 19-Jan-00, just 5 days before the disclosure of talks regarding a proposed
merger with Singapore Telecom. And on 24-Jan, the day before those talks were
disclosed, HKT and Star TV submitted a joint application for the relevant
licences. And you know what happened after that.... </p>

<p>In a <i>Webb-site.com</i> exclusive, we have seen the full joint
venture &quot;Framework Agreement&quot; which sets out how the two sides would
co-operate. The scope of the venture, initially to be 60% owned by HKT and 40%
by Star TV, is wide ranging, as follows: </p>

<ul>
  <li>
    a digital pay-TV business initially to be marketed and
    distributed in HK and Macau and which may be extended to Taiwan and other
    agreed Asian markets;</li>
  <li>
    integrated internet portal businesses which shall target the
    mass market in Hong Kong, Macau, Taiwan and such other places as may be
    agreed; and</li>
  <li>
    an internet access business which shall target the mass
    market in HK and Macau.</li>
</ul>
<p>Yes, the entire Netvigator business, including its <a href="http://www.netvigator.com/" target="_blank">HK</a>,
<a href="http://www.netvigator.com.tw/" target="_blank">Taiwan</a> and <a href="http://www.netvigator.ca/" target="_blank">Canadian</a>
portals, dial-up and Ultraline broadband business were to be injected into the
JV, along with the iTV video-on-demand business. Use of the HKT network would be
contracted by the JV. The Netvigator portals then under development for
Singapore and <a href="http://www.netvigator.com.my/" target="_blank">Malaysia</a>
(which is due to launch on 31-May-00) were also included in the Joint Venture.</p>
<p>For its part, Star TV was to make available all its channels (on
a per-subscriber basis, with fees not specified in the Framework Agreement) and
the agreement reveals that Star TV would also provide free advertising for the
JV on its channels worth not less than US$30m in the first 2 years and $10m per
year in years 3 to 7.</p>
<p>C&amp;WHKT and Star TV are prohibited under the agreement from
running competing businesses. The prohibition includes:</p>
<ul>
  <li>
    <p>pay-TV in HK, Macau, Taiwan, Thailand, Singapore or
    Malaysia;</li>
  <li>
    <p>a portal targeted at the mass market in HK, Macau, Taiwan or
    any combination of the afore-mentioned countries; and</li>
  <li>
    <p>an internet access business which is targeted at the
    mass-market in HK or Macau.</li>
</ul>
<p>The only exceptions allowed were the supply of Star TV to Taiwan
pay-TV operators; vertical portals, portals focused on customers outside the
mass market; and provision of internet access to customers outside the mass
market (in other words, business customers wanting leased lines).</p>
<h3>Looking for an exit</h3>
<p>Having seen the detail of the Star TV agreement, it is hard to
imagine that PCCW could really want it to proceed. One of the supposed
&quot;synergies&quot; with HKT is to be able to offer the PCCW &quot;Network of
the World&quot; content (much of which is licensed from various sources) across
the HKT broadband network. But with the Netvigator portal and access service as part
of the JV, they would have to compete with the content produced in the JV's
portal. And HKT is prohibited from producing a portal or running an access
service outside of the JV. Legally, PCCW and its other subsidiaries (outside of
the HKT group) are not bound by that agreement, but practically it would be
difficult for them to compete with the JV or run the two NOW and Netvigator
brands in parallel. The JV even includes Netvigator's broadband portal, <a href="http://www.izene.com/" target="_blank">izene.com</a>.</p>
<p>So it seems likely that PCCW would be looking for an exit and
the Star TV joint venture will be one of the casualties of the merger. The only
part that may survive is the provision of Star's television channels to HKT, for
distribution across its broadband network in HK along with other channels, on a
subscription basis. This would probably mean the end of free-to-air Star TV
which we currently receive from our rooftops, but that was coming anyway as Star
TV has also applied for its own pay-TV satellite-based license.</p>
<p>However, to date, the take-up rate of HKT's existing iTV
video-on-demand service has been abysmal - the figure at 30-Sep-99 was
&quot;some 90,000&quot;, and six months later on 31-Mar-00 the figure was
&quot;some 90,000&quot;. Zero growth.</p>
<h3>But here's the Scoop</h3>
<p><i>Webb-site.com</i> can reveal that the JV agreement is
conditional upon the Chief Executive of HK in Council granting a Subscription
Television Broadcasting License to the JV (or to HKT or Star) <b>by 30th June
2000</b>, less than 5 weeks away. That date was never previously disclosed. If
there is no license by that date, then the agreement automatically terminates
and neither party shall have any claim against the other.</p>
<p>Before that license can be granted, you need the Broadcasting
Bill to pass into law to create that category of license in the first place.
Although the Government had originally planned to <a href="http://www.info.gov.hk/itbb/press/pr151099.htm" target="_blank"> grant licenses</a> in &quot;early
2000&quot;, the Bill was not even Gazetted until 28-Jan-00 and is still <a href="http://www.legco.gov.hk/yr99-00/english/bc/bc62/general/ebc62.htm" target="_blank">dragging
its way through Legco</a>, with no certainty over whether it will get passed
before the Council&nbsp; adjourns at the end of June and head for the polls.</p>
<p>So there seems little chance of the license being granted before
30-Jun-00 (just 33 days from now) and every chance that PCCW-HKT will
conveniently be able to let the agreement terminate automatically. Back in
November, the agreement was given great profile and there was talk about
floating the JV for billions of US dollars. Now, the deal has been relegated to
just a single sentence in the &quot;Information on HKT&quot; on page 122 of the
PCCW takeover document:</p>
<blockquote>
  <p>&quot;In November 1999, HKT and Star TV announced a joint
  venture to operate a pay television and Internet business in the Asia Pacific
  Region&quot;.</p>
</blockquote>
<p>That was then, this is NOW!</p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=12414">News Australia Pty Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=368">PCCW-HKT Limited</a></li>
				
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