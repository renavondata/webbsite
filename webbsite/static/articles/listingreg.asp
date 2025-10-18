
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

<script type="text/javascript">document.title="Submission to SFC-HKEX consultation on listing regulation";</script>

	<div class="summary">These are our views on SFC-HKEX proposals to reform regulation of listings and listed companies. If you are an investor who cares about the future of HK's markets, please submit your support. The proposals are better than the status quo, but a political compromise on the 2003 Expert Group recommendation to transfer regulation to the SFC, and that should be Plan B.</div>

<h2 class="center">Submission to SFC-HKEX consultation on listing regulation<br>
<span class="headlinedate">6 September 2016</span></h2>

<p>On 17-Jun-2016, the <a href="../dbpub/orgdata.asp?p=503">Securities and 
Futures Commission</a> (<strong>SFC</strong>) and
<a href="../dbpub/orgdata.asp?p=9643">Hong Kong Exchanges and Clearing Ltd</a> (<strong>HKEX</strong>)
<a href="http://www.sfc.hk/edistributionWeb/gateway/EN/news-and-announcements/news/doc?refNo=16PR62" target="_blank">
launched</a> a 3-month consultation on listing regulation. This followed months 
of negotiations and a
<a href="http://www.budget.gov.hk/2016/eng/budget26.html" target="_blank">
statement</a> by Financial Secretary <a href="../dbpub/natperson.asp?p=24948">John Tsang 
Chun Wah</a> in his budget speech on 
24-Feb-2016 that there would "shortly" be such a consultation. The full 
consultation paper is
<a href="http://www.sfc.hk/edistributionWeb/gateway/EN/consultation/openFile?refNo=16CP2" target="_blank">
here</a> and you can 
<a href="https://www.sfc.hk/edistributionWeb/gateway/EN/consultation/comment?refNo=16CP2" target="_blank">
<strong>submit your views
here</strong></a>. This is the submission of Webb-site. Feel free to support it, link 
to it, copy it or plagiarise it.</p>
<p>Although the stock exchange, the Listing Rules and the Listing Committee (<strong>LC</strong>) 
are actually associated with a 100% subsidiary of HKEX, "The Stock Exchange of 
Hong Kong Limited", in this submission we will refer to the companies collectively as 
HKEX. The distinction is lost on most people anyway.</p>
<p>HKEX Chief Executive <a href="../dbpub/natperson.asp?p=52480">Charles Li Xiao Jia</a>, in his lukewarm endorsement of 
	the proposals in the news release, claims that there is a "balance between 
	market development and a trusted regulatory regime". This is a false 
	proposition. Good regulation and market development go hand in hand, they 
	are not opposing forces to be balanced. In a more trustworthy market, 
	investors will pay more for stocks because they expect to get a fairer share 
	of the returns and their money is less likely to be abused or expropriated.</p>
<h3>Background</h3>
<p>In 2003, the Government-appointed 
<a href="../dbpub/officers.asp?p=38148&amp;hide=N">Expert Group</a> recommended (<a href="http://www.info.gov.hk/info/expert/expertreport-e.htm" target="_blank">report 
here</a>) transferring the listing function to the SFC and giving statutory 
backing to the Listing Rules, freeing HKEX from its conflict of interests as a 
for-profit regulator and leaving it to focus on its commercial services. This 
was and remains the correct solution. Anything less is a political compromise.</p>
<p>Among the 3 major international markets of 
the USA, UK and Hong Kong, HK remains the laggard in having a listed, for-profit 
regulator. US listings are regulated by the SEC and UK listings by the
<a href="https://www.fca.org.uk/markets/ukla" target="_blank">UK Listing 
Authority</a> under the Financial Conduct Authority. In no other field of 
commerce in HK do we have for-profit regulators, let alone listed ones.</p>
<p>HK is also the only one of the three with a
<a href="hkexopoly.asp">statutory monopoly</a> stock exchange. One 
of the side-benefits of regulatory transfer would be to remove the fig-leaf by 
which the Government justifies the monopoly, opening the door to competition, 
improving services and lowering costs. Through legislation, the Government 
appoints more than half the board of HKEX, approves its Chairman (who has always 
been a member of HK's Executive Council) and holds a veto over shareholdings 
exceeding 5% of HKEX. Imagine the US President approving the Chairman of the NYSE and 
appointing the majority of its board! This situation persists largely because of the regulatory 
function still embedded in HKEX. </p>
<p>The HK Government, represented by then Financial Secretary 
<a href="../dbpub/positions.asp?p=2195">Antony Leung Kam Chung</a>, briefly <a href="http://www.info.gov.hk/gia/general/200303/21/0321286.htm" target="_blank">
adopted</a> the Expert Group recommendations on 21-Mar-2003. There then followed 
a concerted <a href="hkexpublic.asp">backlash</a> by HKEX and local 
tycoons who indirectly elect both Hong Kong's Chief Executive and many of the "functional 
constituency" legislators. 20 days later, the Government caved in, and Antony 
Leung
<a href="http://www.info.gov.hk/gia/general/200304/10/0410218.htm" target="_blank">
announced</a>  a fresh consultation on the regulation of listing matters which 
resulted in very little change. To cut a long story short, 13 years later, only 
one of the Listing Rules, the requirement to disclose price-sensitive 
information, has made it into law, and even then, only at the level of a civil 
offence to be dealt with by the Market Misconduct Tribunal, from 1-Jan-2013.</p>
<h3>Not trustworthy</h3>
<p>So, in the last 13 years, has HKEX demonstrated that it can be trusted to 
overcome its conflict of interests and put good regulation above vested 
interests and short-term gain? 
Emphatically not.</p>
<p>HKEX has made only minimal progress on reforms to corporate governance and 
disclosure and in some respects has stepped backwards, allowing issuers to 
obfuscate and  <a href="receivables.asp">reduce disclosure</a>, 
raising thresholds at which independent shareholder approvals are required for 
connected transactions, and issuing "decisions" which act as precedents for 
repeated waivers without amending the Listing Rules (which would require SFC 
approval). That isn't supposed to 
happen -
<a href="http://en-rules.hkex.com.hk/en/display/display_main.html?rbid=4476&amp;element_id=1949" target="_blank">Listing Rule 2.04</a> says that the Exchange will not grant a waiver "on a 
regularly recurring basis so as to create the same result as a general waiver".</p>
<p>But they do - for example, HKEX has been allowing listed companies (not being 
banks) to 
funnel their cash out through money-lending subsidiaries, and since a
<a href="https://www.hkex.com.hk/eng/rulesreg/listrules/listdec/Documents/ld67-2013.pdf" target="_blank">
decision in May 2013</a>, almost none of the borrowers are named in the required 
announcements, contravening
<a href="http://en-rules.hkex.com.hk/en/display/display_main.html?rbid=4476&amp;element_id=2501" target="_blank">
Listing Rule 13.15</a>. Instead we get meaningless announcements defining "the 
Borrower" to be "a customer of the Lender".</p>
<p>HKEX also allows (non-investment) companies to declare themselves to be 
"in the business" of securities investment and thereby exempt themselves from 
the Listing Rules on acquisitions and disposals when trading in large chunks of 
other listed companies. Indeed, listed companies can raise money in their IPOs 
or later and then divert the money into new lines of business without any 
approval from the public shareholders who funded them.</p>
<p>This state of affairs is unsurprising. The LC that makes the rules, even 
after a
<a href="http://en-rules.hkex.com.hk/en/display/display.html?rbid=4476&amp;element_id=44" target="_blank">
2006 reform</a>, is still stacked in favour of issuers and their paid advisers. 
Its agenda is set by HKEX, not the other way around. In HK, investors are to be 
seen but must not be heard, even though the market would not exist without them. 
Only 8 out 
of 28 LC members (up from 4/25 before 2006) are supposed to represent investor interests. It is often hard to 
identify who the 8 are - and who would want to serve in such a stifled 
environment? Only a few noble souls who don't see it as a lost cause.</p>
<p>The LC also spends most of its time (on Thursday afternoons, 
when its members are not busy creating IPOs as sponsors, lawyers or accountants) 
vetting Main Board prospectuses rather than handling regulatory reforms. 
Asset managers are naturally deterred from joining the LC by the potential conflict of 
interest in vetting prospectuses for companies in which they might invest.</p>
<p>Instead of moving HK forward to the "paragon of corporate governance" that 
then Financial Secretary <a href="../dbpub/natarts.asp?p=2191">Donald Tsang Yam 
Kuen</a> famously aspired to in his final
<a href="http://www.budget.gov.hk/2001/english/efile.htm#Corporate%20Governance" target="_blank">budget 
speech</a> of 2001, HKEX has pursued pseudo-reforms to the Listing Rules. For 
example:</p>
<ul>
	<li>The Listing Rules now require one third of the board to be "independent" 
	while still allowing controlling shareholders to vote in the elections of 
	the so-called independent non-executive directors, ensuring that INEDs are 
	only as independent as the controller wants them to be. The result is a 
	charade of "see no evil, hear no evil, speak no evil" as the
	<a href="3wisemonkeys.asp">three wise monkeys</a>  of HK boards 
	take their seats. Requiring these so-called INEDs to form new committees 
	(remuneration, nomination, etc) doesn't make them independent, it just 
	rearranges the deck chairs on the Titanic. Requiring a "diversity policy" 
	doesn't make them independent either. Any INED who misunderstands his or her 
	role and acts as if he or she has a mandate to question the management's decisions 
	can be quickly shown the door.</li>
	<li>On <a href="../dbpub/subject.asp?c=173">pre-emptive rights</a>, despite 
	the vast majority of votes cast by independent shareholders (who own the 
	free float of HK) being against the general issue mandate, the LC has refused to cut it, allowing controlling shareholders to pass a 
	mandate for involuntary dilution of shareholders by 20% at a 20% discount. 
	In HK, boards choose shareholders, not the other way around. Yes, they can 
	no longer obtain a second, third or nth mandate intra-year without a vote of 
	"independent" shareholders, but they can evade this by seeking a "specific" 
	mandate for a long-dated "best efforts" placing, on which controlling 
	shareholders can vote. They can also issue equity by granting 
	instantly-exercised options to "consultants" under a share option scheme.</li>
	<li>On disclosure, when some 90% of companies have a controlling 
	shareholder, there is almost no market for corporate control, boards do not 
	fear hostile takeover, and they have no incentive to disclose more than the 
	minimum. <a href="../dbpub/subject.asp?c=177">Quarterly financial reporting</a>, 
	which would greatly increase disclosure in this environment, has not been 
	forthcoming on the Main Board despite being mandatory in China, Singapore 
	and other Asian markets since the early years of this century. GEM companies 
	have been doing it since GEM launched in 1999, but it remains a "recommended 
	best practice" (comply or don't explain) in the Code on Corporate Governance 
	for the Main Board.</li>
</ul>
<h3>Listing profits no longer disclosed</h3>
<p>HKEX has itself reduced disclosure on its lucrative listing function. The <a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0305/LTN20150305592.pdf" target="_blank">
2014 accounts</a> (note 6) are the last time it disclosed the operating profit 
of the Listing Department (before central overheads), of $666m, or a whopping 
60.4% of the total listing fees of $1102m. Admittedly part of this comes from 
listing derivative warrants and callable bull-bear certificates, but most of these "products" only exist because the underlying shares are 
listed. HKEX's Chief Executive has
<a href="http://asia.nikkei.com/Business/AC/HKEx-chief-dismisses-conflict-of-interest-charge" target="_blank">
claimed</a> that setting the listing rules and granting waivers isn't a conflict 
of interest because HKEX makes more profit on trading, clearing and settlement 
than it does on the listing department, but of course, you can't trade what you 
don't list.</p>
<p>With a review of listing regulation pending, HKEX chose to cease disclosure 
of the listing division's profits. The
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0302/LTN20160302828.pdf" target="_blank">
2015 accounts</a> tell you (note 6) that listing fees were $1114m but the costs 
and operating profit are no longer disclosed. Too embarrassing.</p>
<h3>The Listing Department</h3>
<p>Webb-site receives a steady stream of complaints from the investing public 
about corporate behaviour under the Listing Rules. We often find these 
complaints to be valid and file corresponding complaints with HKEX, 
without revealing our readers' identities. We also file a substantial volume of 
our own complaints. All too often, we are told that the complaint does not 
relate to <em>serious </em>breaches of the Listing Rules and so no action will 
be taken. Apparently non-serious breaches are OK.</p>
<p>When we have asked for inaction to be referred to the LC 
under
<a href="http://en-rules.hkex.com.hk/en/display/display_main.html?rbid=4476&amp;element_id=2063" target="_blank">
Listing Rule 2B.15</a> as an "aggrieved party", we are often knocked back with a 
response, not on the merits of the complaint, but on the basis that we are not 
an "aggrieved party". Apparently one cannot be aggrieved at the way Listing 
Rules are applied (or not) unless one is a shareholder of the company concerned. 
It is not enough to be aggrieved by the handling of a complaint, or just 
aggrieved enough to take the time to file a complaint in the first place.</p>
<p>Judging from the times of day that responses sometimes arrive, the Listing Division is 
clearly under a great workload. The commercial pressure to minimize regulatory 
action rather than seek more resources and reduce profits is obvious. Stop pre-vetting 
announcements wherever possible. Don't spend too much time 
post-vetting announcements unless someone complains. Reject complaints wherever 
an excuse for inaction can be found.</p>
<h3>Political backing</h3>
<p>We probably wouldn't be having the current consultation if HKEX hadn't pushed 
things too far in 2014-15 by banging on about listing second-class 
shares with lower or no voting rights, or what HKEX euphemistically called 
"weighted voting rights", or even letting companies carve themselves out of the 
Listing Rules by writing weird and wicked constitutions which entrench their 
management like a politburo in a one-party state. The SFC, to their credit, 
refused to endorse this proposal, and eventually on 25-Jun-2015
<a href="../dbpub/artlinks.asp?s=10640">nixed it</a>.</p>
<p>HKEX responded to that 
by proposing a "Third Board", as if they didn't have enough problems already with 
the first two boards. As we <a href="shells.asp">said in March</a>, HKEX is 
rather like a village that refuses to build a proper sewerage system and instead 
digs another cesspit to accommodate a larger population, ignoring the fact that 
eventually nobody wants to live in a disease-ridden village. We'd rather build a 
proper sanitation system. HKEX and others have suggested that the Third Board 
could somehow be a "professionals only" affair, but this pre-supposes that 
professionals want crappy governance standards in their investments. They don't. 
It would inevitably also result in mutual funds (including index funds), 
insurance companies and pension funds holding these stocks, so it would not 
insulate the public.</p>
<p>This behaviour by HKEX, and more robust leadership at the SFC, has probably shifted the Government's path of least 
resistance. Something has to be done. What is now on the table is a politically 
compromised, half-way house to what the Expert Group recommended in 2003. It is 
achievable in the current political environment. It does not 
involve any legislation or transfer of functions or staff from HKEX to the SFC, 
but it does clear the way for a more rapid and meaningful pace of reforms to 
the Listing Rules on corporate governance and disclosure. That reform process should raise HK's future 
competitiveness in the face of competition from the mainland as capital 
controls are gradually lifted.</p>
<p>By falling short of the Expert Group recommendations, the proposals leave 
HKEX in a conflicted role. It will still be the case that the less HKEX spends 
on regulatory staffing, the more profit it makes. The Listing Rules and Takeovers Code are 
administered by separate regulators (HKEX 
	and SFC respectively), yet both relate to corporate behaviour, and they 
	overlap in areas such as reverse takeovers. That will remain the case under 
these proposals. The "dual filing" regime will also still leave some duplication 
of resources.</p>
<p>So long as the framework remains under HKEX, whether with the proposed 
committees or the current LC, it can have no meaningful powers to sanction errant directors for breaching the 
	Listing Rules. The LC merely issues "criticisms" (meaning "you've been bad") or "censures" 
	(meaning "you've been <em>really</em> bad") and tells directors to take some 
classes without, of course, passing any tests at the end. Only statutory backing 
can fix that, and we can't have that for a non-statutory body.</p>
<p>So what is on the table?</p>
<h3>Policy Reform: the LPC</h3>
<p>Crucially under the proposals, the LC will no longer carry responsibility for 
making or weakening the Listing Rules. Instead, the proposals includes a new 
8-member Listing Policy Committee (<strong>LPC</strong>), with equal 
representation from HKEX and the SFC. On the HKEX side, there will be the Chief 
Executive of HKEX, who can continue to argue for its commercial interests, and 
the Chairperson and two Deputy Chairpersons of the LC. On the SFC 
side, the members will be the Chief Executive of the SFC, the Chairperson of the 
Takeovers Panel, the Executive Director of the Corporate Finance Division of the 
SFC and a senior director of that division. Crucially, at least one of the 
members from the LC must be an "investor" representative, which 
provides hope that in the event of disputes, decisions will swing 5:3 in favour 
of investors.</p>
<p>Under the current
<a href="http://en-rules.hkex.com.hk/net_file_store/new_rulebooks/h/k/HKEX4476_1977_VER10.pdf" target="_blank">
Listing Rules 2A.21-2A.22</a>, the members of the LC, and its 
Chairperson and Deputy Chairpersons, are chosen by a 50:50 Listing Nominating 
Committee (<strong>LNC</strong>) comprising 3 non-executive directors of HKEX 
and, from the SFC, its non-executive Chairman and two Executive Directors.</p>
<p>The LPC, going forward, would be held accountable by the investing public 
(including Webb-site) for getting meaningful reforms to the Listing Rules back 
onto the agenda. Any proposed Listing Rule changes emanating from the LPC will 
still be subject to market consultation and to approval by the board of the SFC, 
the majority of which is non-executive and all of whom are appointed by the 
Government.</p>
<h3>New Listings: the LC and LRC</h3>
<p>Much of the media and opponents' focus since the proposals were announced 
has been on the listing application process rather than ongoing regulation of 
listed companies. This 
is a shame, because in any given year, ongoing corporate behaviour causes far more damage to investor returns than IPOs do. Once a company is 
listed, it can quickly shed its skin and within two years can become a 
completely different business with different management, duly appointed by new 
controlling shareholders. So trying to bounce&nbsp; entrants at the front door 
of the club really just sends them round the back. What you really need is 
better rules on behaviour within the club.</p>
<p>The other new committee, the Listing Regulatory Committee (<strong>LRC</strong>), 
also a 50:50 arrangement (3 each) between HKEX and SFC, 
would consider any IPO application or a post-IPO matter that has 
"suitability concerns or broader policy implications". This should be a small 
minority of cases, as the "large majority" will be dealt with under the existing 
structure, although there is certainly scope for improvement in the way that is 
done. Currently GEM prospectuses are dealt with by the Listing Department. We 
think that should be the case for the Main Board too, with only appeals heard by 
the LC. This comment pre-supposes that HKEX is spending enough on staff, individually 
and collectively, to hire and retain enough experience to handle this rather 
than lose them to investment banks as soon as they become competent to argue 
with their former colleagues.</p>
<p class="regbox">Note: paragraphs 89-90 of the paper state that the Listing Department of HKEX will 
decide which cases to refer to the LRC. We submit that that should not be an 
exclusive right; the SFC must also be responsible for referring problematic cases to the LRC when it 
sees them under the "dual filing" system. If the SFC simply abdicates 
responsibility for spotting problems and leaves it to the Listing Department of 
HKEX to decide which cases are LRC cases, then the conflict of interests, the 
fact that staff are hired and paid by HKEX, will deter the staff of the Listing 
Department from making such referrals.</p>
<p>Opponents of the proposals have raised concerns that the LRC will result in 
what they call a "regulator-based" regime. This makes no sense, because under 
the "dual filing" system, both HKEX and the SFC are regulators and the SFC already has a veto over new listings, and can 
already direct suspension of dealings in securities under the
	<a href="http://www.hklii.hk/eng/hk/legis/reg/571V/" target="_blank">
	Securities and Futures (Stock Market Listing) Rules</a>, even after HKEX has
<a href="../dbpub/articles.asp?p=53570">allowed trading to resume</a>.</p>
<p>Perhaps 
opponents are more concerned about a separate problem, that HK still has the 
remnants of a "suitability" based system in which committees (whether the LC or 
LRC) are supposed to decide whether a company merits a listing. So one area of 
the Listing Rules that the new LPC should be reviewing, as a matter of urgency, 
is the entry criteria for new listings, basing those 
criteria firmly on disclosure, not merit.</p>
<p>As we have said several times, the Main Board
<a href="profitstest.asp">profit criteria</a> of HK$20m in the last 
year before listing and HK$30m in the last 2 years, are not a measure of merit 
or quality, but are a target for accounting manipulation. We don't delist 
companies just for making a loss, so why do we require them to make a profit 
before listing? Disclosure is more important. If we have 3 years of audited, 
unqualified accounts, preferably under the same auditor, and substantially the 
same management throughout the period as is bringing the company to the market, 
and if all the required disclosures have been made, then investors should be 
allowed to decide for themselves whether to buy the stock. Anything less than 3 
years old frankly should be seeking capital in the private equity/venture 
capital markets, not from the public.</p>
<p>Also, regulators should not get hung up about the fact that small companies 
tend to have concentrated ownership. Just disclose the allotment profile and 
warn investors accordingly. If they choose to gamble on an over-priced stock, 
that is their choice. Even requiring a 10% public offer tranche with 300 
shareholders, as the Main Board does, does not prevent the other 90% of the 
issue being 
placed in a small number of hands, and in practice the 300 (or however many) 
initial shareholders can always be drummed up by brokers with discretionary 
managed accounts. The expenses of conducting a public offer, including printing 
forms and prospectuses, newspaper advertising and appointing a receiving bank to 
handle applications, are not always worthwhile, and the public offer tranche 
should be optional, as it is on the GEM board.</p>
<p>Eliminating the profit criteria, eliminating the public offer 
requirement and introducing mandatory quarterly reporting to the main board 
would remove any reason to have two separate boards in HK, a distinction which 
is often lost on investors anyway.</p>
<h3>Plan B</h3>
<p>If opponents of the proposals keep pushing, then the Government should have 
the courage and foresight to back the SFC and carry out the original Expert 
Group recommendations, which would produce a far better outcome than this 
compromise. Under
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/s25.html" target="_blank">
Section 25(7)</a> of the SFO, HK's Chief Executive may order that the SFC 
resumes the listing function from HKEX if it appears to the Chief Executive to 
be in the public interest to do so. This can be done in an orderly manner, and 
as previously offered in 2003, HKEX can be allowed to charge "admission fees" to 
compensate it for the lost profit on its listing function. Staff and systems can 
be transferred to the SFC.</p>
<p>Failing or pending that, on an individual rules basis, under
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/s23.html" target="_blank">
Sections 23(3) to 23(5)</a> of the SFO, the SFC can, after consulting the Financial 
Secretary, "request" HKEX to make rule changes, and if HKEX fails to do so, then 
the SFC can change the rules itself. So even if the
<a href="http://www.hklii.hk/eng/hk/legis/reg/571AE/" target="_blank">Transfer 
of Functions Order</a> is not revoked, the SFC could simply set up its own 
Listing Panel (or combine it with the Takeovers Panel), take its advice, conduct 
market consultations and then (after consulting the Financial Secretary) direct 
HKEX to amend the Listing Rules.</p>
<p>So yes, there is a workable Plan B, just not what some opponents would wish 
for. Doing nothing is not a viable option, unless you want HK to sink 
further into the mud and be marginalised.</p>
<p><strong>With the reservations expressed herein, Webb-site supports the proposals. 
The proposals are better than the status quo, just not as good as HK deserves. If the proposals 
are adopted, the onus will be on the SFC to make them work and move forward with 
reforms to raise HK's game.</strong></p>
<h3>Have your say</h3>
<p>These proposals are facing a well-organised, powerful opposition. If you are 
an investor who cares about the future of HK's markets,
<a href="https://www.sfc.hk/edistributionWeb/gateway/EN/consultation/comment?refNo=16CP2" target="_blank">
tell the SFC and HKEX</a> why you support the proposals. Hurry, because 
submissions close on <s>19-Sep-2016</s> 
<a href="http://www.sfc.hk/edistributionWeb/gateway/EN/news-and-announcements/news/doc?refNo=16PR90" target="_blank">18-Nov-2016</a> 
(deadline extended).</p>
<p>David M. Webb</p>
<p>Editor, Webb-site.com</p>
<p><em>Disclosure: David M. Webb is a Deputy Chairman of the SFC's Takeovers and 
Mergers Panel and a former elected INED of Hong Kong Exchanges and Clearing 
Limited.</em></p>

<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=140">Financial regulatory structure</a></li>
				
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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