
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

<script type="text/javascript">document.title="Submission to the Legislative Council Committee on Rail Merger Bill";</script>

	<div class="summary">In response to an invitation from the Legislative Council Bills Committee, Webb-site.com editor David Webb urges the Government to stop wasting scarce legislative resources and rethink the rail merger proposal and its transport policy in general. If the proposal is not amended, we will lead a campaign for 300,000 minority shareholders to protect value by voting it down.</div>

<h2 class="center">Submission to the Legislative Council Committee on Rail Merger Bill<br>
<span class="headlinedate">25 September 2006</span></h2>
<p>Honourable Members, you are tasked with studying the Rail Merger Bill, 
introduced by the HKSAR Government in the context of a proposal to unite the 
operations (but not ownership) of the two rail networks of Hong Kong, the Mass 
Transit Railway owned and operated by <a target="_blank" href="http://www.mtr.com.hk">MTR Corporation Ltd</a> (<b>MTRC</b>, 
0066) and the rail system owned and currently operated by <a target="_blank" href="http://www.kcrc.com">Kowloon-Canton Railway Corporation</a> 
(a statutory corporation wholly-owned by HKSARG).</p>
<p>I will not spend any time on the specific clauses of the Bill, but focus on 
the proposal from the crucial perspective of over 300,000 minority shareholders 
of MTRC, both institutional and retail, of which I am one, and also on the 
broader issue of the Government's transport policy and whether it is in the best 
interests of Hong Kong.</p>
<p>While a merger on the right terms would make commercial sense for MTRC, if 
the terms of the proposal are not substantially amended then I will lead a 
campaign urging my fellow minority shareholders to vote it down, because it is 
value-destroying. In short, this would derail the deal. I believe the HKSARG is 
wasting scarce legislative time by asking you to consider a Bill for a 
transaction which will be unacceptable to minority shareholders. I refer you to
<a href="http://www.webb-site.com">Webb-site.com</a> for details of previous 
proposals by listed companies which I have successfully opposed to protect 
shareholder value.</p>
<p>At 
this stage, MTRC and Government have
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060411/LTN20060411176.doc">
entered</a> into a non-binding and confidential Memorandum of Understanding (<b>MoU</b>), so 
there is still time for them to amend the deal before they sign definitive 
agreements and put it to a vote.</p>
<p>There are 2 main reasons why independent shareholders are likely to vote 
against, and why I will recommend that they do so unless the deal is amended:</p>
<ul>
	<li>MTRC would have to give up fare autonomy on most of its merged network 
	and be bound by an &quot;inflation minus X&quot; formula, without receiving any 
	payment for surrendering that autonomy; and</li>
	<li>MTRC would have to pay KCRC an ever-increasing percentage of the revenue from 
	KCR assets, because thresholds in the formula for revenue-sharing will <u>not</u> 
	be adjusted for inflation in the next 50 years.</li>
</ul>
<p>In essence, the deal removes revenue upside from a potential market-based 
reform of transport policy and ensures a reducing profit margin, at a speed 
which depends on the future rate of inflation. As I will explain, the flaws 
result from the Government's socialist, subsidised, public transport policy which means that 
there simply isn't enough revenue to go around. If that is the long-term 
transport plan, then the Government should just admit it and buy out MTRC 
minority shareholders, rather than asking the company to give up its free-market 
potential.</p>
<p>Now let's deal with these issues in detail...</p>
<h3>The revenue-sharing formula</h3>
<p>The MoU provides that in return for the right to use existing KCR rail and 
rail-related assets, the MTR would pay, for the next 50 years, a share of 
revenue to KCRC as follows:</p>
<ol>
	<li>A flat payment of HK$750m per year, equivalent to 30% of the first 
	$2.5bn of revenue.</li>
	<li>10% of any revenue from $2.5bn to $5.0bn</li>
	<li>15% of any revenue from $5.0bn to $7.5bn</li>
	<li>35% of any revenue above $7.5bn</li>
</ol>
<p>The percentage payments would begin in year 4. Now based on revenue of $5,236m in 2005, as quoted in the MTRC
<a target="_blank" href="http://www.mtr.com.hk/eng/whatsnew/merger/Investor_Presentation.pdf">
presentation</a>, the formula would result in a present payment of $1,035m, or 19.8% of the 
revenue. The catch, however, is that the thresholds continue unchanged until the 
end of a 50-year post-merger franchise, and inflation 
over time will push up the nominal revenue figure so that more and more 
revenue appears in the upper 35% band.</p>
<p>Taking a medium-case scenario 
of inflation of 5% per year for the next 50 years, which is in line with the 
current long-bond yield, the revenues would be $22.6bn 30 years from now, and 
$60.0bn by year 50. That's before allowing for any real revenue growth from the KCR 
assets under construction, namely the Kowloon Southern Link (<b>KSL</b>) and the 
Lok Ma Chau (<b>LMC</b>) Spur Link. They just make the problem worse, because 
they will push revenue into the 35% band sooner. And inflation, of course, could 
be a lot worse than 5%.</p>
<p>The table below shows you the range of nominal revenues depending on the rate 
of inflation:</p>
<img class="center" alt="" src="../images/mtrkcr1.gif">
<p>and as a consequence, the payments to KCRC, owned by Government, would be as 
follows:</p>
<img class="center" alt="" src="../images/mtrkcr2.gif">
<p>which means that the revenue share payable to KCRC is as follows:</p>
<img class="center" alt="" src="../images/mtrkcr3.gif">
<p>Notice how the percentage share accelerates after year 10? That's when 
revenue has broken through the $7.5bn boundary. In fact, with 5% inflation they get there after 8 
years (around 2014), and everything above it get's charged at 35%. Oh, and we almost forgot, 
MTRC also has to pay HK$4.25bn up front.</p>
<p>As you can see from the tables, the future revenue sharing percentage, and 
hence the profit available to MTRC, is heavily dependent on the inflation 
rate. When I asked the MTRC board at the 2006 AGM what inflation assumption, if any, 
they had made in evaluating this deal, the CFO refused to say, other than &quot;a 
range&quot;, and then he went off 
on an irrelevant tangent about how there would be an &quot;independent board committee&quot; comprised 
of &quot;independent directors&quot;, all of whom, of course, are elected by the 
Government, which is MTRC's majority shareholder and also owns KCRC.</p>
<p>The original adviser to the HKSARG on the Rail Merger was N M Rothschild &amp; 
Sons (Hong Kong) Ltd (<b>Rothschild</b>). They issued a report to the HKSARG on 
12-Aug-03. An
<a target="_blank" href="http://www.legco.gov.hk/yr03-04/english/panels/tp/papers/tp0227cb1-1494-1e.pdf">
abridged version</a> of this was provided to the Legislative Council's Panel on 
Transport on 8-Apr-04, in which Rothschild stated:</p>
<blockquote>
	<p>&quot;a full merger between KCRC and MTRCL is most likely to achieve... the 
	greatest degree of benefit for shareholders...&quot;</p>
</blockquote>
<p>The HKSARG has in essence rejected that advice by pursuing an operating lease 
arrangement between the KCRC and MTRC. I note that Rothschild is no longer 
advising HKSARG and that Citigroup and HSBC are now named as advisers.</p>
<h3>Future capital expenditure</h3>
<p>Did you notice that I said &quot;existing&quot; KCRC assets? That's because all the 
burden of the future maintenance and replacement of those assets, including 
trains, control and signalling equipment, tunnel repairs, and so on, will fall on MTRC. All that MTRC gets is the existing assets &quot;as is&quot;, plus the finished 
KSL and LMC Spur Line, and at the end of the 50-year franchise, the rights to 
all of it will revert to KCRC. This is, in essence, a &quot;repair and replace&quot; lease 
of assets. As the Government explained in a
<a target="_blank" href="http://www.legco.gov.hk/yr05-06/english/panels/tp/papers/fatp0412cb1-1291-1e.pdf">
paper</a> to the 
<a target="_blank" href="http://www.legco.gov.hk/database/english/data_tp/tp-merger-of-mtr-and-kcrc.htm">Legislative Council</a>:</p>
<blockquote>
	<p>&quot;KCRC [will] retain ownership of the assets, capture the upside of KCR 
	railway's performance under a revenue-sharing mechanism and get back a fully 
	operational railway system at the end or upon early termination of the 
	service concession.&quot;</p>
</blockquote>
<p>Sounds great for KCRC, but what does that leave for MTRC then? In early years of the 50-year franchise, the burden 
of capital expenditure on KCR assets may be relatively light, 
as the trains are not so old, but you can be confident that the trains will 
either be worn out or obsolete within a couple of decades. So at the same time 
as revenue sharing will be increasing towards the maximum of 35%, capital 
expenditure will also be increasing, draining resources from MTRC. In effect, long before 2056, when the 
franchise expires, virtually all of the assets apart from the tunnels themselves 
will have been replaced using MTRC's dollar, but those replaced assets will then 
revert to KCRC as a &quot;fully operational railway system&quot; without any payment in 
return.</p>
<h3>Fare autonomy</h3>
<p>A huge selling point in MTRC's
<a target="_blank" href="../codocs/0066_000925ipo.pdf">prospectus</a> from 2000 was:</p>
<blockquote>
	<p>&quot;[MTRC] has autonomy to determine its own fares without any requirement 
	to obtain the approval of Government or any other body.&quot;</p>
</blockquote>
<p>To understand why this is so important, you have to realise that the current 
HK Government pursues a socialist transport policy in which all forms of 
domestic public transport are indirectly subsidised. Franchised buses, for 
example, pay only $50 per seat per year (plus $25 for the driver) in
<a target="_blank" href="http://www.td.gov.hk/public_services/fees_and_charges/index.htm#vehicle">
vehicle tax</a>, and since 1992 have been
<a target="_blank" href="http://www.customs.gov.hk/eng/major_dutiable_freeport_e.html#hyd">
exempt</a> from fuel duty, which means they pay no incremental costs for road 
usage or air pollution. This subsidy alone is worth billions of dollars in 
revenue. As a consequence, bus fares are far lower than they 
would be on a &quot;user pays&quot; basis for the roads (including the land they occupy, 
road construction and maintenance) and air pollution. Hence rail fares have to 
be low to compete with the subsidised buses. There's also no duty on LPG, which 
powers most taxis and an increasing proportion of minibuses, even though LPG 
still creates air pollution and the vehicles still use roads.</p>
<p>The Government even prohibits the registration of private cars which run on 
LPG, because that would allow private motorists to benefit from the hidden 
subsidy to taxis. For the same reason, they prohibit (by high 
emissions standards) the registration of private diesel cars, so that the 
Government can subsidise goods vehicles and private buses, which pay only $1.11 
per litre of ultra-low sulphur diesel compared with $6.06 per litre of unleaded 
petrol. So if you are jealous of motorists in Europe using fuel-efficient modern 
diesel-powered cars, or of Australians in their LPG-powered cars, then you are 
out of luck.</p>
<p>In the face of all this subsidised competition, the only way HK's railways 
can be made financially viable is to subsidise them too, mainly with property 
development rights, which are granted to the rail companies, which then enter 
into joint ventures (on secret terms) with members of the property development 
oligopoly to develop the sites. The land premiums for these sites are discounted 
on the basis that the railway station does not exist, and that allows the rail 
company to capture the uplift in value even though they didn't own the land 
around the station to start with. Most ironically, the value of housing in 
remoter parts of HK is supported by the low cost of getting to work in the urban 
areas on this subsidised transport.</p>
<h3>Property Autonomy</h3>
<p>I pause to note that another aspect of the proposal which removes value from 
MTRC shareholders is that the Government would impose a mechanism by which it 
can control the level of flat production by controlling the rate at which MTRC 
tenders new property developments. This amounts to further intervention in the 
commercial decisions of MTRC, which would be surrendering autonomy to make its 
own decisions in the best interests of all its shareholders, and no payment is 
offered for that surrender.</p>
<p>Indeed this intervention was evident in practice when the MTRC stopped 
tendering projects on 13-Nov-02, the same day as a Government land sales 
moratorium was
<a target="_blank" href="http://www.info.gov.hk/gia/general/200211/13/1113244.htm">
announced</a>. In future, the proposal would legitimise the intervention. It may 
well make commercial sense from time to time for MTRC to slow down or accelerate 
its developments, but that should be a decision for MTRC on its own, not driven 
by Government policy.</p>
<p>I find it ironic that in 2000, when MTRC was floated, the publicity campaign 
for the IPO was based on telling retail investors &quot;<a target="_blank" href="noboss.asp">You're 
the Boss</a>&quot;. Nothing could be further from the truth, but the vote on the rail 
merger is the one occasion on which it will be true.</p>
<h3>The upside of fare autonomy</h3>
<p>A future, wiser government may see the merits of shifting towards a 
market-based user-pays transport policy. For example, they may introduce 
electronic road pricing (for all vehicles), and make buses pay for roads and air pollution 
by charging fuel duty on each litre of fuel they burn. They might also auction 
&quot;landing slots&quot; at urban bus stops to incentivise more efficient routing, 
increasing the use of interchange hubs and reducing urban congestion and 
pollution.</p>
<p>If a future Government pursued a user-pays transport policy, then road 
transport costs and fares would increase, and railways would be able to raise 
fares to a more commercial level while remaining competitive with road 
transport. The taxpayer would also benefit, because the Government would get 
higher revenues from fuel duty and new revenues from road pricing, and would be 
able to withdraw some or all of the property subsidy to the rail companies and 
sell the land directly in the open market at full value. Land (including 
reclamation) which would have been needed for yet more roads could instead be 
used for other purposes. Social security payments for those who are unable to 
afford the fares could be increased, but there is no reason why affluent members 
of society should receive subsidised public transport as they do at present.</p>
<p>So the potential for real increases in fares under a less socialist, more 
market-based, user-pays transport policy offers tremendous potential for MTRC, 
and that's the value of fare autonomy, but they propose to give this up, with 
the exception of the Airport Express railway, cross-border links to the 
mainland, and the cable car to the Lantau Big Buddha - so what, these are 
already closer to user-pays cost anyway.</p>
<p>In the proposed deal, future fare increases would be capped at the rate of 
inflation minus a productivity factor. The rate of inflation would be the 
average of the Composite Consumer Price Index and the Transport Wage Index. The 
productivity factor, which would be excluded for the first 5 years, would start 
at 0.1% per year, and would be reviewed every 5 years.</p>
<p><b>So what you have here is a formula which allows for no real 
(inflation-adjusted) increase in fares, but gives an ever higher proportion of 
revenue to KCRC while saddling MTRC with future capital expenditure. MTRC has 
pitched this to investors as a &quot;Downside protection provided by Variable Annual 
Payment structure&quot;, when in fact this is an &quot;upside-removed, downside on 
inflation&quot; deal.</b></p>
<h3>Government pandering</h3>
<p>There is barely a day goes by without elected legislators from the democratic 
or pro-Beijing camp berating the Government for this or that high fare on buses, 
ferries or trains. It's an easy way to score points with the electorate, many of 
whom live in subsidised housing and have missed out on the benefits of Hong 
Kong's economic growth in recent decades, thanks in part to the way the economy 
is dominated by cartels.</p>
<p>But the fact is, we have some of the lowest fares in the world for any modern 
rail or bus network, subsidised or not. In London, for example, you can't go 
anywhere on the
<a target="_blank" href="http://www.tfl.gov.uk/tfl/fares-tickets/2006/single/tubedlr.shtml">
tube</a> for less than a pound (HK$14.83), even though London Transport received 
GBP651m (HK$9.7bn) in grants in 2002/03. In HK, you can go from
<a target="_blank" href="http://www.mtr.com.hk/jplanner/jplanner/planner_index.php?start=14&destin=28&spot=1">
Chai Wan to Tsuen Wan</a>, a 51 minute journey from the end of one line to the 
far end of another, for HK$11.80, or you can take a bus all the way from
<a target="_blank" href="http://www.citybus.com.hk/eng/RouSer/RouteSearch/busroute_info.asp?route=6+++++&routetype=D&company=5&routenumber=">
Central to Stanley Prison</a> (handy for visiting the relatives) for $7.90.</p>
<p>The Government has attempted to buy legislative approval of the merger with a 
package of rail fare cuts, so that if legislators vote it down, the Government 
will accuse them of voting against fare cuts.&nbsp; For example, in a blatant PR 
ploy, for 1 year after the merger there would be a $2 Sunday fare for the 
elderly. There would also be a 2-year fare freeze. These proposed fare cuts will 
more than eliminate the near-term savings achieved by MTRC from synergies, including 
what they euphemistically call &quot;staff synergy&quot; (job losses) in the management 
layers, leaving shareholders worse off.</p>
<p>I urge Legislators to ignore this Government pandering and to focus on what 
is in the best interests of Hong Kong - a subsidised, socialist transport 
policy, or a more economically efficient market-based transport policy, leading 
to a more efficient allocation of public resources, including land and clean 
air?</p>
<h3>Confidentiality or collusion?</h3>
<p>The MoU is described as &quot;Confidential&quot;. What is it that the Government 
doesn't want us to see, and why won't they publish it? I asked that at the MTRC 
AGM too, and got the usual puff about &quot;commercial sensitivity&quot;. The secrecy with 
which the rail companies conduct their property projects, including the 
financial details of winning tenders, leaves an enduring suspicion of potential 
economic inefficiency or, at worst, collusion. There is no logic in the argument 
that the terms of a winning tender should be secret. Transparency would ensure a 
more level playing field for developers, and probably increase proceeds since it 
would help bidders in future tenders to make more competitive bids.</p>
<p>Transparency would also reduce the risk of multi-parameter bids turning an 
objective single-parameter tender into a subjective beauty parade. For example, 
if one bidder offers to let MTRC keep some retail space and a 30% profit share 
on the residential portion of the project, and another bidder offers a 35% 
profit-share but no retail space, then which bid is better? It depends on your 
view of future prices, and the secrecy ensures that the railway companies don't 
have to justify their choice. In such situations, MTRC and KCRC could just as 
easily be allocating the projects among the developer oligopoly based on an 
&quot;it's your turn now&quot; principle. Share it around and keep them all happy. 
I hope 
that's not the case, but without transparency, we'll never know.</p>
<h3>Where's the profit?</h3>
<p>Now back to the so-called merger, or more accurately, the 50-year lease.</p>
<p>In 2005, KCRC had earnings before interest, tax, depreciation and 
amortisation (EBITDA) of $2,356m, or 43.8% of corresponding revenue. This was 
depressed partly by the opening of West Rail, but it has never been higher than 
55.1%, which it reached in 2002, and was as low as 42.9% in 1995, according to 
the MTRC presentation. Even if we generously assume a gradual recovery to the 
long-term average of 49% EBITDA, when you take off a future revenue share of 
about 30% for KCRC, you are looking at an EBITDA margin of only 19%, out of 
which you have to finance and depreciate future capital expenditure on asset 
replacement (this averaged 14% of KCRC revenues in the last 3 years), leaving <b>
perhaps a low single-digit profit margin if we are lucky</b>. Things may look OK 
in 2006, but it's all downhill like a runaway train from here.</p>
<p>Now you might think that there is some sort of compensation for taking on a 
near profit-less railway, such as more property development rights. However, 
that is not true, because although MTRC will get some developments, they have to 
pay KCRC $4.91bn for the full fair market value of those rights (which KCRC 
received from Government for free in the past), based on a professional 
independent valuation. So there's no free lunch there, no compensation for 
taking on the railway on such poor terms.</p>
<p>Incidentally, KCRC never had the development rights to property on West Rail 
- that has been retained by the Government, so all that MTRC gets on West Rail 
is a low-margin agency agreement for managing those projects, the details of 
which have not been disclosed.</p>
<h3>Conclusion</h3>
<p>Unless the proposed deal is revised to retain fare autonomy and to reduce 
KCRC's revenue share, I intend to recommend independent shareholders to vote 
against the deal when it is put to the vote some time in the next year. Few 
rational investors would be in favour of a scheme which caps revenues, links 
the downside on margins to inflation, and saddles MTRC with all of the future 
capital expenditure but none of the ownership of KCRC rail assets. It would have 
been far more sensible to negotiate a full corporate merger of the two entities, 
preserve the fare autonomy, and sell-down the Government shareholding to reduce 
its interference in the transport sector.</p>
<p>The Government's subsidised transport policy leads to economic inefficiency 
and contradicts Hong Kong's free-market philosophy. It would be in the public 
interest to move towards a market-based approach, fully recovering the cost of 
roads and air pollution and the value of land sold to the railways, and use some 
of the billions in incremental government revenues to increase social welfare 
payments to those who cannot afford essential transport. The higher 
transport-related revenues from fuel duty and road pricing would also be a 
stable source of Government revenues and would be consistent with a neutral 
fiscal policy which does not distort decisions by economic participants.</p>
<p>The Government and Legislators should think hard about whether to pursue a 
market-distorting socialist transport agenda, with heavily subsidised fares for 
all, or whether to pursue a more market-based solution. If &quot;socialism with Hong 
Kong characteristics&quot; is the preferred route, then the Government 
should buy out the minorities in MTRC, run both railways at inflation-capped 
uncommercial fares and have the intellectual honesty to admit that this is not a 
market-based system. It would be totally contrary to Hong Kong's supposedly 
free-market principles, but that is Government's choice to make. However, if 
they pursue the deal on the current terms, then MTRC independent shareholders 
will make that choice for them by voting it down.</p>
<p>I will be pleased to answer any questions you may have on this submission.</p>
<p>David M. Webb</p>
<p>Editor, Webb-site.com<br>
Member, SFC Public Shareholders Group<br>
Member, SFC Takeovers and Mergers Panel and Takeovers Appeal Committee<br>
Elected Independent Non-executive Director, Hong Kong Exchanges and Clearing 
Limited</p>
<p><em>&copy; Webb-site.com, 2006</em></p>
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