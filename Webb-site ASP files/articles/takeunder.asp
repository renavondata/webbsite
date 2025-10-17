
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

<script type="text/javascript">document.title="HK's Takeunder Code";</script>

	<div class="summary">Three recent "takeunders" of Beauforte Investors, China Internet Global Alliance and Tung Fong Hung have reminded investors how ineffective Hong Kong's takeover code is. In each case, a buyer has been willing to pay a substantial premium for a stake which, while under 35%, is clearly enough to achieve control without making a general offer. <i>Webb-site.com</i> urges the SFC to reduce the threshold for these "takeunder" transactions.</div>

<h2 class="center">HK's Takeunder Code<br>
<span class="headlinedate">18 December 2000</span></h2>
<p>It is one of the fundamental general principles of takeover
codes that: </p>

<blockquote>

<p>&quot;If control of a company changes or is acquired or is
consolidated, a general offer to all other shareholders is normally
required&quot; </p>

</blockquote>
<p>It's right up there as General Principle 2 of the SFC's
<a target="_blank" href="http://eapp01.sfc.hk/apps/cc/RegulatoryHandbook.nsf/lkupMainAllDoc/H343/$FILE/Takeovers%20Code%2027.02.04%20(Eng).pdf">Hong Kong
Takeover Code</a> (<b>HKTC</b>), just after General Principle 1: </p>

<blockquote>

<p>&quot;All shareholders are to be treated even-handedly and all
shareholders of the same class are to be treated similarly&quot;. </p>

</blockquote>

<p>What do we mean by &quot;control&quot;? That is where takeover
codes differ. In the UK, where the code was first born, it is 30%. In Singapore,
it is 25%. Malaysia, 33.3%. In Australia and Canada, it is 20%. Even the PRC apparently sets the level at 30%. But
in Hong Kong, the HKTC says: </p>

<blockquote>

<p>&quot;control shall be deemed to mean a holding, or aggregate
holdings, of 35% or more of the voting rights of a company...&quot; </p>

</blockquote>

<p>As a practical matter, control is demonstrated when a
shareholder can achieve and maintain a majority representation in the boardroom.
Another strong indicator of whether a person believes they are acquiring control
by purchasing a stake is whether they are paying significantly more than the
market price of the shares, since the market price reflects a discount for the
lack of control. You don't buy shares in the market and expect to call the shots
in the boardroom. </p>

<p>With that in mind, <i>Webb-site.com </i>takes you through three cases from the
last three months which demonstrate clearly that the HKTC's 35% takeover threshold is too
high. In each case, a &quot;takeunder&quot; has been achieved by one or more
purchasers who buy more than 30% but less than 35% of the target, in each case
at more than a 100% premium to market price, and in each case without making a
general offer. </p>

<h3>Case 1: Blown out by Beauforte</h3>

<p>On 9-Oct-00 it was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001010/LTN20001010027.doc" target="_blank">announced</a>
that The Wharf (Holdings) Ltd (<b>Wharf</b>) was selling 34.87% of Beauforte
Investors Corporation Ltd (<b>Beauforte</b>) to Wonson International Holdings
Ltd (<b>Wonson</b>). </p>

<p>The price of HK$298.15m, or about $29.20 per share, was a <b>premium
of 107%</b> over the closing price of $14.10 on 5-Oct-00, and a premium of 39%
to the consolidated net asset value of $21.07 per share at 31-Dec-99. Beauforte
was essentially a shell, with most of its assets either in cash or invested in
Wheelock/ Wharf group companies. These investments are believed to have been sold prior to
the sale of Wharf's stake in Beauforte. </p>

<p>Adjust for the interim retained profit of $6.2m for the 6 months
to 30-Jun-99, and you have net assets of $623.2m. Wonson's share of that would
be $217.3m. So in round terms, it was paying an <b>HK$80m</b> control premium to
net assets for Beauforte, which just so happens to be the amount of the deposit
on the deal. </p>

<p>Wharf actually held 49.99% of Beauforte, and by <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001127/LTN20001127028.doc" target="_blank">completion</a>
of the sale of 34.87% to Wonson on 24-Nov-00, Wharf had placed out the balance
of it shares to placees who were &quot;independent of and not acting in concert
with&quot; Wharf or Wonson. All the directors (including the non-executive
directors) of Beauforte resigned and were replaced with Wonson appointees. </p>

<h3>Case 2: Close, but no CIGAr</h3>

<p>In another recent takeunder transaction, on 29-Sep-00 it was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001003/LTN20001003032.doc" target="_blank">announced</a>
that Mr Oei Hong Leong, who owned 46.27% of China Internet Global Alliance Ltd (<b>CIGA</b>),
was selling 29.00% of it to two listed companies. 11.55% was sold to Hanny
Holdings Ltd (<b>Hanny</b>) and 17.45% to Paul Y - ITC Construction Holdings Ltd
(<b>Pauly</b>). </p>

<p>Hanny had also agreed to buy 5.90% of CIGA from a company called
Namble Ltd, taking Hanny's stake to 17.45%, the same as Pauly, and the combined
stake to <b>34.9%</b>. A separate <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001003/LTN20001003034.doc" target="_blank">announcement</a>
from Hanny revealed that Namble was owned by Hutchison Whampoa Ltd (Hutchison),
controlled by Mr Li Ka-shing. Some people never miss out on a deal. </p>

<h4>Hanny and her sisters </h4>

<p>If Hanny and Pauly sound like siblings, well they almost are.
ITC Corporation Ltd (<b>ITC</b>) owns 21.14% of Hanny and 40.79% of Pauly. The
SFC would almost certainly assume them to be acting in concert, so they had to
stay under the 35% takeover threshold to avoid making an offer. </p>

<p>Hutchison held another 3.51% of CIGA, and Mr Oei held 17.27%. So
each had sold the same 62.7% proportion of their shareholdings at the premium
price. Completion of the sales by Mr Oei took place on 11-Oct-00 and completion
by Hutchison was due on 16-Oct-00. The rest of Mr Oei's stake was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001010/LTN20001010013.doc" target="_blank">placed</a>
out with third parties on 9-Oct-00 and Hutchison was to do likewise. </p>

<p>As a term of the deals, Mr Oei caused a <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001012/LTN20001012020.doc" target="_blank">board
meeting</a> of CIGA to take place on 11-Oct-00 at which 5 representatives of
Hanny and Pauly were appointed to the board as executive directors, outnumbering
the existing 3 executive directors. There are also two independent non-executive
directors and Mr Canning Fok of Hutchison remains on board. </p>

<p>The price on the deals with Hanny and Pauly was $0.80 per share,
for a total purchase price on the 34.9% stake of HK$1,278m, of which 50% was
deferred as a promissory note for 6 months bearing interest at 7.5% per annum.
The price represents a <b>premium of 119%</b> to the market price of $0.365 per
share on 26-Sep-00. It was close to CIGA's unaudited net tangible asset value of
$0.84 per share at 30-Jun-00. </p>

<p>CIGA has had something of an identity crisis this year, starting
the year as China Strategic Holdings Ltd, then catching the internet wave and <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000328/LTN20000328035.HTM" target="_blank">renaming</a>
itself to CIGA, and shortly to be <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001024/LTN20001024020.doc" target="_blank">renamed</a>
back to its old name. Like an excited electron, it jumped briefly into a higher
energy state before losing a significant quantum of value and falling back to
its ground state. </p>

<h3>Case 3: Tung Fong Hung</h3>

<p>Close on the heels of the CIGA deal, ITC <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001113/LTN20001113031.doc" target="_blank">announced</a>
on 10-Nov-00 that it had sold its <b>33.98%</b> stake in <a href="http://www.tung-fong-hung.com/" target="_blank">Tung
Fong Hung (Holdings) Ltd</a> (<b>TFH</b>) to a company called Mainland Talent
Developments Ltd, which is owned 50% by Ms Karen Lo Ki-yan and 50% by Ms Cindy
Yau Shun Tek. </p>

<p>The price was HK$180m, or about $0.743 per share, a <b>premium
of 207%</b> to the closing price of TFH of $0.242 on 8-Nov-00. A look at the
accounts shows that net tangible assets of TFH at 31-Mar-00 were $0.550 per
share. So the price was a 35% premium to net asset value, or in dollar terms, a
premium of <b>HK$47m</b> above net assets. </p>

<p>As a term of the deal, all the existing directors of TFH
resigned on 13-Nov-00 and the purchaser appointed its own representatives
instead. </p>

<p>At the same time, TFH sold a 49% interest in Tung Fong Hung
Investment Ltd (<b>TFHI</b>) to CIGA for $44.1m. As you have already learned,
CIGA was by then was in aggregate 34.9% owned by Hanny and Pauly. CIGA also
granted TFH a put option to sell the balance of 51% of TFHI for $45.9m at any
time in the next 2 years. The price was based on a 5.3% discount to net assets
of TFHI.&nbsp; </p>

<p>TFHI is the intermediate holding company of TFH's principal
subsidiaries engaged in Chinese medicine, food supplements, health products,
pharmaceutical business and internet business. TFHI accounted for 94% of the
turnover of TFH in the year to 31-Mar-00 and was loss-making. The rest of TFH's
business is mainly property investment. </p>

<p>The deal essentially allows TFHI to remain under its existing
management because CIGA retains the right to appoint 2 out of the 4 directors,
and to approve any changes to the board, amongst other things. At the same time,
TFH can claim to have a continuing business through 51% subsidiary TFHI (unless
and until it exercises the put option) which helps to maintain its listing. </p>

<h3>What it all means</h3>

<p>Three cases in three months, and we could tell you of many more
in this and previous years. If you still doubt that anyone can control a company
with less than 35%, then remember that Mr Li Ka-shing did exactly that with
Cheung Kong until earlier this year, as did Hutchison with Hong Kong Electric
until moving through 35% a few years ago, and as does Henderson Investment with
Hong Kong and China Gas (currently 33%). </p>

<p>34.9% has been demonstrated time and again as a large enough
block to justify a substantial control premium. If a buyer thought they were
getting only fleeting control, with directors likely to be replaced against
their will, then they would not be willing to pay that premium in the first
place. Clearly then, the HKTC's idea of control is way out of line with the
realities of the market. </p>

<p>We believe that the risk of outside interference to a
controlling shareholder only really becomes significant below 25%, with a more
subjective element between 25% and 30%. Above 35%, it is very rare to have any
outside interference with the way you run a company. Therefore at the very
least, the HKTC should lower the threshold to 30%, in line with the UK and the
mainland, and see how it goes for a couple of years before considering a further
reduction to 25%. </p>

<p>We can always expect that some people will simply fail to
disclose all their shareholdings in order to avoid making an offer when they
have bought control of a company. While that may involve the offence of lying to
the regulators, it is easy to do and difficult to detect. But that same group of
people would be just as likely to hide shareholdings above 35% at present, so
that is no argument for maintaining the threshold at a level which bothers
nobody. It <i>is </i>an argument for better enforcement. </p>

<h4>Transition provisions</h4>
<p>Whenever a threshold is moved, the question of what to do with
people between the old and new thresholds arises, in this case between 30% and
35%. The answer is simple - any subsequent increase in a holding between these
levels, where that holding existed prior to the new threshold taking effect,
must give rise to a takeover obligation, just as it would if the person had gone
through 30% for the first time.</p>
<p>If such a transition provision is not put in place, then we
would see a rush of substantial shareholders increasing their stakes from below
30% to just above it prior to the threshold reduction from 35%, in order to
avoid ever passing through the new 30% threshold and having to make a bid.</p>
<h3>Out of Control</h3>
<p>When you are an investor in a company, and control changes
hands, you expect to be paid for it. You don't expect to see larger shareholders
rewarded for cutting you out of the deal, taking all the control premium for
themselves. If that premium were spread amongst all shareholders, it would
certainly be lower in percentage terms, but it would also provide the equal
treatment that Hong Kong must strive for if it wants to mature into a
world-class market. It is time to move beyond the lip-service approach to
takeover regulation.</p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4997">Arta TechFin Corporation Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=878">Blue River Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=6406">China Ocean Industry Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2911">CSC Holdings Limited (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=345">Great China Holdings (Hong Kong) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=826">Master Glory Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3385">PT International Development Corporation Limited</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=191">Takeovers</a></li>
				
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