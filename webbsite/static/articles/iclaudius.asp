
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

<script type="text/javascript">document.title="i-Cable Payday";</script>

	<div class="summary">By popular request, we give you our views on i-Cable Communications, the Wharf spin-off which is set to begin trading on Wednesday 24-Nov.</div>

<h2 class="center">i-Cable Payday<br>
<span class="headlinedate">23 November 1999</span></h2>
<p><a href="http://www.i-cable.com/" target="_blank">i-Cable
Communications</a> (<b>i-Cable</b>) belongs to the same group (<b>Wharf</b>)
which owns 100% of <a href="http://www.newtt.com.hk/" target="_blank">New
T&amp;T</a>, one of the four Fixed Telecommunications Network Services (FTNS)
licensed by the Hong Kong government. The others are Hutchison, New World and of
course the former monopoly Hong Kong Telephone, wholly-owned by Cable &amp;
Wireless HKT. In this article, we'll look at the strange decision to keep
converging businesses separate, and take a look at the prospects for i-Cable's
business, regulatory environment, competition and technical challenges. </p>

<h3>One network, two companies</h3>

<p>In the era of convergence, voice, data and video signals are all
becoming basically the same thing - bits of data, electronic &quot;1&quot;s and
&quot;0&quot;s that flow down fibre-optic cables. In 1992, Wharf Communications,
the immediate parent of i-Cable, agreed with the MTRC that it could build a
fibre-optic loop around the MTR system which forms the backbone of their
communications systems. Video signals pass along this backbone as digital data
before breaking out at various &quot;nodes&quot; and eventually being converted
into VHF analogue channels for the &quot;last mile&quot; to your home. Likewise,
New T&amp;T digital voice and data traffic follows a similar route, and also
shares ducts in the streets with the cable TV system. </p>

<p>The agreement with the MTRC was supplemented by a 1998 agreement
with the MTRC for network capacity expansion. Basically, cable TV channels and
New T&amp;T traffic are all carried around the MTR system in digital form, often
sharing the same fibre sitting in the same ducts. </p>

<p>Until now, this network has been shared by New T&amp;T and
i-Cable. Formally speaking, i-Cable was leasing &quot;certain of these network
assets&quot; to New T&amp;T, and in turn, some of this leased capacity was not
being utilised and was leased back to i-Cable. Bear in mind that both companies
were wholly-owned by Wharf so it did not really matter what happened between
them - it all disappears on consolidation. </p>

<p>New T&amp;T is not being included in the i-Cable flotation, so
for the purposes of the flotation, the shared assets have been divided up
between the two businesses. On 30-Sep-99, i-Cable transferred the &quot;<i>portion
of the leased assets that had been directly used by New T&amp;T</i>&quot; to
that company and retained the portion that were previously leased back and used
by Cable TV. Now that expression might make you think that these assets are separately
identifiable. Not so. The prospectus, if you dig deep enough, tells you just how
arbitrary this is: </p>

<blockquote>

<p>&quot;The Transferred Assets include a portion of certain
assets, such as cable ducts, which are shared by [i-Cable] and New T&amp;T. The
identification of those assets attributable to the Group and New T&amp;T's
businesses has been estimated by management... based on current and planned
usage by each party. These ratios have varied from time to time... and are
subject to a high degree of judgment and estimation.&quot; </p>

</blockquote>

<p>In other words, it is like trying to separate the amount of
runway used by different airlines at the airport. The phrase &quot;such as cable
ducts&quot; might sound innocuous, but it in fact goes deeper than that. They
are sharing some of the same cable, and it has been necessary to set up a
complicated &quot;Duct and Cable Sharing Agreement&quot; which will persist as a
connected transaction between i-Cable and Wharf. This highlights the fact that
the businesses are convergent in their infrastructure. Under the agreement,
i-Cable will be responsible for all the maintenance work and will make a charge
to New T&amp;T based on its deemed share of the network. </p>

<h3>Why no telephony?</h3>

<p>The current Cable TV system has been operational in Hong Kong
since 1993. Years earlier, cable companies in the UK were finding that one of
the key applications of the cable network was cable telephony. Even in the days
of analogue signals on the cable lines, that made sense. The bandwidth down a
coaxial TV wire is far greater than that down a telephone wire simply because
the wire is thicker and more shielded from outside interference. So UK customers
were watching cable TV and making phone calls on spare channels at the same
time. </p>

<p>But until now, Cable TV has failed to attempt to exploit this
additional revenue stream. Part of this was due to the slow roll-out of the
&quot;hard-wired&quot; HFC (Hybrid Fibre Co-axial) part of the cable system to
physically connect the end-user with the station. Until this year, the majority
of i-Cable customers have been served by MMDS (Multi-point Microwave
Distribution System) which is one-way and so cannot carry phone calls. It beams
signals from hilltops to rooftops. It would have been more appropriate to call
it &quot;Microwave TV&quot; at the time, but that might have put people off
their microwaved TV dinners. The proportion of customers served by HFC has only
just reached 50%, and that is due to two factors. Firstly, the government has
told them to give back the MMDS frequencies they were using and increase the
extent of the HFC network, and second, you can't do 2-way cable modems by
microwave broadcast. </p>

<p>If i-Cable had moved into telephony&nbsp; earlier, then by now
it would be a major competitor in residential lines to C&amp;WHKT, since it
controls the only other lines into most flats besides the phone line (we'll
ignore, for now, the possibility of transmitting data over the electricity wires
- that's beyond the scope of this piece). i-Cable could have made the business
case for telephony much earlier, and we believe the regulators would have
allowed New T&amp;T to offer that service across the cable lines in the interest
of competition. The FTNS licenses were operational in 1996. Instead, over 90% of
household FTNS service (your basic HK$90 per month of line rental) is still
provided by C&amp;WHKT, principally because they control the wires into your
house. </p>

<p>All this is changing, and i-Cable has now applied for an FTNS
license. This will not only allow voice and fax calls but also the potentially
lucrative cable modem traffic to use the network. </p>

<h3>So why are New T&amp;T and i-Cable being separated?</h3>

<p>All of this begs the question, why was New T&amp;T excluded from
the flotation of i-Cable? It would have made a lot of sense to bundle them
together and avoid all this notional division of cable (splitting hairs, or at
least fibres). Perhaps Wharf has plans to sell equity in New T&amp;T by way of a
separate joint venture. When i-Cable gets its own FTNS license, it will be in
competition with New T&amp;T. The prospectus attempts to play this down by
saying: </p>

<blockquote>

<p>&quot;Accordingly, New T&amp;T may become a potential competitor
of [i-Cable] in the market for the provision of voice services. [i-Cable's]
focus will be residential subscribers who will be connected by its HFC network.
In contrast, New T&amp;T's focus is mainly on the commercial segment.&quot; </p>

</blockquote>

<p>Er, just a minute - aren't we forgetting about <a href="http://www.newtt.com.hk/idd/idd.html" target="_blank">IDD
007</a>, New T&amp;T's flagship IDD service? That has always been pitched very
much to residential customers and generates far more revenue per customer than
simple line rental to households would make. At the end of 1998, New T&amp;T had
registered over 383,000 IDD customers. </p>

<p>It also seems likely that i-Cable, in serving its new telephony
customers, will end up pooling its bulk IDD needs with New T&amp;T rather than
buying the capacity separately. That's another reason to have kept them
together. From 1-Jan-2000, C&amp;WHKT loses its monopoly over external
facilities (i.e. the undersea cable and satellite links into HK) and companies
will be free to make their own arrangements. </p>

<p>It was even envisaged in earlier statements that New T&amp;T and
i-Cable (then known as Wharf Cable) would jointly work on cable modems and cable
telephony. Witness this statement from the 1997 annual report dated 8-Apr-98: </p>

<blockquote>

<p>&quot;Wharf Cable is also investigating the potential of cable
modem and cable telephony technologies. The former offers high speed access to
the internet and is being successfully rolled out in other markets. The latter
is a <u>joint project with New T&amp;T</u> to exploit the untapped potential of
the fibre optic network, which will add significant value to Wharf's
investment.&quot; </p>

</blockquote>

<p>Clearly Wharf must have some reason for leaving New T&amp;T out
of the float, and probably a financial reason that overcame the practical logic
of keeping the two communications businesses together. </p>

<h3>Regulatory outlook</h3>

<p>The regulatory outlook for i-Cable is cloudy. Unlike the USA,
where the battle continues, <a href="http://www.ofta.gov.hk/" target="_blank">OFTA</a>
(the regulator) has already decided that i-Cable should open its HFC network to
competing telecoms and pay-TV service providers. The terms of interconnection
have to be negotiated but can ultimately be determined by OFTA. </p>

<p>OFTA will probably be keen to avoid a repeat of the situation in
which they find C&amp;W HKT's system (used for broadband internet and
video-on-demand). In that case, although the network is open to outside traffic,
the interconnection charge was set higher than the price which is charged to
retail customers by C&amp;W HKT, making it impossible for other ISPs to compete
over that network. </p>

<p>Secondly, most people in Hong Kong live in blocks of flats which
share a co-axial cable system running up the inside of the building. Cable TV
signals are received either by the HFC network or via a microwave dish on the
roof. To this are added broadcast terrestrial TV (from ATV and TVB) and often
satellite from Star TV. In fact, i-Cable owns a company called Rediffusion
Satellite Services, which handles about half of all rooftop dishes. They had a
field day after Typhoon York knocked a lot of them out in October. </p>

<p>The government now requires that the in-building co-axial system
be opened up to competing pay-TV and telecoms providers. For example, the new
wireless FTNS licensees (when the are announced) will be allowed to share the
same coaxial route to the living room from the roof. They will use it to give
you phone lines and broadband internet. </p>

<p>So, faced with the end of its pay TV monopoly and a competitive
broadband market which it has yet to enter, the prospects for i-Cable are not
too bright. </p>

<h3>Digital Cable - around the corner</h3>

<p>Something which is not discussed in the prospectus is the coming
era (and cost) of digital cable TV. Although the cable signals currently
traverse fibre optics in digital form, they are transmitted up the spine of your
building as analogue VHF signals. That copper co-axial cable can only handle a
certain number of channels. Think of it as a highway with 31 lanes currently
allocated to cable TV. That places a practical limit on the number of channels
(30 plus one for signals) that i-Cable can give you without upgrading its
system. </p>

<p>The next step is an expensive upgrade to &quot;digital
cable&quot; in which multiple channels (typically 6-10) can be squeezed into the
space previously occupied by one channel through a technique known as
&quot;digital compression&quot;. That same technique allows you to fit 74
minutes of video onto a VCD. To do this, the equipment at the fibre node and all
the set-top boxes will have to be upgraded and the old ones scrapped. The
process is already underway in the USA, where they also have digital satellite.
Doing this will step up the number of cable channels from 30 to perhaps 200. It
allows the station to offer &quot;near video on demand&quot; where the same
movie shows on 10 channels at 10-minute intervals, or alternatively each tennis
court at Wimbledon could have its own dedicated channel. In a Grand Prix, you
could choose which car to sit in from the driver's point of view. </p>

<p>This may sound futuristic but i-Cable will have to make that
investment to keep up with competition from other pay-TV providers. And a
further threat is that broadband internet, when it reaches speeds of 2Mbps or
more, can be used to transmit VCD-quality video, so anyone who provides you
broadband internet access will ultimately be able to serve you video on demand.
That VOD potential capability will be almost impossible to regulate out, and it
means that the distinction between cable pay-TV and TV across the internet will
rapidly fade. </p>

<h3>A good deal for Wharf</h3>

<p>With all these challenges ahead, Wharf has capitalised on the
internet fever and the rich valuations on Nasdaq by floating off enough of
i-Cable to repay a large chunk of its construction cost to date. They will also
have to cut their holding further to meet an undertaking to increase the public
float from 19% to 25% within 2 years. That means either selling shares or
issuing new ones. </p>

<p>Profits will be a long time coming and competition will be
tough. i-Cable has relatively little in the way of reusable copyright material -
it is just one of many coming &quot;fat pipes&quot; for data. That's a commodity
business which will have low margins. As consumers and publishers, we look
forward to the vast internet bandwidth that i-Cable and its new competitors
should be able to provide us. As investors, we'd rather be owning copyright
content than the commoditised means of transmitting it.&nbsp; </p>

<h3>And that name...</h3>

<p>Kind of clunky, isn't it? We did a <a href="http://www.networksolutions.com/cgi-bin/whois/whois/?STRING=i-cable.com" target="_blank">&quot;who-is&quot;
check on i-Cable.com</a>, and&nbsp; found that the registered owner of that
domain is still a Dutch outfit called &quot;Internet Cable Company&quot;
although i-Cable seems to be using it. The administrative contact for the site
is listed as Billy Tam, who is part of the <a href="http://www.dotcompacific.com/people/home.html" target="_blank">team
of people</a> which has already left i-Cable to form a new startup called <a href="http://www.dotcompacific.com/" target="_blank">DotComPacific.com</a>.
It would have been nice to float something which was actually the registrant of
its domain. </p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9354">i-CABLE Communications Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=342">Wharf (Holdings) Limited (The)</a></li>
				
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