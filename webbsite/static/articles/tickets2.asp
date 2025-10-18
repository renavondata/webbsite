
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<title>Webb-site Reports</title>
<style type="text/css">
.auto-style1 {
	font-size: 1em;
}
</style>
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

<script type="text/javascript">document.title="Ticket markets and Rugby Sevens finances";</script>

	<div class="summary">Put down your beer jug and take a look at two inter-related problems: the almost non-existent secondary market for event tickets in HK due to an anti-free-market law, and the finances of the Rugby Sevens, which is hoarding cash, underpaying for the HK Stadium, and expecting taxpayers to build another one for at least HK$33.5bn.</div>

<h2 class="center">Ticket markets and Rugby Sevens finances<br>
<span class="headlinedate">10 April 2016</span></h2>

<p>Hong Kong's annual beer-fest, the Rugby Sevens, is upon us again. So 
now is a good time to cover two subjects: the need to repeal an 
anti-free-market piece of legislation, and the finances of the Rugby Sevens and 
sports stadium development in Hong Kong. </p>
<h3>The POPE restriction</h3>
<p>Section 6 of the
<a href="http://www.hklii.hk/eng/hk/legis/ord/172/" target="_blank">Places of Public Entertainment Ordinance</a> (<strong>POPEO</strong>) outlaws the resale of tickets at a premium to face value, with certain irrational 
exemptions (including events at HK Stadium). We first
<a href="tickets.asp">wrote about POPEO</a> over 10 years ago. 
It states:</p>
<blockquote>"No person shall sell... any ticket or voucher 
authorizing... admission to any place of public entertainment... at a price 
exceeding the amount fixed by such proprietor, manager or organizer to be 
charged therefor..."</blockquote>
<p>POPEO deters ticket exchanges and brokers from operating in Hong Kong, which makes it more difficult for people with a genuine need to 
resell their tickets to do so, which makes them less willing to purchase tickets 
for events in the first place. It is not illegal to resell tickets at or below 
face value, but if you only allow that portion of the market to operate, then it 
becomes unviable - it would be rather like operating a stock market in which 
shares can only be sold at or below their IPO price.</p>
<p>Section 6 also makes it impossible for people who are willing to pay a 
premium to do so without causing the seller to break the law. If you are a 
tourist who has just arrived and want to attend a sold-out concert at AsiaWorld-Expo, then you have to go into the black market, with all the risks that 
entails.</p>
<p>Organisers are of course free to attach conditions to the sale of event 
tickets, making them non-transferable and including requirements for photo-IDs 
(as airlines do), but again, that reduces the flexibility and the value to the 
ticket holder, and tends to invade her privacy. It also means that the 
customer must decide whom she is inviting to go with her before she books 
tickets, and no substitutions can be made. For all these reasons, event organisers rarely impose such conditions.</p>
<p>On 12-Dec-2014, the 
Hong Kong Rugby Football Union <a href="http://hksevens.com/news/hkrfu-teams-up-with-viagogo-to-protect-fans" target="_blank">
announced</a> that it has entered into a "partnership" with Viagogo to operate 
an "authorised platform" for the resale of tickets. Viagogo is the 
"Official Ticket Marketplace" for HKRFU events, including the Sevens. We checked
<a href="http://www.viagogo.com/hk/Sports-Tickets/Rugby-Union/Hong-Kong-Sevens-Tickets" target="_blank">
the site</a> a few days before the 2016 event, when a 3-day ticket started at 
HK$3300 plus fees, compared with $1800 face value.</p>
<p>So how is this legal, you might wonder? Well, believe it or not...</p>
<h3>Events at LCSD venues are exempted</h3>
<p>Not only is the POPEO prohibition against the free market principles on which 
HK was built, it is also unfair, 
because it does not apply to events at
<a href="http://www.lcsd.gov.hk/en/facilities/facilitieslist/pvenue.html" target="_blank">
venues managed by</a> the Government's Leisure and Cultural Services Department 
or Home Affairs Department. That's because such places are exempt from the 
licensing requirements under the
<a href="http://www.hklii.hk/eng/hk/legis/reg/172D/s2.html" target="_blank">
Places of Public Entertainment (Exemption) Order</a>, and Section 6 of POPEO only applies to 
<em>licensed</em> places.</p>
<p>So as the Hong Kong Stadium, home of the Rugby Sevens, is
<a href="http://www.lcsd.gov.hk/en/stadium/hks/" target="_blank">managed by the 
LCSD</a> (since 2000), Sevens ticket resales at any price are legal, but if you 
hold your event at a non-LCSD venue 
then the prohibition applies. While many major venues are managed by the LCSD, 
other venues have 
private-sector managers, including:</p>
<ul>
	<li><a href="../dbpub/orgdata.asp?p=33696" target="_blank">HK Convention and 
Exhibition Centre</a> (managed by a 100% subsidiary of
	<a href="../dbpub/orgdata.asp?p=4937">NWS Holdings Ltd</a>)</li>
	<li><a href="../dbpub/orgdata.asp?p=1005808">AsiaWorld-Expo</a></li>
	<li>Several venues of the <a href="../dbpub/orgdata.asp?p=25412">HK Academy 
	for Performing Arts</a></li>
	<li><a href="../dbpub/orgdata.asp?p=27317">HK Arts Centre</a></li>
	<li>The <a href="../dbpub/orgdata.asp?p=141004">Asia Society</a></li>
	<li><a href="http://www.youthsquare.hk/" target="_blank">Youth Square</a> 
	(managed by <a href="../dbpub/orgdata.asp?p=57101">New World Facilities 
	Management Co Ltd</a>)</li>
	<li>The <a href="../dbpub/orgdata.asp?p=1016014">HK Maritime Museum</a></li>
	<li>Almost all cinemas</li>
</ul>
<p>So reselling 
tickets for concerts, plays, movie premieres or other events at those venues, at 
a premium, is illegal.</p>
<p>Surprisingly, an inspection of Government press releases indicates some 
confusion in this area. A police
<a href="http://www.info.gov.hk/gia/general/200308/01/P200308010207.htm" target="_blank">
announcement</a> on 1-Aug-2003 titled "Police spare no efforts to combat illicit 
ticket scalping" stated that re-selling tickets for the Real Madrid match held 
at the HK Stadium was illegal. They were obviously unaware of the exemption.</p>
<p><strong>Section 6 of the POPE Ordinance should be repealed without further delay.</strong></p>
<h3>Ticket pricing</h3>
<p>Some event organisers (deliberately 
or not) under-price tickets, put them on sale on a first-come-first-served 
electronic system, and then they wonder why there is so much demand 
that the booking system crashes. Organisers should not be surprised when this 
happens. If they under-price tickets then they should expect others to buy them 
and raise the 
ticket price to the fair market value.</p>
<p>The HK Sevens are organised by <a href="../dbpub/articles.asp?p=133806">Hong 
Kong Rugby Union</a> (<strong>HKRU</strong>), formerly known as "Hong Kong Rugby 
Football Union", a company limited by guarantee. They have learnt from 
experience, and now avoid system crashes by organising a ballot (lottery draw) for the 3,000 
public-sale tickets on each day of the Sevens. However, if the 
tickets are under-priced, then this still doesn't deter speculators, because it is entirely rational to enter the draw 
(with as many ID cards as you can rent) just for the 
chance of a quick gain on the "official" secondary market. Incidentally, the HK 
Stadium seats 
40,000, so the HKRFU only sold about 7.5% of the tickets directly to the public, down from 
<a href="http://www.scmp.com/print/article/736534/public-snaps-5000-sevens-tickets" target="_blank">5,000 
3-day tickets</a> (12.5%) in 2011 and
<a href="http://www.scmp.com/print/article/404477/organisers-brace-ticket-rush" target="_blank">
26,000 3-day tickets</a> (then $750 each) in 2003.</p>
<p>To allow as many people as possible to win the ballot, tickets for the 3 days are now balloted separately. Each person can apply for up 
to 2 tickets for each day, and of course most people apply for 3 days x 2 
tickets. If you apply for 2 tickets then you either get zero or 2, with each 
entry having an equal chance in the ballot.</p>
<p><em>Webb-site Reports</em> has obtained summary figures on the 2016 ballot from an HKRU 
spokesman. We're still waiting for a daily breakdown, but here's what we know: 
this year, there were 23,446 applicants for tickets, and according to the 
spokesman, about 95% of applicants applied for all 3 days. We'll assume that 
half the remainder applied for 2 days, and the rest for 1 day, making about 
22,860 entries per day, assuming they were evenly spread. We'll also assume that 
95% of daily applications were for 2 tickets and the remainder for 1 ticket. As 
1-ticket and 2-ticket applications had equal chances in the ballot, about 1,538 
successful entries would be allotted the 3,000 tickets per day, or about 6.73% 
of the entries.</p>
<p>That's about 1 in 14.9 applicants for each day. We calculate that an applicant for all 3 days 
had about a 18.86% chance, or 1 in 5.30, of getting at least 1 day, a 1 in 77.0 
chance of getting at least 2 days, but only a 1 in 3,281 chance of getting all 3 
days. So almost any successful applicant who wanted to follow the tournament 
from start to finish would need to buy the other days in the secondary market, 
at a premium. Many applicants of course had no such intention.</p>
<img class="center" alt="Ticket odds" src="../images/ticketOdds.gif">
<p>But there is a way to avoid the ballot. That is to gain entry to one of the 
many clubs which receive allocations of 3-day tickets. You don't have to play 
rugby, or even regularly attend matches, to do this. The rugby sections of 
recreational clubs (many of them sitting on 15-year recreational land leases) 
receive a quota, and in return for an annual membership fee for the rugby 
section (which the club retains), the members get first bite at a pair of 3-day 
tickets. One recreational club we know charges HK$500 per year for this 
additional membership, equivalent to a modest premium of $250 per ticket. The 
fact that 3-day tickets were available on the Viagogo platform suggests that at 
least some of these tickets make their way back to the secondary market.</p>
<h3>Tenders</h3>
<p>The solution to excess demand for an event is obviously to raise prices. 
However, if ticket prices are set at too high a level, then organisers risk 
having unsold seats. If they want certainty that every seat will be sold at the 
best available price in one go, then they can sell tickets by tender, where 
applicants 
submit how much they are willing to pay for a particular class of seat, and the 
tender price is struck at the point at which all seats in that class are filled. 
This would eliminate most of the speculative demand and ensure that the full 
value goes to the organisers.</p>
<p>Ironically, the HK Sevens are jointly sponsored by Cathay Pacific which, like 
any competent airline, is an expert at pricing capacity on its aircraft to 
maximise revenue using sophisticated software. Given that revenues from the 
Sevens are supposed to support Rugby in HK, every extra dollar should help.</p>
<h3>HKRU - a cash shell</h3>
<p><em>Webb-site Reports</em> has pulled the
<a href="../codocs/HKRFU1504fsOCR.pdf" target="_blank">accounts of HKRU for the year to 
30-Apr-2015</a> (it changed its name in Jul-2015). HKRU is stated to be engaged 
in "the support, promotion and development of rugby in Hong Kong". According to 
the spokesman, the company currently has 21 registered members, which are local 
Rugby Clubs.</p>
<p>At the financial year-end, HKRU had consolidated net assets of HK$314.0m, of 
which $267.1m, or 85%, comprised investments and cash. If this was a listed 
company, it would meet our definition of a <a href="shells.asp">cash 
shell</a> - a company with more net cash and securities than other assets. 
Looking back to the <a href="../codocs/HKRFU1104ar.pdf" target="_blank">accounts 
at 30-Apr-2010</a>, HKRU had net assets of HK$180.6m, of which $151.5m, or 84%, 
was in cash and investments. So over the last 5 years, HKRU has racked up 
operating and investment surpluses of $133.4m, an average of <strong>$26.7m</strong> 
per year.</p>
<p>The growing reserves are partly due to the rising ticket prices necessary 
to stem demand. A 3-day Sevens Ticket in 2010 was $1250. Subscriptions from 
members were $44.3m in 2010 and $114m in 2015 (these figures include suite and 
box hire), while ticket sales were $44.0m in 2010 and $60.7m in 2015.</p>
<p>On the other side of the Sevens costs, HKRU paid just HK$29.6m in 2015 
for "stadium costs" for the Sevens, up from HK$18.2m in 2010 when it was broken 
down into three stadium-related items, namely "stadium hire" of $8.3m, HK 
Stadium Executive Suite lease payments of $6.6m and "stadium preparation" of 
$3.4m.</p>
<p>Looking at the core objectives of HKRU, in the latest year, HKRU spent 
$23.1m on "Club &amp; Community" and $18.7m on "representative squad costs" (details 
in Note 15). It also had capital expenditure of $12.6m on pitches (Note 5).</p>
<h3>Kai Tak Stadium</h3>
<p>It is plain that HKRU can afford to do much more, if the rugby community 
actually needs it. While a modest amount of reserves to handle economic 
fluctuations in demand for the Sevens would be sensible, there is no obvious 
reason to be hoarding ever larger amounts of cash. It would take 4 years in 
which not a single ticket was sold to burn through the current reserves.</p>
<p>Yet at the same time, rather than raise ticket prices higher to meet 
demand for 40,000 seats, they have been
<a href="http://www.scmp.com/print/sport/rugby/article/1702468/hkrfu-says-hong-kong-sevens-needs-new-stadium-soon-after-public-ballot" target="_blank">
calling on the Government</a> to build a 50,000 seat stadium, part of a proposed
<a href="http://www.hab.gov.hk/en/policy_responsibilities/Recreation_Sport_and_Entertainment_Licensing/mpsc.htm" target="_blank">
Multi-Purpose Sports Complex</a> at Kai Tak. The Government commissioned PwC to 
look at the financial options for this project. In Sep-2013, PwC
<a href="http://www.hab.gov.hk/file_manager/en/documents/policy_responsibilities/Recreation_Sport_and_Entertainment_Licensing/mpsc_20140715_01.pdf" target="_blank">
came up with</a> a base cost of <strong>HK$33.5bn</strong> - the net present 
cost at Apr-2016 prices (assuming the project began then) for construction plus 
a 30-year operating period, after allowing for all revenues. And that's assuming 
nothing goes wrong. PwC also included a risk-adjusted figure of HK$45.9bn, 
allowing for various overruns and design changes.</p>
<h3>Conclusions</h3>
<p>Clearly, HKRU is struggling with two problems:</p>
<ol>
	<li>It either can't or won't find ways to spend the surpluses from 
	organising the Rugby Sevens on the development of rugby, and as a result it 
	is hoarding more and more reserves; and</li>
	<li>It is charging less for tickets than the market will bear, but if it 
	charged the full market value (rather than leave the difference to 
	speculators) then its surplus would be even larger.</li>
</ol>
<p>Meanwhile, the Government is struggling to justify sinking HK$33.5bn of 
public money into a new sports complex at Kai Tak. The Government might find it 
easier to justify this to legislators in the Finance Committee if it received a 
fairer share of the revenue from the Sevens and other events. It wouldn't come 
anywhere close to bridging the gap between costs and revenues, but it would be a 
start. Here's what should be done:</p>
<ul>
	<li class="auto-style1">HKRU should sell tickets by tender, not by lottery 
	or cozy club deals, which would likely increase ticket revenue by about 
	HK$40m (+$1,000 per 3-day ticket)</li>
	<li>The $40m additional ticket revenue, plus the $27m per year average 
	surplus makes a total of $67m that should be paid to Government as 
	additional stadium rental.</li>
	<li>What about the 
	<a href="http://hksevens.com/tickets/corporate-hospitality" target="_blank">corporate 
	suites and boxes</a> - are they fetching full market value, given that there 
	is a waiting list? If not, then the increase from 
	that should be passed to government too.</li>
	<li>In return, over a 30-year operating period, the Government would be at 
	least $2bn closer to paying for the HK$33.5bn+ Kai Tak sports complex, and 
	is a bit more likely to get financing approval.</li>
</ul>
<p>It is politically unwise for HKRU to continue to undercharge for tickets, 
hoard surpluses and underpay the Government for the facilities it needs.</p>
<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=141004">ASIA SOCIETY (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1005808">ASIAWORLD-EXPO MANAGEMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=25412">HONG KONG ACADEMY FOR PERFORMING ARTS (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=27317">HONG KONG ARTS CENTRE</a></li>
				
				<li><a href="/dbpub/articles.asp?p=33696">HONG KONG CONVENTION AND EXHIBITION CENTRE (MANAGEMENT) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1016014">HONG KONG MARITIME MUSEUM LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=133806">Hong Kong, China Rugby</a></li>
				
				<li><a href="/dbpub/articles.asp?p=57101">NEW WORLD FACILITIES MANAGEMENT COMPANY LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
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