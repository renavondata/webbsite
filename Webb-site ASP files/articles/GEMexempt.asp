
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

<script type="text/javascript">document.title="New GEM Exemptions";</script>

	<div class="summary">Over a year after consultation ended, new rules have been announced for HK's second board. The track record requirement is reinstated to two years, but with a glaring exemption for candidates that can meet certain "substantial size" and "significant public following" criteria. So small scams are unacceptable, but big ones are OK, and if you can con 300 people, you don't need a track record. As we explain, this is not going to salvage GEM's tattered reputation, and the process again underlines the need to move listing regulation to the SFC.</div>

<h2 class="center">New GEM Exemptions<br>
<span class="headlinedate">30 July 2001</span></h2>
<p>Just when everyone was looking forward to a quite weekend, out
comes a joint <a href="http://www.hkgem.com/aboutgem/e_release010727.pdf" target="_blank">press
release</a>  from Hong Kong Exchanges &amp; Clearing Ltd (<b>HKEx</b>) and the
Securities &amp; Futures Commission (<b>SFC</b>) with proposed new rules for the
Growth Enterprises Market (<b>GEM</b>), which have at last been <i> &quot;agreed in
principle&quot;</i> between them. In a separate addendum, they also published the <a href="http://www.hkgem.com/aboutgem/e_release010727addendum.pdf" target="_blank">results
of the market consultation</a> on the GEM rules together with an <a href="http://www.hkgem.com/aboutgem/e_table0727.pdf" target="_blank">appendix</a>
summarising the responses of 165 respondents, including 60 readers who submitted
comments via <i>Webb-site.com</i>.</p>

<h3>Background</h3>
<p>You'll need a long memory to recall what this is all about. Soon
after GEM opened its doors in Nov-99, the Listing Committee began waiving
listing rules in a wholesale fashion, prompting a strong <a href="waiversgalore.asp" target="_blank">rebuke</a>
from <i>Webb-site.com</i> and others. This culminated in the chaotic and
massively oversubscribed offering of Tom.com in Feb-00, followed two weeks later
by the IPO of Sunevision, both spin-offs from leading cash-rich conglomerates
and not the kind of capital-starved Small and Medium Enterprises (SMEs) that the
GEM was intended for.</p>
<p>The combination of the rules being waived (or waved) under the
noses of the SFC, and the spectacle of 10% of the population queuing up and
fighting for IPO forms, led to an enquiry by the Legislative Council's Financial
Affairs Panel on 13-Mar-00 (<a href="http://www.legco.gov.hk/yr99-00/english/panels/fa/agenda/faag1303.htm" target="_blank">agenda</a>,
<a href="http://www.legco.gov.hk/yr99-00/english/panels/fa/papers/a1150e03.pdf" target="_blank">briefing
by the SFC</a> (pages 5-9 of the PDF), and&nbsp; <a href="http://www.legco.gov.hk/yr99-00/english/panels/fa/minutes/fa130300.pdf" target="_blank">minutes</a>
(paras 21-35).</p>
<p>Perhaps prompted by the pending Legislative enquiry, the SFC
rolled up its sleeves and sat down with the HKEx, and on 11-Mar-00 they <a href="http://www.hkgem.com/aboutgem/e_release000311.pdf" target="_blank">announced
a freeze</a> on the extent of the waivers but not before fixing a set of
generous waivers (including a 1-year track record requirement) which would apply to all new listing candidates until the
market had been consulted on what to do next.</p>
<p>The <a href="http://www.hkgem.com/research/e_consult-200005.pdf" target="_blank">consultation
paper</a> was <a href="http://www.hkgem.com/aboutgem/e_release000523consult.pdf" target="_blank">published</a>
on 23-May-00, and the submission period ended over a year ago, on 30-Jun-00.</p>
<h3>Track Record Philosophy</h3>
<p>GEM is only partially returning to the original track-record
requirement of 2 years &quot;active business pursuits&quot;. <i>Webb-site.com</i>
editor David Webb was on the committee which designed that framework 4 years
ago, and the reason for it was quite simple; public investors are not as
sophisticated as venture capitalists, nor do they have access to the due
diligence investigation process that VC investors can go through.</p>
<p>So we were trying to create a market for companies which had
survived the filtration process of the private venture capital market, before
taking money from the public. Through this process, the overall quality of the
market would be stronger, and &quot;get rich quick&quot; scams with little or no
track record would not be able to go straight to market.</p>
<p>The Stock Exchange should now heed its own warning, from the <a href="http://www.hkgem.com/research/e_consultation.pdf" target="_blank">May-1998
consultation paper</a> on the new market (which later became GEM):</p>
<blockquote>
  <p>&quot;The principal purpose underlying the requirement to demonstrate Active Business
  Pursuits is first to give potential investors information on which to reach a judgement as to whether the applicant's business is likely to succeed, and
  secondly to make it more difficult for over-aggressive issuers and promoters to obtain a listing in the Second Market.&quot;</p>
</blockquote>
<p>You cannot have a disclosure-based regime without adequate
disclosure. Just as you can't draw a straight line without two points of
reference, it takes at least two years to discern the barest of trends in
company financial statements and put the &quot;track&quot; in the track record.
It is mathematically impossible to
deduce a trend from a single point of reference.</p>
<p> If you are looking to create a &quot;pump &amp; dump&quot; stock
scam, then you would often be too impatient to wait two years before you can
list it on GEM, so you would take your scam to overseas markets, or reverse it
into a main-board listed shell.</p>
<h3>The Big Exemption!</h3>
<p>In setting the new track record rule, GEM has included an
exemption from the 2-year record, reducing it to one year for any company <i><b>&quot;of
substantial size and with significant public following&quot;</b></i> which:</p>
<ol>
  <li>has pursued its focused line of business for at least 12 months;</li>
  <li>has total revenue of no less than HK$500m
    in the last 12 month period as shown in the accountants' report in the initial listing
    document, total assets of at least HK$500m as shown in the balance sheet in the accountants' 
    report, or market capitalization of at least HK$500m determined at the time of listing;</li>
  <li>at the time of listing, has a minimum market capitalization of HK$150m
    in public hands which is held by at least 300 public shareholders, with the largest 5 and 
    largest 25 of such shareholders holding in aggregate no more than 35% and 50% respectively 
    of the securities in public hands. In determining the 300 public shareholders, only a 
    maximum of 100 shareholders who have obtained their securities through a distribution in specie 
    may be counted as public shareholders; and</li>
  <li>the initial public offer price of the securities must be at least HK$1.&nbsp;</li>
</ol>
<p>We'll ignore criterion (4) on the basis that it is just plain
stupid. Nominal stock prices are more relevant to the price of snow in
Antarctica than
whether a company is suitable for listing. Any company can achieve a $1 price
simply by consolidating its shares. The suggestion that by using nominal prices
above $1, an issuer is psychologically less likely to attract unsophisticated
investors, is wrong - look how many people bought PCCW at over $20.</p>
<h3>The bigger they are, the more they hurt</h3>
<p>Now looking at criterion (2), what this implies is that an investment decision based on a 1-year track record is more
reliable if companies meet the <i> &quot;substantial size&quot;</i> criterion,
and that this size makes them <i>&quot;quality companies with potential&quot;</i>
and saleable to the public. That is just
plain nonsense. Size has no bearing on quality and the only potential it affects
are potential losses.</p>
<p>Due to the issue size and wider ownership, more
investors have lost more money on big GEM companies than small ones. Take for
example, <a href="http://www.sunevision.com/" target="_blank">Sunevision
Holdings Ltd</a>, the spin-off of Sun Hung Kai Properties (<b>SHKP</b>)
sponsored by Jardine Fleming. Original investors (most stock went to placees
chosen by the issue managers) bought 300m shares of this company at $10.38, and
today it trades at $1.50. That's a loss of $8.88 a share (nice lucky number!) or
HK$2,664m. Measured from the closing high on the second day of trading
(20-Mar-00) of $16.10 (when the public was piling in to the stock), they've lost
<b>HK$4,380m (US$562m)</b>. So there's no safety in size.</p>
<p>The public probably thought they were buying into dot-coms and
data centres, but in fact 100% of the (shrinking) revenue in the first 2 years
of the 2.5-year track record was from a company called Sun Technology Services
Ltd which installed satellite dishes and security systems, of which 94% came
from related parties, including SHKP. In the final 6 months of the period, data
centres (which were mostly converted office properties previously owned by SHKP)
contributed 1.5% of the revenue, and&nbsp; internet business 0.2%. So Sunevision's IPO track record was largely down to an imported
subsidiary, and most of the &quot;growth enterprise&quot; being marketed was
less than a year old.</p>
<p>An even more blatant case was that of <a href="http://www.tom.com/" target="_blank">Tom.com</a>,
which launched its IPO sponsored by BNP Prime Peregrine with a half-baked portal
just a few weeks old, which everyone thought was the core business. In fact, the
2-year track record came from a tiny software outfit which did customs
documentation packages for Shenzhen, as we explained in last year's article, <a href="tomfoolery.asp" target="_blank">A
brief History of Tom</a>. Only about 1 in 50 applications received allotments,
so most of the retail public shareholders paid in the aftermarket up to $15.35
for a stock now trading at $2.025. The chosen ones who were on the discretionary
placing list and received the bulk of the issue at $1.78 were very happy!</p>
<p>Another strange thing about the market cap test is that while
you are preparing for listing, you cannot be sure what the market cap will be. That
is only determined by the eventual offer price and the number of shares you
issue. Companies on the border-line may stretch to reach the $500m figure.</p>
<h4>Total Assets</h4>
<p>If you can't meet the market-cap test, then you can try for &quot;<b>total
assets</b>&quot; of $500m - that means gross assets and not net assets after
deducting liabilities. This test is inconsistent with the market cap test, since
market cap reflects the perceived value of equity after deducting the companies
liabilities such as bank debts and other creditors. You might easily have gross
assets of $500m but net assets of only $250m.</p>
<p>Total assets could also be inflated with intangible assets such as goodwill
or brand valuations. These are easy to come up with. Scanner maker Syscan Technology Holdings
Ltd, for example, included in its prospectus a <a href="http://www.hkgem.com/newlistings/prospectuses/e_8083pro-20000410app003.pdf" target="_blank">valuation</a> by American Appraisal
Hongkong Limited of the company's trademark and patents, totalling intangible
value of <b>$1,527.3m</b>. Today, the entire market value of the company is <b>$265m</b>.</p>
<p>The proposal is silent on whether &quot;total assets&quot; also
includes IPO proceeds, property revaluations and so on. But of course, the other
test, of market
cap, does include IPO proceeds.</p>
<h3>&quot;Significant Public Following&quot;</h3>
<p>In effect, criterion (3) says &quot;if you can con 200-300
people into buying your shares, then you don't need a 2-year track record&quot;.
Surely this is not the point. It is a truism that anyone who chooses to buy an
IPO has confidence in it - or else they wouldn't buy. But on what information
have they based that decision?</p>
<p>To take an analogy that should be familiar to Dr Lo, head of GEM
- should a new medicine be allowed to bypass clinical trials if 300 people think they want it?
Taking the analogy further, if we had no clinical trials process, but simply
allowed all new drugs to go straight to market (provided
300 people want them), then there would be so many failures and side-effects
that the public would completely lose confidence in medicine - they would not be
able to tell good drugs from bad. So many people would not buy any at all. That is the
problem with GEM - due to the number of dismal failures, the good companies will
find it
hard to get attention.</p>
<p>The 2-year track record is the clinical trial of the GEM
candidate, before they are let out into the public market, and this requirement
should not be dependent on the marketing skills of its management or sponsor.</p>
<h4>Easily faked</h4>
<p>In any case, the 300-shareholder criterion is easily achieved,
because brokerages have a tried and tested system, used for many years, by which
they allocate shares to their employee accounts or to discretionary accounts in
order to meet the required number of shareholders for the main board (100
shareholders, or 3 for every $1m, whichever is higher). Whenever you see a
main-board issue 1.0 times subscribed with 110 applicants, 90 of whom applied
for the minimum 2,000 shares each, you know what is going on. The same system
will work just as well on the GEM. So we can assume this criterion is easily
satisfied.</p>
<h3>The $500m threshold</h3>
<p>Even if you believe (as we do not) that a size criterion is
appropriate to reduction of the track record, then look at the level the GEM has
chosen. HK$500m (US$64m) is not that high. GEM opened for business on 25-Nov-99.
There were 7 GEM listings in 1999, of which 4 had a market cap over $500m. In
2000, there were <a href="http://www.hkgem.com/statistics/e_newlistings00.pdf" target="_blank">47
new listings</a>, including 1 by introduction (and hence no offer price on which
to judge market cap for the prospectus). Of the 46 with ascertainable market
caps, 29 (63%) would have met the $500m criterion. Others may have qualified
based on gross assets (including intangibles) but we do not have the data to
hand.</p>
<p>Of those 29 companies, 16 would have also met the $150m
free-float criterion based on money raised, although in practice (faced with
this criterion) several more
would have enlarged their issues or counted pre-existing shares held by the
public to reach the criterion.</p>
<p>And in a bull market, when speculative excesses (and risks) are
highest, you will of course get higher market valuations, making both criteria
easier to reach. Of the first 14 GEM listings in 2000 (when tech stocks were
near their peak), 11 (79%) would have met both criteria of $500m market cap and
$150m free float. Only one of those is now above its IPO price (just).</p>
<p>So we can expect this track-record exemption to be regularly
obtained, particularly when companies are allowed to include intangible assets
in the gross assets test as an alternative to the market cap test.</p>
<h3>SFC's Stealth Committee</h3>
<p>What we didn't know until now, was that the SFC in April 2000
quietly appointed an &quot;International Committee on Listing of New
Enterprises (<b>ICLNE</b>)&quot;, right after the freeze on waivers was announced with the GEM.
As far as we know, the first time this committee was mentioned in a <a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=01pr82" target="_blank">press
release</a> was last Friday, 27-Jul-01, although there's a glancing reference to
it in the recent SFC annual report for the year ended Mar-01.</p>
<p>The
<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/general/general/press_release/01/intl-committee.doc">members</a>
of the committee finished their report 6 months ago, but the
<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/speeches/public/iclne.pdf">executive
summary</a> was not published until last Friday. It makes interesting reading,
and we only wish the whole report had been published in the interests of
transparency. In conducting the study, one thing that the Committee (or more
likely, staffers) did was to interview &quot;key decision-makers&quot; in 30
organisations characterised as either &quot;issuer-based&quot; or
&quot;investor-based&quot;. The report reveals that they were in the ratio of
2:1, so only 10 &quot;investor-based&quot; people were consulted. As you have
gathered, we were not one of them.</p>
<p>The report is diplomatic in its language, and despite the
obvious purposes, states that <i>&quot;above all, the study was not triggered by
any perceived weakness in the GEM board&quot;</i> but later says that it is with
a view to <i>&quot;consolidating and enhancing the strength of the market&quot;</i>.
Ah yes, &quot;consolidating the strength&quot; - isn't that government-speak for
&quot;targeting weaknesses&quot;? In effect, the report was commissioned to
bolster the SFC's arguments with the SEHK over the GEM rules.</p>
<h3>Quality Attracts</h3>
<p>K.S. Lo, head of GEM, has continually protested that <i> &quot;the
waivers were an earlier move to retain good companies&quot;</i> and that <i> &quot;we
need to be competitive, otherwise Nasdaq would take all the good
companies.&quot;</i></p>
<p>We regard that argument as false - and so did the ICLNE. In
their words:</p>
<blockquote>
<p>&quot;recent evidence of companies pursuing overseas IPOs indicates that most local issuers are still strongly predisposed to a 'home' listing
where investor familiarity with the issuer's assets, brand name, business operations
and management is greatest.&quot;</p>
</blockquote>
<p>In short, you won't get 500,000 people fighting in the streets
of Manhattan over IPO application forms for a half-baked portal controlled by a
man most of them have never heard of. ICLNE continued:</p>
<blockquote>
<p>&quot;GEM staying with the 'status quo' [2-year track record
requirement] is unlikely, therefore, to precipitate a flow of local companies listing overseas.
Instead, companies with greater quality might gain reassurance from a sufficiently comprehensive regulatory platform.&quot;</p>
</blockquote>
<p>Yes, a quality market attracts quality issuers and more
investment, and a rodeo market attracts cowboys. Hong Kong needs a quality
market for its growing SMEs. Instead, the GEM market has dried up, and in the
last six months to 30-Jun-01, it has raised only HK$1.96bn (US$250m), including
shares sold by management shareholders. That represents just 2.8% of the HK$70bn
(US$9.0bn) market cap at the end of June. The report states:</p>
<blockquote>
  <p>&quot;In the absence of a sudden upturn in high-tech sentiment or a drive to quality -as
  recommended in several interviews - the outlook for GEM is currently, perhaps, a little uncertain.
  <b> A real, or merely perceived, trade-off of stock quality for listing numbers could have a debilitating effect on the market over the
  longer-term...&quot;</b></p>
</blockquote>
<h3>Different environments</h3>
<p>GEM Chairman K.S. Lo has regularly compared GEM with Nasdaq, pointing to
more relaxed rules of Nasdaq and conveniently ignoring that the two markets are
subject to very different legal and regulatory backgrounds. The ICLNE hits this
one on the head:</p>
<blockquote>
  <p>&quot;listing rule comparisons between GEM and Nasdaq have limited value since, in practice, US underwriters and issuers respond to the larger
  US legal framework. The due diligence expected of, and undertaken by underwriters and other professionals, may mean that certain 'requirements', not
  specified in listing rules, filter into the listing process in the form of unwritten
  protocols. Ultimately, these protocols may dictate the type of issuer coming to
  market.</p>
</blockquote>
<p>They also commented</p>
<blockquote>
  <p>&quot;Where institutional investors are key shareowners (as they are in the US, Germany and
  UK), they necessarily demand sound disclosure practices. The obligations imposed upon
  underwriters, through the US legal system, and the presence of class action suits (with
  attendant contingency fees) which make it easier for minority shareholders to seek
  redress, have a role to play in protecting minority investors. The environment in Hong
  Kong, which lacks the statutory framework of the US, and is not buttressed by institutional share-ownership, in the way that for instance the UK or Germany is,
  necessitates a different approach.&quot;</p>
</blockquote>
<h4>ICLNE arguments support HAMS</h4>
<p>That neatly encapsulates our arguments for stronger regulation,
and also brings us onto the need for HAMS to represent and act for minority
shareholders in a majority-controlled market. <a href="hams.asp" target="_blank">Please see our HAMS proposal</a>.
Without shareholder activism, corporate governance reform will be slow, but
without corporate governance reforms, there will be no spontaneous shareholder
activism. As the ICLNE says:</p>
<blockquote>
  <p>&quot;This is a 'chicken-and egg' problem...as the corporate governance practices that institutions help mould must be mature to some extent before
  such institutions are prepared to enter significantly as share owners.&quot;</p>
</blockquote>
<p>Even where institutions are present, they are inactive. HAMS is the solution to that
conundrum.</p>
<h3>Market Making</h3>
<p>The ICLNE recommends that &quot;changes to market microstructure
should also be considered&quot; and suggests a market-maker based system.</p>
<p>We disagree with that. It is already perfectly possible for any
broker to make a bid or offer on the exchange in any stock. So they can already
&quot;make a market&quot; in any GEM stock if they choose to. That is what
order-driven systems are all about. However, if they were given a monopoly on
the trading system (so that clients could not post their own bids and offers,
out-bidding or under-offering a broker. but instead had to take the price
offered by a dealer) then all we would see is a removal of direct client
participation in the market, and wider spreads. Nasdaq can teach us a lesson
there - after its market making scandal a few years ago. No wonder some brokers interviewed
by ICLNE were&nbsp;keen on the idea. </p>

<p>So if you want to make a competitive bid and offer, sure, go
ahead, there's nothing to stop you, but don't cut the investors out of the
action. </p>

<h3>Conclusions</h3>

<p>The GEM rule changes are disappointing. The fact that it took
over a year to reach a conclusion, and the compromises made, reflect
again the ongoing conflict between the HKEx and the SFC over market regulation.
The proposals, when implemented in the coming months, will not be enough to
salvage the tattered reputation of GEM.&nbsp; </p>

<p>The HKEx is a for-profit regulator, and its powerful listing
committees are &quot;issuer-based&quot; with very few &quot;investor-based&quot;
representatives. The motivation is thus more towards short-term profits than long term
quality of markets, and they are behaving rationally in accordance with that
motivation. </p>

<p>We repeat our call for the Listing regulation to be
moved to the government securities regulator, the SFC, as London did to its FSA.
In Australia, from which Hong Kong took its structural precedent, a parliamentary enquiry
is now underway into the framework for the market supervision of Australia's stock
exchanges. Hong Kong authorities should wake up to this problem. </p>

<p>Oh and by the way, GEM closed at another record low today. </p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=14388">GEM Listing Committee</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=140">Financial regulatory structure</a></li>
				
				<li><a href="/dbpub/subject.asp?c=147">Growth Enterprise Market</a></li>
				
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