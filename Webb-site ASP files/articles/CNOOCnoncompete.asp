
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

<script type="text/javascript">document.title="Keep CNOOC's Exclusivity";</script>

	<div class="summary">In an unwanted Christmas message, CNOOC Ltd (0883, NYSE:CEO) is seeking minority shareholders' approval to amend its parent's non-compete undertaking, which currently gives CNOOC an exclusive right to participate in production sharing contracts on discoveries made by foreign partners. We urge investors to vote against this value-destroying proposal. Why give up something so valuable for nothing?</div>

<h2 class="center">Keep CNOOC's Exclusivity<br>
<span class="headlinedate">14 December 2005</span></h2>
<p class="revisedate">(<a href="#update">updated</a> 18-Dec-05)</p>
<p>What is it about the holiday season that brings out the worst in companies? 
Investors in CNOOC Ltd (<b>CNOOC</b>, 0883, NYSE:CEO) must act fast to preserve 
value at a New Year's Eve shareholder meeting, as we shall explain. One of the 
attractions for investors in the IPO of CNOOC was its exclusivity - right up 
there in the first paragraph of the summary on
<a target="_blank" href="../codocs/CNOOCipo1-2.pdf">page 1</a> of the 16-Feb-01 
prospectus:</p>
<blockquote>
	<p>&quot;We are... the only company permitted to conduct exploration and 
	production activities with international oil and gas companies offshore 
	China&quot;.</p>
</blockquote>
<p>To ensure this, the state-owned parent of CNOOC, China National Offshore Oil 
Corporation (<b>CNOOC Parent</b>) gave a non-compete undertaking, shown on
<a target="_blank" href="../codocs/CNOOCipo119.pdf">page 119</a> of the 
prospectus:</p>
<blockquote>
	<p>&quot;[CNOOC] will enjoy the exclusive right to exercise all of [CNOOC 
	Parent]'s commercial
	and operational rights under the PRC laws and regulations relating to the 
	exploration,
	development, production and sales of the PRC offshore oil and natural 
	gas...&quot;</p>
	<p>neither [CNOOC Parent] nor any of its <a href="#note1">associates<sup>1</sup></a> 
	will engage or be interested, directly or
	indirectly, in oil and natural gas exploration, development, production and 
	sales in or
	outside the PRC.&quot;</p>
</blockquote>
<p>The undertakings were unlimited in time, 
unless CNOOC ceased to be controlled by CNOOC Parent or any other PRC government 
entity. Now in an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051209/LTN20051209024.pdf">
announcement</a> dated 8-Dec-05 and a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051212/LTN20051212088.pdf">
circular</a> rushed out 2 days later, CNOOC is seeking minority shareholders' 
approval to amend the non-compete undertaking in a way which in our view is 
tantamount to scrapping it.</p>
<p>There's a lot of value in that exclusivity, 
and if shareholders approve this amendment, they will be giving it away. The key 
to this is the Production Sharing Contracts (<b>PSCs</b>) with foreign partners. 
The prospectus explains:</p>
<blockquote>
	<p>&quot;Through CNOOC Parent, we have the 
	exclusive right to enter into [PSCs] with international oil and gas 
	companies to conduct exploration and production activities offshore China. 
	Under the PSCs, we have the sole right to acquire, <b>at no cost</b>, up to 
	a 51% participating interest in any successful discovery...the foreign 
	partners can recover their exploration costs under the PSCs only if a 
	commercially viable discovery is made.&quot; (emphasis added)</p>
</blockquote>
<p>All the exploration costs under PSCs are paid 
for by foreign partners, and CNOOC gets up to 51% of the upside when discoveries 
are made. CNOOC can exercise the participation right after the foreign partners 
have made commercially viable discoveries, and then they share the development 
and production costs and split the profit, net of the taxes and royalties 
payable to Government.</p>
<h3>What CNOOC Parent wants</h3>
<p>What CNOOC Parent now wants is to amend the 
non-compete undertaking so that as long as CNOOC gives prior consent, CNOOC 
Parent can engage in the competing business. That consent may be given by the 
board of directors of CNOOC. But of course, the composition of the board, 
including the &quot;independent&quot; directors, is controlled by CNOOC Parent, which as 
the majority shareholder can elect or remove any of them.</p>
<p>In any case, the &quot;independent&quot; non-executive 
directors are a minority (currently 5 out of 12) so even if all the INEDs 
objected, the board could still give consent by majority. As a superficial 
token, CNOOC Parent has granted an indefinite option to CNOOC to acquire any 
competing business - but that option can only be exercised at a <b>price to be 
negotiated</b> - not <b>at no cost</b> as the prospectus said. Those PSCs are 
lucrative, and CNOOC Parent could charge for the privilege of participating. Of 
course, on any particular project, if the negotiations fail, then there is no 
deal. And again, the board of CNOOC is hardly likely to exercise the option 
unless its controlling shareholder wants it to.</p>
<p>The written consent and option are in our view 
just smoke and mirrors to disguise the fact that minority shareholders are being 
asked to give up exclusivity, and the right to participate in PSCs without 
payment to CNOOC Parent, in return for....nothing. Apart from PSCs, the proposal 
would also open the door to CNOOC Parent investing directly in competing 
projects or companies.</p>
<p><b>If CNOOC really wants to 
pass up its rights to exclusive participation in any particular PSC or 
investment, then it should seek minority shareholders' approval on a 
case-by-case basis. CNOOC Parent would then have to explain, to the satisfaction 
of minority shareholders, why it considers that a project or investment is good 
enough to pursue but not good enough for CNOOC to take.</b></p>
<h3>The INEDs and IFA</h3>
<p>The 5 INEDs, on whose election CNOOC Parent 
votes, have recommended in favour of this proposal. What were they thinking, if 
indeed they <em>were</em> thinking? Given 
that CNOOC Parent is not offering any payment for compromising this exclusivity, 
it should be a no-brainer that you don't give up something for nothing. But then 
three of the five last year also thought it was a good idea to lend money to the 
parent's finance company (the other two were appointed later).</p>
<p>Coincidentally, the board has just awarded the 
deep-thinking INEDs an increase in fees from HK$200,000 to HK$500,000 per annum 
net of Hong Kong tax. Sure, that's not a lot by US standards, and CNOOC does 
have a NYSE listing, and the INEDs have (hopefully) put a lot of time in during 
the aborted Chevron bid, but the timing is unfortunate to say the least.</p>
<p>On 5-Feb-04 (before the events of last Easter) 
the board also awarded each of the first three INEDs (and one who has since 
quit) options to subscribe 1.15m shares at $3.152 per share, vesting over 3 
years.</p>
<p>The independent financial adviser on the 
current proposal, Dao Heng Securities Ltd, offers nothing to justify it, except 
to say that several recent listings have contained such a get-out from the 
non-compete undertaking. That's true, but CNOOC didn't, and if they had, then 
shareholders would have paid less for the shares they bought. The fact that some 
other companies don't have exclusivity is irrelevant to whether CNOOC should 
give it away.</p>
<p>The Chinese government has in the past often 
privatised slices of major industries such as telecoms or power, and then 
gradually injected provincial licenses or additional power stations into the 
listed vehicle. CNOOC was supposed to be different - investors were sold all the 
offshore business, present and future, in one go. You can't eat your rice twice.</p>
<h3>Vote NOW</h3>
<p><b>We strongly urge all 
minority shareholders to vote against this value-destroying proposal. It will go 
to a poll vote (1-share-1-vote) so your votes WILL be counted. However, don't 
wait around, because custodians can be slow to process voting instructions 
during the Christmas holidays. If you snooze, you lose.</b></p>
<p>CNOOC is employing a familiar tactic; spread 
the meeting notice period over a public holiday (in this case, Christmas) which 
reduces effective reaction time, particularly if you are holding American 
Depository Receipts (ADRs) on the US register. They must have planned this 
announcement some time ago, because you can't produce and clear a circular 
through the stock exchange and get an independent financial adviser's opinion in 
2 days flat. Several weeks would be more typical. And the EGM is on New Year's 
Eve, a Saturday!</p>
<p>The last time CNOOC did this was when it 
successfully <a target="_blank" href="0883EGM040428.asp">sought</a> minority 
shareholders' approval to lend money to its parent's finance company, with a 
notice timetable straddling Easter 2004. At the time, we claimed that CNOOC had 
been in breach of the Listing Rules for its previous loans, which the company
<a target="_blank" href="cnooc2.asp">denied</a>. Eventually, CNOOC was
<a target="_blank" href="CNOOCcensured.asp">censured</a> by the Stock Exchange 
and we were proven right. Later that year, CNOOC's sister, China Oilfield 
Services Ltd (2883) <a target="_blank" href="cosloans.asp">sought</a> similar 
approval and was <a target="_blank" href="coswin.asp">vetoed</a> after we 
campaigned against it.</p>
<p><b>Be careful when you vote</b> to vote 
against the correct resolution in the correct meeting, because CNOOC is holding 
two EGMs half an hour apart. We offer no opinion on the other proposals - 
suffice to say that after the way they have behaved, anything this company now 
proposes deserves healthy scepticism from investors. The resolution on the 
non-compete is in the <b>second EGM</b> at 10:30 a.m., <b>item 1</b> on the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051212/LTN20051212087.pdf">
proxy form</a>.</p>
<hr>
<h3 id="update">Update 18-Dec-05</h3>
<p>In response to the above article and the 
ensuing media coverage, late on Friday night (16-Dec-05), CNOOC filed this
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051216/LTN20051216217.pdf">
press release</a><sup><a href="#note2">2</a></sup> with the SEHK. It clarifies 
that CNOOC Parent will be allowed under the terms of the proposal to engage in 
competing business <em>&quot;<u>in</u> or <u>outside</u> the PRC but not in 
respect of <u>PRC offshore</u> oil and natural gas.&quot;</em> 
In fact, the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051212/LTN20051212088.pdf">
shareholder circular</a> simply stated that the competing business would be 
allowed <em>&quot;underground in and outside the PRC&quot;</em> 
(page 1, definition of Business).</p>
<p>To sort this out definitively, on Saturday 
morning we briefly suspended our Christmas shopping, avoided the WTO protests 
and trekked down to the offices of CNOOC's law firm Herbert Smith to look at the 
&quot;documents available for inspection&quot; listed on page 58 of the circular (not 
something most investors in CNOOC would have the proximity to do<sup><a href="#note3">3</a></sup>). 
The 4-page &quot;Supplemental Agreement&quot; we inspected does indeed refer to:</p>
<blockquote>
	<p>&quot;any opportunities falling within the 
	scope of the Business which are within the onshore areas of the PRC or 
	outside the PRC&quot;.</p>
</blockquote>
<p>So this at least means that projects <u>in PRC waters</u> remain the exclusive domain of CNOOC. However, 
that doesn't remove the fundamental problem with the proposal, which is that for 
the rest of the world, onshore the PRC and outside the PRC, it is 
not sufficient for CNOOC Parent to seek the consent of a board the composition 
of which is controlled by CNOOC Parent. Nor is it realistic to expect the board 
of CNOOC to continually review and independently decide whether to exercise a 
call option to acquire competing businesses which in any case leaves a price 
down to negotiation. Minority shareholders should not delegate this to such a 
conflicted entity.</p>
<p>In the press release, CNOOC says that they are 
just protecting minority shareholders from <em>&quot;inter-governmental projects and 
projects involving high risks etc.,...to reduce the potential risks to [CNOOC]&quot;</em>. 
Gee, thanks guys, but minority shareholders are quite capable of assessing risk 
for themselves. If CNOOC Parent wants to make a commercially unattractive 
investment outside of CNOOC, then you can always ask for minority shareholders' 
consent on that project, although if a Government-owned entity is pursuing 
uncommercial oil and gas projects then it begs the question of whether China's 
demands to be treated as a free-market economy really make any sense.</p>
<p>There's another reason why CNOOC minority 
shareholders should be nervous about its parent engaging in unattractive 
projects - remember that <a target="_blank" href="0883EGM040428.asp">vote</a> 
last year? CNOOC can now lend up to RMB6.8bn to CNOOC Parent's finance vehicle 
which in turn can make intra-group loans to finance such projects without your 
approval. So in fact CNOOC minority shareholders' money could be indirectly used 
to finance these &quot;high-risk&quot; projects without any economic upside for CNOOC.</p>
<p>CNOOC's 2004 annual report proudly states that 
it is currently the largest offshore oil producer in Indonesia - an area which 
we hopefully can all agree is outside the PRC. CNOOC also has an interest in the 
North West Shelf gas project in Australia. These are the kind of projects which 
CNOOC Parent in future might undertake on its own, without any further say so 
from minority shareholders, putting itself in competition with CNOOC for the 
sale of the resulting products in the PRC and elsewhere. <b>So our 
recommendation is reiterated. Vote against this proposal, and retain your right 
to veto competing business.</b></p>
<hr>
<p id="note1"><sup>1</sup> The word &quot;associates&quot; is 
in the prospectus. In the circular, it has magically changed to &quot;subsidiaries&quot; - 
a much narrower definition which would exclude companies owned 50% or less by 
CNOOC Parent.</p>
<p id="note2"><sup>2</sup> Although the 
press release was filed in the SEHK's corporate document system, it doesn't 
constitute a formal announcement under the Listing Rules because it didn't 
comply with the content requirements, including a list of the current directors 
and a disclaimer of SEHK's responsibility. Does this mean that the SEHK's filing 
system is now open to press releases? That could be good, if it encourages 
companies to file more than the regulatory-minimum disclosures.</p>
<p id="note3"><sup>3</sup> The SEHK 
should amend the Listing Rules to put all &quot;documents available for inspection&quot; 
on the web, not in some downtown HK office, so that investors everywhere have an 
equal opportunity to read them. The SFC has recently amended the Takeover Code 
in this respect, so that starting on 1-Jan-06, documents put on display during 
takeovers will be available on the web. However, they allow the documents to be 
&quot;removed&quot; from display after the takeover offer period is over - which will put 
future investors at an informational disadvantage to those who grabbed the 
information while they could. In the interests of fair disclosure, we will 
remedy this by archiving the material on <em>Webb-site.com</em>.</p>

<p><em>&copy; Webb-site.com, 2005</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9164">CNOOC LIMITED</a></li>
				
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