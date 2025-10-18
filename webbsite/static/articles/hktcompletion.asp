
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

<script type="text/javascript">document.title="HKT Completion";</script>

	<div class="summary">The PCCW takeover of HKT became effective today. The resultant shareholdings add up to one giant overhang. We also look at how many people failed to elect for the more valuable of the two offers, the shrinking investment portfolio, and the silence surrounding key deals by PCCW needed to refinance its debt as it transits from concept stock to telecom utility.</div>

<h2 class="center">HKT Completion<br>
<span class="headlinedate">17 August 2000</span></h2>
<p>Pacific Century Cyberworks Ltd (<b>PCCW</b>) today <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000817/LTN20000817025.doc" target="_blank">announced</a> (Word format) the completion of its takeover of Cable
&amp; Wireless HKT Ltd (<b>HKT</b>). </p>

<p>PCCW said that HKT shareholders who chose the Increased Cash
Election (<b>ICE</b>) can expect an additional HK$18.62 per PCCW share in
respect of approximately 3.2% of the PCCW shares otherwise receivable pursuant
to the Combination Alternative. </p>

<p>The additional cash is available because some shareholders did
not make the rational election for the Combination Alternative (0.7116 PCCW
shares and $7.23 in cash), worth <b>$18.19</b> at the election deadline. As we <a href="pccwhkt2.asp" target="_blank">warned</a>
back in June, those who did nothing would get the Share Alternative by default,
and would lose out. At the election deadline, this was worth only <b>$16.94</b>
per HKT share. </p>

<p>Those shareholders who made the ICE (including Cable &amp;
Wireless plc, <b>C&amp;W</b>) will get, for every HKT share, about 0.689 PCCW
shares and HK$7.65 in cash. That's $0.45 more in cash than the standard
Combination Alternative. Based on the closing price on the election deadline
(15-Aug-00) of $15.40, they get a total value of <b>$18.26</b> per HKT share. </p>

<h3>Asleep at the wheel</h3>

<p>We don't know how many of those who elected for the Combination
Alternative also chose the ICE (as they logically should). But even if they all
chose the ICE, the implication is that <b>not more than 5.5%</b> of HKT shares
received the Share Alternative. If not all electing shareholders made the ICE,
then the figure would be less than 5.5%. </p>

<p>Prior to the merger (and allowing for the exercise of all share
options) HKT was owned 54.1% by C&amp;W, 10.8% by China Mobile (Hong Kong) Group
Ltd (<b>CMHKG</b>, parent of HK-listed China Mobile (Hong Kong) Ltd) and we
estimate that 7% was still owned by the Hong Kong Government, making a total of
71.9%. It is safe to assume that none of the top 3 shareholders failed to elect
for the more valuable Combination Alternative. </p>

<p>That means that, of the 28.1% of HKT in public hands, up to one
fifth failed to make the election. There will be more than a few investors
choking on their breakfast this morning. If you are a trustee of a fund, ask
your investment manager whether they made the election. </p>

<h3>C&amp;W's resulting stake</h3>

<p>In the merger document, the board of HKT wrote: </p>

<blockquote>

<p>&quot;Implementation of the Scheme will result in [C&amp;W]
owning a shareholding of between 10.0% and 19.6%, depending on the number of HKT
shares which are subject to the Combination Alternative&quot; </p>

</blockquote>

<p>We scratched our head when we read this. The numbers didn't
quite add up. Now we know why. In fact, C&amp;W has come out with <b>21.5%</b>
of PCCW, or 20.2% assuming conversion of outstanding PCCW options. Of those
options, at 22-May-00 there were 336.4m executive share options, and 1,003m
shares under option to Intel, which can exchange its 40% stake in Pacific
Century Convergence for shares in PCCW at any time in the next 9 years. </p>

<p>C&amp;W plans to sell 4.9% by way of a placing, as soon as
possible. On 29-Feb-00 they also <a href="http://www.cmgi.com/press/00/cmgi_cw.htm" target="_blank">announced</a>
a share swap with <a href="http://www.cmgi.com/" target="_blank">CMGI Inc</a> (a
US-based internet company) in which they would swap US$500m of PCCW shares for
the same value in CMGI shares. At current prices, that would be about 253m PCCW
shares, or about 1.2% of PCCW. </p>

<p>Since the announcement, CMGI has slumped 71% from US$129.56 to
US$$37.44. So US$500m now buys about 4.5% of CMGI, not 1.3% as was the case when
the swap was announced. No word on whether that deal is still on and whether
C&amp;W would sell the resulting CMGI shares, putting further pressure on the US
stock. </p>

<p>If the CMGI swap and the placing are completed, then that leaves
C&amp;W with 15.4% of PCCW, and they have undertaken to hold this for 6 months,
after which they can sell half, or 7.7%. After 17-Aug-01, they are free to do
what they like. </p>

<p>Meanwhile unlisted CMHKG, assuming it elected for the ICE, will
receive about 904m shares or <b>4.3%</b> of PCCW. The letter from independent
adviser ING Barings in the Scheme document wrote: </p>

<blockquote>

<p>&quot;we noted that there were press reports on 14 April 2000
regarding statements made by certain officials of [CMHKG] on its intention to
dispose of the New PCCW Shares after the Scheme becomes effective.&quot; </p>

</blockquote>

<p>The HK Government, which we estimate still held about 7% of HKT
(down from 8.9% after the stock market intervention due to sales of the Tracker
Fund), would receive about 586m shares, or <b>2.8%</b> of PCCW. It is the
Government's stated intention to dispose of the bulk of its equity portfolio
over the long term. </p>

<p>The top 3 shareholders of HKT add up to one giant overhang of
stock totalling 6.03bn shares or <b>28.6% </b>of PCCW, worth <b>US$11.9bn</b> at
current prices. </p>

<p>We can expect retail selling by smaller shareholders to begin on
Monday 21-Aug-00, the day on which PCCW share certificates will be dispatched to
HKT shareholders, for settlement on Wednesday. Those who sell early risk
defaulting on their sale and being nabbed for short selling if the stock does
not arrive on time. </p>

<h3>Optional profits</h3>

<p>Rumours in today's press that PCCW executives are about to cash
in on their options are also likely to depress the price, since the options were
good for the next 9 years. If they felt the stock had any upside, they should
hang on. </p>

<p>By coincidence, a slew of options became exercisable today at
HK$2.356 per share, of which PCCW directors hold 111.916m options worth
HK$1.46bn (US$187m) in profits at current prices. They also hold options
exercisable from 25-Oct-00 worth another US$52m in profits.&nbsp; </p>

<h3>The Telstra Deal</h3>

<p>We await news on whether the proposed deal with Telstra will go
ahead. There has been no news since the Memorandum of Understanding was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000413/LTN20000413019.doc" target="_blank">announced</a>
4 months ago on 12-Apr-00. In that announcement, they wrote: </p>

<blockquote>

<p>&quot;PCCW and Telstra intend to develop the proposed alliance in detail in respect of IP
Backbone Company and Regional Mobile Company with a view to achieving a shared
vision in respect of those companies and their businesses no later than three
weeks prior to the date set for the HKT shareholders' meeting held to approve
the Scheme&quot;</p>

</blockquote>

<p>In other words, that &quot;shared vision&quot; was due by 12-Jun-00, over 2 months
ago. Is no news
good news?</p>

<p>The deal is particularly important to PCCW because it would bring in US$1.5bn from
the sale of 40% of HKT's mobile business, plus US$1.5bn in the form of a
subordinated convertible loan note which is convertible at the improbable price
of $23.69 per PCCW share. The total of US$3bn is needed to help pay back the
debt taken out to acquire HKT.</p>

<h3>The HMTF deal</h3>

<p>On 29-Feb-00, with the offer for HKT, PCCW also announced a proposal to raise
US$500m by issuing convertible preference shares to HMTF PCCW Investors, LLC, an
affiliate fund of Texan investor Hicks, Muse Tate and Furst Inc. The deal was <i>&quot;subject
to finalisation of appropriate legal documentation&quot;</i>. In an announcement
3 months later on 26-May-00, PCCW said <i>&quot;the definitive agreements are
currently being negotiated&quot;</i>. Normally, documentation of this nature
takes only days to settle. We wonder what the hold-up is. </p>

<p>If the deal proceeds, PCCW will need to call a meeting to amend its Articles to
allow for the issue of the new class of shares. If it doesn't proceed, PCCW will
have to find the US$500m somewhere else. </p>

<h3>The incredible shrinking portfolio</h3>

<p>PCCW has 8.12m shares in CMGI, or a 2.75% stake, which is now
only worth about US$304m, down over US$1bn from its high. They got the shares in a swap
agreed in Sep-99 in which CMGI
received 448.3m shares in PCCW, now a 2.1% stake and worth US$885m. </p>

<p>In Oct-99 PCCW agreed to pay US$128.8m in cash at US$25.75 per share for
a stake in <a href="http://www.softnet.com/" target="_blank">Softnet Systems
Inc.</a> The shares have since fallen 78% to US$5.56 and the stake is worth only
US$27.8m. </p>

<p>PCCW's internet portfolio is now miniscule relative to its
investment in HKT. For example, the CMGI stake is only worth about HK$0.11 per
PCCW share. Even the Cyberport (we estimate it will bring in US$1.2bn in present
dollars) is only HK$0.44 per share. </p>

<h3>Lifting the Veil</h3>

<p>Analysts will gradually recognise that what they are now looking
at is a highly-geared telecom utility company struggling to maintain its
operating profits in a
deregulated market, while at the same time adapting to the internet age and the
prospect of heavy capital investment to secure participation in the next round
of technology. </p>

<p>All the hype and hope in &quot;Network of the World&quot;
doesn't disguise the fact that it will cost good money to build the physical
network, for which one can expect utility rates of return (we are only talking
about moving bits of data from A to B here). Meanwhile on the content side, PCCW
will be competing with far more experienced content providers both globally
(AOL-Time Warner, News Corp, Sony, Viacom etc) and specialists in each Asian
country. </p>

<p>Pacific Century Matrix, the private arm of the group which is
70% owned by Richard Li and 30% by DaimlerChrysler Aerospace, is <a href="http://www.pcg-group.com/pcg/press/news-sept-14-blo.html" target="_blank">expected</a>
to spend US$1.5bn on its own satellites, and at some point we can expect that to
be injected into PCCW when it can afford the funding. </p>

<p>The HK Government is still considering whether to auction
licenses for 3rd Generation (3G) mobile, but the recent European precedents all
point in this direction rather than a beauty parade. That could cost another
US$1.5bn. </p>

<h3>Valuation</h3>

<p>We make no change to our post-merger valuation of HK$6 per PCCW
share. See a <a href="pccwhktstrip.asp" target="_blank">previous article</a> for
how we arrived at that. </p>

<h3>Stop Press: Name that site</h3>

<p>PCCW has just <a href="http://www.vcat.com/press/news-story.html?nid=48" target="_blank">purchased</a>
the domains <a href="http://www.cyberworks.com/" target="_blank">cyberworks.com</a>
and cyberworks.net from Nasdaq-listed internet incubator <a href="http://www.vcat.com/" target="_blank">Venture
Catalyst Inc.</a> for a combined US$1m. Venture Catalyst president Sanjay
Sabnani explained to <i>Webb-site.com</i> that the company acquired Cyberworks
Inc in Nov-98 and the latter was established as early as 1996. And you thought
the name was original! </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=375">CABLE & WIRELESS LIMITED</a></li>
				
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