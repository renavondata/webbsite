
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

<script type="text/javascript">document.title="MTRC: Time to Vote";</script>

	<div class="summary">We analyse the MTRC circular on the so-called "Rail Merger". We reaffirm our advice to independent shareholders to vote AGAINST the transaction. VOTE NOW - and don't assume that others will stop the deal for you. The Government will spare no effort trying to push this through.</div>

<h2 class="center">MTRC: Time to Vote<br>
<span class="headlinedate">11 September 2007</span></h2>
<p>The time has come for independent shareholders of MTR Corporation Ltd (<b>MTRC</b>, 
0066), to decide on the proposed &quot;Rail Merger&quot;, which in fact is not a corporate 
merger but is a mixture of property purchases and leasing of railway assets on 
onerous terms from 
the Kowloon-Canton Railway Corporation (<b>KCRC</b>), wholly-owned by 
Government. Bundled in with the deal is a proposal to strip the company of its 
commercial autonomy, locking its real fares at the current low levels, for no payment in return.</p>
<div class="regbox">
	<b><i>Webb-site.com </i>strongly urges independent shareholders to vote 
	AGAINST the proposal. VOTE NOW. Every vote counts.</b><p>If you are a registered holder, you will have received a 
	proxy form in the 
	mail. If you hold your shares through a bank, broker or custodian, then you must instruct 
	them now to vote against the deal on your behalf.
	<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070903/LTN20070903368.pdf">
	Proxy forms</a> must be received by the registrar 48 hours before the meeting, 
	which takes place at 11:00 on Tuesday 9-Oct-07. That puts the deadline at 11:00 
	on a Sunday, when there are no postal deliveries, and since we have a 5-day 
	work week in HK, you must post your vote by Wednesday 3-Oct-07 to be sure 
	that it will count. Why wait?</p>
</div>
<p>If you are a regular reader, then you are probably already familiar with the 
arguments. Since the terms of the deal were first
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060411/LTN20060411176.doc">
announced</a> on 11-Apr-06, we have written about it several times, including a
<a target="_blank" href="mtrkcrlegco.asp">submission</a> to the Legislative 
Council's bills committee on 25-Sep-06, and have given numerous media interviews 
about it. Please read the submission if you need the details.</p>
<p>On each occasion, and at two AGMs, we have urged the Government to go back to the drawing 
board and come up with a proposal for combining the railways in a commercial, 
fully merged company which retains autonomy to set its own fares, but they have declined to do so. 
We always try to be constructive.</p>
<p>While everyone recognises 
the economic efficiencies which could be achieved from combining the railway 
operations in a sensible way, shareholders of MTRC should not have to take a 
loss to make it 
happen. So we are left with no choice but to vote it down.</p>
<p>Instead of improving the proposal, the Government has in fact made it worse, 
as we <a target="_blank" href="farefreeze.asp">explained</a> on 17-May-07 when 
MTRC agreed, conditional on the deal being approved, to freeze its fares for a 
further year until at least 30-Jun-09. During the extra year, inflation would 
eat away its margins further, and then the new fare control scheme would lock 
those margins at lower levels. They have also agreed to limit adjustments to 
individual fares to between +5% and -5% of the overall weighted fare adjustment 
rate. That ties their hands further on commercial adjustments to respond to 
demand and supply on different routes.</p>
<p>On 3-Sep-07, MTRC finally published the 545-page
<b>
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070903/LTN20070903337.pdf">
circular</a></b> on the proposed deal. There has been no change to the deal, so 
there are no surprises, but we will take you through the key points, so open it 
up and read along. To put the figures in perspective, MTRC tonight has 5,589m 
shares in issue at $22.90 for a market value of HK$128.0bn (US$16.4bn).</p>
<h3>Introduction</h3>
<p>The summary on pages (ii) to (iv) contains a section entitled &quot;Enhancement of 
value&quot; with a lot of wishful thinking. It talks about what would have happened 
if the deal had become effective on 1-Jan-06, and then assumes that various 
aspects of the deal, such as fare cuts and variable lease payments, had not 
actually happened. The &quot;pro forma&quot; figures also do not account for the 
real-world fact that inflation is eating away the operating profit margins as we 
speak, and would continue to do so until the first fare adjustment, after 
30-Jun-09. All the meat with none of the vegetables. So the &quot;what if&quot; figures 
are, in our view, misleading and you should ignore them. MTRC could have 
produced pro forma figures which reflect those factors, but chose not to, 
presumably because it would not have supported their case. Instead, they resort 
to fuzzy descriptions of what those calculations lead to, such as <i>&quot;notable&quot;</i> 
and <i>&quot;very significant&quot;, </i>whatever that means. Sorry, but no, we won't take 
their word for it.</p>
<h3>Property gains...</h3>
<p>On the property side, there is a valuation report as at 31-Jul-07 by Jones 
Lang LaSalle Ltd of the investment properties and development rights to be 
purchased from KCRC. The investment properties are now valued at $3,354m, which 
is an 18% increase on the agreed purchase price of $2.84bn back in Apr-06. The 
development rights are valued at $7.22bn, which is a 47% increase over the 
purchase price of $4.91bn. The greater percentage increase is simply a 
consequence of the sensitivity of the calculations to expected sales prices after land premiums have been fixed, 
since the development rights represent the net present value of future profits 
from development. Overall 
then, after allowing for 17.5% tax on the increase in valuation, the valuer says 
the Property 
Package would add about <b>HK$2.33bn</b> to MTRC's value, or about $0.42 per 
share.</p>
<p>We don't think the property market has moved much in the last 17 months. No 
doubt MTRC wanted the highest valuation it could find to justify the deal, but 
we won't argue with them, because it doesn't even come close to justifying the 
proposal. </p>
<h3>...offset by margin crunch from fare freeze</h3>
<p>The $2.33bn gain in the Property Package since the deal was first 
negotiated is more than negated by the MTRC's agreement to freeze fares for an 
extra year if the deal is approved. The result of the fare freeze is to 
exclude the eventual amount of inflation in 2007 from all future fares, slashing 
margins by the same amount. If that turns out to be 4% on a fare base of $10bn, 
then we are talking about a loss of $400m per year in future revenue, or $330m 
after tax, and based on a 6% discount rate (or a P/E of 16.7), that is worth <b>
-HK$5.50bn</b>, or about -$0.98 per share.</p>
<h3>Locking in fares at low levels</h3>
<p>On pages 70 to 71 of the circular, Merrill Lynch analyses what fares &quot;would 
have been&quot; if the proposed Fare Adjustment Mechanism (<b>FAM</b>) had been in 
effect over the last 24 years. In other words, what fares would have been if 
they had kept pace with the average of transport wage inflation and composite consumer 
price inflation (<b>CCPI</b>) over that period. Notably, wage inflation (simple 
average 6.60%) has been the larger of the two contributors, outpacing CCPI 
(simple average 4.46%) by 2.1% annually. From a starting point of 100 in 1983, 
the FAM &quot;would have&quot; taken fares up to 353.43, while the actual fare level rose 
to 296.01. Their conclusion is that fares would have been 
about 19.4% higher by 30-Jun-07. Most of that gap opened up between 1990 (just 
after Tiananmen Square) and 1997.</p>
<p>Then, in a leap of fundamentally flawed 
logic, they conclude that <i>&quot;the Company therefore considers...&quot;</i> (surely, 
they mean the board - companies don't think) <i>&quot;...that the FAM will be 
beneficial to the Company particularly in the long term&quot;</i>. Notably Merrill 
Lynch avoids endorsing that point of view, although they do list it on page 84 
as one of the factors in their advice.</p>
<p>On the contrary, their figures underline how much potential there is for 
MTRC, if it retains fare autonomy, to raise future fares above the rate of 
future inflation in order to close the gap which has opened over the last 24 
years. By its own claim, MTRC is now 
winning &quot;best value for money&quot; surveys, beating even the dirt-cheap Star Ferry and 
Tramways. If it were left to set its own fares, MTRC could optimise revenues at 
much higher levels while still satisfying customers and reducing the need for 
subsidies in land grants or other financial support from Government.</p>
<p>On its own revenue base of $5.9bn, each 1% increase in MTRC fares after 17.5% 
tax is worth $48.7m per year or about $811m at a 6% discount rate. So if it 
closed the 19.4% gap, that would add <b>$15.7bn</b> to MTRC's valuation, or 
about $2.81 per share. Of 
course, you probably couldn't close the gap all in one go, but it wouldn't take 
too many years, given that competitors such as Kowloon Motor Bus have recently
<a target="_blank" href="http://www.thestandard.com.hk/news_detail.asp?pp_cat=12&art_id=53099&sid=15287519&con_type=1&d_str=20070908&sear_year=2007">
proposed</a> a 9% fare rise.</p>
<p>If this deal goes ahead, then MTRC will get locked into the current low fare 
levels (in real terms) and will never close the inflation gap that has opened over the last 23 
years. You can wave goodbye to that potential $15.7bn, and that's on top of the 
$5.5bn cost of an extra year's fare freeze.</p>
<h3>The value of fare autonomy</h3>
<p>That $15.7bn is the medium-term upside of saying &quot;no&quot; and recovering lost 
ground through fare autonomy, but even after that, 
there is potential to go further if the Government starts charging properly for 
the cost of roads (with road pricing, which it is now considering) and the cost 
of kerbside air pollution (by revoking the buses' exemption from diesel duty, 
raising the duty level, and 
charging duty on LPG). Those are hidden subsidies to road transport, and 
without the subsidies, road transport fares would have to rise, which would allow 
MTRC to raise fares in competition. We still have some of the cheapest metro 
rail and bus fares of any city in the developed world.</p>
<p>As Donald Tsang (then Financial Secretary, now Chief Executive) said in his 
final
<a target="_blank" href="http://www.budget.gov.hk/2001/english/efile.htm#��Green�� Taxes">
budget speech</a> of 7-Mar-01:</p>
<blockquote>
	<p>&quot;why do we continue to exempt franchised buses from duty on diesel and 
	indirectly undermine the competitiveness of railways which are more 
	environmentally friendly?...we must as a community understand that if our 
	environmental sores are left to fester, inaction will, over time, result in 
	far worse pain and far greater costs than will an early cure. Most of the 
	world seems to have woken up to that fact. When will Hong Kong?&quot;</p>
</blockquote>
<p>7 years later, and now in the driver's seat, Mr Tsang appears to have fallen 
asleep at the wheel on road transport. Meanwhile, the Government has done a 
complete U-turn on fare autonomy, taking the board of MTRC with it. In 2000, it 
swore blind that fare autonomy was essential for the commercial operations of 
MTRC. The Government
<a target="_blank" href="http://www.legco.gov.hk/yr99-00/english/bc/bc01/general/bc01_brf.pdf">
told</a> the Legislative Council:</p>
<blockquote>
	<p>&quot;It is important that, after privatization, MTRC should continue to 
	retain fare autonomy which will enable it to invest in the development and 
	maintenance of the railway system. Indeed the loss of fare autonomy may run 
	the risk of rendering MTRC shares unmarketable and frustrate the plan for 
	privatization.&quot;<i> - HKSAR Transport Bureau, 24-Sep-99</i></p>
</blockquote>
<p>It wasn't just the Government, but a parade of analysts and experts. We
<a target="_blank" href="MTRchan.asp">reminded you last week</a> that one of 
those experts is now Secretary for Financial Services and the Treasury and a 
director of MTRC, Professor K C Chan, who
<a target="_blank" href="http://www.legco.gov.hk/yr99-00/english/bc/bc01/papers/a580e.pdf">
said</a> in 2000:</p>
<blockquote>
	<p>&quot;I believe that as a business, MTRCL should be allowed to set fares, as 
	any business should be able to set prices of its products. Without the 
	autonomy in setting fares, it will be difficult for the company to develop 
	its business strategy and to make investment decisions...</p>
	<p>it is not a good idea to take away the fare setting power of the company. To 
	do so will inject uncertainty to business planning, making it difficult for 
	the management to create economic values...</p>
	<p>Without the fare setting ability, the new company will not be attractive to 
	the market...</p>
	<p>I do not favour adopting a formula that explicitly specifies the allowable 
	level of future fare increases, such as specifying that future fare 
	increases be lower than general inflation... Any explicit rule specified 
	cannot anticipate the changes in the economics of providing railway 
	services. Its adoption is unnecessarily restrictive to the company and 
	adding uncertainty to the company's prospects.&quot;</p>
</blockquote>
<p>Another expert, Goldman Sachs, which advised MTRC on the IPO and is now 
advising it on the current proposal,
<a target="_blank" href="http://www.legco.gov.hk/yr99-00/english/bc/bc01/papers/a636e01.pdf">
told LegCo</a> on 16-Dec-99:</p>
<blockquote>
	<p>&quot;If MTRC's fare-setting mechanism were altered, the certainty of the company's 
	future income could be weakened significantly...</p>
	<p>A change in the fare-setting mechanism would also create disincentives for 
	MTRC to make long-term investments and commitments...</p>
	<p>If we transfer the pricing mechanism, either in part or whole, from being 
	market determined to a LegCo approved mechanism, we will be moving away from 
	the free market principles that are the very cornerstone of Hong Kong's 
	success..."</p>
</blockquote>
<p>And we'll leave the last word on fare autonomy to none other than the 
Chairman of MTRC, Raymond Ch'ien Kuo-fung, who
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040317/00066/F104.pdf">
said in his annual report</a> on 2-Mar-04:</p>
<blockquote>
	<p>&quot;From its inception, fare autonomy has been the cornerstone of MTR's 
	business model and success."</p>
</blockquote>
<p>The affable Government-appointed Chairman sings a different song these days.</p>
<h3>Political pressure</h3>
<p>Part of the MTRC's argument for the FAM is that it provides a <i>
&quot;predictable, objective and transparent&quot;</i> solution to the question of fare 
adjustment, and that this avoids political and social pressure when the time 
comes for fare increases. That is simply not the case. Public transport 
operators worldwide are always subject to social pressure, particularly when 
they are majority owned by the Government. Even the FAM would only run for 5 
years before it would be subject to review by Government, and you can bet that, 
after having agreed to one scheme of control, there would be political pressure 
to tighten the scheme further every 5 years. We've never seen a regulator that 
seeks to improve profits of regulatees.</p>
<p>There is also that &quot;productivity factor&quot; or &quot;X-factor&quot; which can be used to 
squeeze the fares down again, although they promise to keep it at zero in the 
first 5 years and 0.1% in the 4 years after that.</p>
<h3>Synergies drowned in fare cuts</h3>
<p>On page 78-79, Merrill Lynch talks about the possible synergies, which would 
mainly be achieved through reduction in duplicated overhead staff, such as 
accounting, marketing, HR, legal and advertising. MTRC refers to the job cuts 
euphemistically as <i>&quot;an overall staffing synergy of 650-700&quot;</i>.&nbsp; 
However, Merrill Lynch stops short of agreeing with MTRC's estimate of $450m per 
year, saying only that <i>&quot;we believe it is reasonable to assume that the 
Company's estimate...has been prepared by the Company with due care and 
consideration.&quot;</i></p>
<p>Even if they do achieve the full $450m of synergies, they expect it would 
take 3 years to achieve, and these are more than offset by the $600m package of 
fare cuts that would take place on day 1. The restructuring cost of achieving 
these synergies, including items such as redundancy payments, is put at up to 
$1.35bn, or 3 years' worth of synergies.</p>
<p>The difference between the fare cuts of $600m and the synergies of $450m is 
-$150m. Tax that at 17.5% and discount at 6%, and you have a value loss of 
$2.06bn.<b> </b>Add the $1.35bn of restructuring costs, and you've got a loss of
<b>$3.41bn</b>, or about -$0.61 per share.</p>
<h3>Payments to KCRC</h3>
<p>The Government spin, throughout this process, has been that it is a &quot;merger&quot;, 
and you will find the word &quot;merger&quot; 921 times in the circular. If you had any 
belief that this was a corporate merger, think again. In corporate mergers, two 
companies come together under common ownership. This is a lease by MTRC of KCRC 
assets which encumbers MTRC with increasing payment obligations, and Merrill 
Lynch does focus on the point we made last year regarding the terms of this 
lease. On page 72 it states:</p>
<blockquote>
	<p>&quot;The Variable Annual Payment mechanism is one of the key drivers of the 
	total consideration to be paid by MTRC to KCRC over the Concession Period... 
	We note that the Variable Annual Payment mechanism does not, however, adjust 
	for inflation or deflation. With inflation in any given year of the 
	Concession Period, revenues will increase, <b>but the revenue sharing 
	thresholds will remain fixed, resulting in an increased absolute amount of 
	Variable Annual Payment as inflation increases.&quot; </b>(emphasis added)</p>
</blockquote>
<p>In fact, that's understating the problem. It is not just an increased 
absolute amount, but is also an increased <u>percentage revenue share</u>, 
bleeding away the operating margin as time passes. MTRC would have to pay a 
fixed annual rent of $750m, and a variable rent based on revenue, with ratcheted 
percentage bands. To reduce the cash flow pressure on MTRC during the early 
years of the scheme, it would not start paying the variable rent until 3 years 
after the transaction, while it hunts for those synergies.</p>
<p>In summary, the variable rent on the first $7.5bn of KCR System revenues is 
charged at an average of 8.3% ($625m) and the remainder is charged at 35%. What 
that means is that as soon as inflation and traffic growth raise revenues from 
the current $5.2bn to $7.5bn (around 7.5 years at 5% per year would do that) 
then 35% of all additional revenue goes to KCRC. MTRC also has to pay for all 
the upkeep and capital expenditure on the KCR System. The trains you ride in 25 
years' time will not be the trains you ride today, some of which are spanking 
new. As the cash payments to KCRC increase, so will the upkeep costs and capital 
expenditure.</p>
<p>On page 76, you will find a graph which shows the effect of either 3% or 7% 
inflation (they missed the middle-case of 5%) on the revenue sharing 
arrangements. Desperately seeking a silver lining where none exists in this 
awful cloud, Merrill Lynch writes:</p>
<blockquote>
	<p>&quot;On the basis of this analysis and the assumptions adopted, we conclude 
	that the average Variable Annual Payment margin should remain below 35.0% 
	during the entire illustrative Concession Period based on reasonable 
	expectations of future inflation in Hong Kong during such period.&quot;</p>
</blockquote>
<p>Well, guys, that's a mathematical certainty which doesn't depend on 
&quot;reasonable expectations&quot; or any deep analysis. There is no &quot;should&quot; about it. 
If you take 8.3% on the first $7.5bn (or 18.3% if you include the fixed payment) 
and 35% on everything else, then of course the overall average will never quite 
reach 35%, not even if we have Zimbabwean rates of hyperinflation until the Sun
<a target="_blank" href="http://en.wikipedia.org/wiki/Red_giant">becomes a red 
giant</a> and engulfs planet Earth in 4.5 billion years time. And this is the 
best analysis that Merrill Lynch can come up with?</p>
<p><b>The key point here is that the Government on the one hand wants MTRC to 
lock its fares in line with inflation, but on the other hand wants it to pay 
KCRC (owned by the Government) a revenue share for leasing the assets, at a 
percentage rate which increases towards 35% depending on inflation. The higher 
the inflation, the faster it approaches the 35% limit, and the quicker the 
remaining profit margin for MTRC gets squeezed into the red.</b></p>
<h3>Flawed analysis</h3>
<p>Reading through the Merrill Lynch letter, one would be forgiven for thinking 
that it contains no independent scrutiny at all. We counted 18 different 
instances of the phrase <i>&quot;based on our discussions with&quot;</i> the management of 
MTRC. This usually precedes some statement of an assumption that they have taken 
on faith from management. For example, on page 73, they look at the historic 
operating margins of KCRC before interest, tax, depreciation and amortisation 
(EBITDA), which averaged 48.7% from 1997 to 2006, and then write:</p>
<blockquote>
	<p>&quot;Based on our discussions with the management of the Company, we have 
	assumed that the period from 1997 to 2006 is representative of the 
	long-term, future profitability of the KCRC System and can therefore 
	reasonably be used as a reference in our analysis.&quot;</p>
</blockquote>
<p>Why on earth would that be the case? This leap of faith is typical of most 
investment bank &quot;research&quot; (and we use the term generously) since the deal was 
announced - analysts just take these bald assertions at face value rather than 
conducting any detailed analysis of likely operating margins under the new 
regime.</p>
<p>The flaw in the above EBITDA assumption is that the fares would be frozen for 
2 more years while inflation raises KCR System operating costs, including wage 
inflation, energy and so on. The base case for cashflow is 2006 with KCR System 
revenues of $5,200m, but the fares are frozen until after 30-Jun-09. So we 
estimate that cost increases of 4% per year (keep it simple, 8% over 2 years), 
on a cost base of 50% of revenues, will take about 4% off of EBITDA margin, or 
about $172m per year after tax.</p>
<p>The letter also contains a set of discounted cashflow calculations which are 
deeply flawed, because they start on pages 63-65 with an assumption of zero 
change in the Variable Annual Payment and cashflow of $530m for 47 years (after 
the initial 3-year period). As we've said, you need to take about $172m off the 
starting point due to the fare freeze. However, they have also deducted $600m 
for the fare cut package (which we have evaluated with synergies above, as it 
applies to both networks), so we add back $495m net of tax, and it takes us to 
Adjusted KCR System Cashflows of $853m, or <b>16.4%</b> of revenues.</p>
<p>But even that cashflow would only hold true for 47 years if there was zero 
inflation - a very unlikely scenario relative to our long-term average of 5%. As 
we explained above, inflation will raise the share of revenue payable to KCRC, 
and cut the cashflow. Keeping all the other variables constant, a rate of 
inflation of 5% on revenue of $5,200m for the next 20 years would raise the 
variable payment from 5.4% of revenue now, to 11.4% after 10 years, <b>20.5%</b> 
after 20 years and 26.1% after 30 years. Since net system cashflows are only 
16.4% of revenue to start with, you can see that the cashflow goes negative 
after about 20 years and continues to bleed red ink after that. Even if KCR 
achieves some passenger growth, it would not defer the red ink for long. That 
also assumes no increase in capital expenditure as the system ages, which we 
think is unrealistic.</p>
<p>Merrill Lynch then proceeds on pages 66-67 with a sensitivity analysis which 
looks at variations of up to 15% from cashflows of $530m (which as we said, is 
wrong to start with) over years 4 to 50. That analysis is meaningless, because 
the variation amounts to only 1.5% of revenues at most. As we have shown, even 
with modest inflation, the increasing payout to KCRC will be far greater than 
that variation.</p>
<p>It is only when they get to pages 75-77 that they take account of inflation 
on the variable annual payments. Even then, that doesn't take account of the 
impact of the ongoing fare freeze on EBITDA margins, and assumes no real 
increase in capital expenditure even as the KCR system ages.</p>
<h3>Dividends</h3>
<p>MTRC has not increased its annual dividends totalling $0.42 per share since 
the 2000 IPO, and we believe that if this deal is approved, future dividends 
will come under threat. The only way that MTRC has been able to maintain its 
dividend for the minority shareholders over the last 8 years without a 
substantial increase in debt is that the Government has taken most of its 
dividends in shares rather than cash, and waived some dividends to subsidise the 
Disneyland line.</p>
<p>The Government has a standing arrangement, extended in 2006 until 2009, that 
it will accept shares instead of cash to the extent needed to ensure that not 
more than 50% of the dividend payout by MTRC is paid in cash. Without that, the 
debt levels would have increased, putting the credit ratings under threat, and 
MTRC would have had to cut the dividend. From IPO up to the end of 2006, 
dividend payments totalling $6,396m had either been taken in shares ($6,160m) or 
waived by government ($931m). Only $5,235m was actually paid to shareholders in 
cash, of which $3,030m went to Government. So while your stock screen might tell 
you the dividend yield is 1.83% (at $22.90), the cash payout is only half that 
amount.</p>
<p><b>This whole transaction tries to satisfy too many interests pulling in 
different directions, and as a result, there is not enough money to go around. 
On the one hand, the Government wants to satisfy the public with fare cuts, fare 
freezes and cheap travel forever, and on the other, Government wants MTRC to pay 
it (via KCRC) more and more money, while remaining a for-profit listed company. 
At the end of the day, it is the MTRC shareholders who are left to pay for it. 
The ratchet structure of the lease payments seems almost designed to shift 
problems into the future, setting up a cashflow time-bomb.</b></p>
<h3>Conflicted banks</h3>
<p>In the last few weeks, leading investment banks who are involved in the 
proposed deal have also been pumping out positive research praising the deal. 
What would you expect them to say? For the record, the following firms have a 
conflict of interest: Goldman Sachs and UBS are 
advising MTRC, Merrill Lynch is advising the Independent Board Committee, Morgan 
Stanley is advising the KCRC, and Citcorp and HSBC are advising the Government. 
If we have missed anyone else, let us know. We can't recall so many banks being 
conflicted on one deal since PCCW's acquisition of Cable &amp; Wireless HKT Ltd 
back in 2000, which almost everyone <a target="_blank" href="pccwhkt.asp">except 
us</a> said was a wonderful deal.</p>
<h3>Your vote counts</h3>
<p>You can rest assured that the Government will pull every lever it can find to 
get government-friendly shareholders to support it. So don't be complacent and 
think that other shareholders will block the deal for you. Every vote will 
count.</p>
<p>Only yesterday, in the context of HKEx, the Government
<a target="_blank" href="http://www.hkex.com.hk/news/hkexnews/hkma07092007.pdf">
repeated its claim</a> that it was exempt from the Securities and Futures 
Ordinance and only disclosed its holding &quot;voluntarily&quot;. Therefore, although it 
acknowledges that it owns shares in two pockets, 76.67% of MTRC through the 
Financial Secretary, and 0.94% through the Exchange Fund, a total of 77.61% 
which will abstain from voting, the Government almost certainly holds shares in 
other pockets which it has not disclosed.</p>
<p>The Listing Rules require that the Government &quot;and its associates&quot; shall 
abstain from voting, <b>but for a Government which holds itself exempt from its 
own securities law, what hope is there that it will fully comply with the 
non-statutory Listing Rules?</b> In the Listing Rules, &quot;associates&quot; of a person 
include any entity in which it controls more than 30% of the voting rights. The 
Government might claim that it doesn't control any &quot;voting rights&quot; in statutory 
bodies, even though it appoints all of the board members, because statutory 
bodies don't normally have voting share capital.</p>
<p>We encourage board members of statutory bodies to seek legal advice on their 
position, because in our view, they should prevent their investment managers 
from voting MTRC shares. For example, the Housing Authority, after it sold the 
Link REIT,
<a target="_blank" href="http://www.info.gov.hk/gia/general/200701/09/P200701090141.htm">
announced</a> on 9-Jan-07 that it would put HK$12.5bn into global equities, 
including HK. Another big holder is the Subsidized Schools Provident Fund, 
managed by the Treasury (which is under Professor Chan's bureau), which at 31-May-07
<a target="_blank" href="http://www.edb.gov.hk/FileManager/EN/Content_262/fbsspf-0507%20eng.pdf">
held</a> $14.6bn in HK equities. The MPF regulator
<a target="_blank" href="http://www.mpfa.org.hk/english/quicklinks/quicklinks_pub/files/18Financial_06_07_e.pdf">
held</a> (note 12) $1.17bn in equities at 31-Mar-07. And don't forget that one 
of MTRC's advisers, HSBC, is the largest MPF provider in Hong Kong.</p>
<p>Then there are other close entities such as the Jockey Club (the 
Government-franchised gambling monopoly) and its Charities Trust, which all have 
HK portfolios. At least 8 members of the Executive Council are also Voting 
Members of the Jockey Club, including both the club's former Chairman and the 
Chief Executive of HK. At 30-Jun-07, the Jockey Club
<a target="_blank" href="http://www.hkjc.com/english/special/2007_annual_report/Financial%20Report/Group%20Accounts%20and%20Statistics.pdf">
held</a> (note 16) $1.28bn of HK-listed equities, while the bloated $22.6bn 
Charities Trust
<a target="_blank" href="http://www.hkjc.com/english/special/2007_annual_report/Financial%20Report/Trust%20Accounts.pdf">
held</a> (notes 5 &amp; 6) $4.83bn in HK equities.</p>
<p>It is notable that since the circular came out, volume in the stock has shot 
up, and so has the share price, rising 20.7% from $18.98 on 3-Sep-07 to a record 
high of $22.90 tonight. We wonder if local or mainland Government money is 
involved. The circular contained no new information, so it looks deeply 
suspicious.</p>
<p>So don't sit back, get out and vote. It's the least you can do after all the 
time we have put into defending your rights. If this deal is approved, then we 
will sell all our shares in MTRC.</p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=11569">MTR CORPORATION LIMITED</a></li>
				
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