
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

<script type="text/javascript">document.title="APES at the WEF - diary of a delegate";</script>

	<div class="summary">So what was it all about? Webb-site.com brings you a delegate's diary of the WEF's Asia-Pacific Economic Summit in Melbourne. We outline some of the issues surrounding globalisation. Next year the summit comes to Hong Kong, where competition regulation should be placed on the agenda.</div>

<h2 class="center">APES at the WEF - diary of a delegate<br>
<span class="headlinedate">17 September 2000</span></h2>
<p><i>Webb-site.com</i> is just back from Melbourne where we
attended the <a href="http://www.weforum.org/" target="_blank">World Economic
Forum's</a> Asia Pacific Economic Summit (or APES, to use its unfortunate
acronym). </p>

<p>The WEF, a not-for-profit non-governmental organisation based in
Geneva, Switzerland, has no official standing in world affairs - unlike say the
United Nations, World Bank or IMF. Nevertheless, through a combination of
skillful marketing and the aggregation of quality content (read people), they
have become a magnet for CEOs and senior government officials. The annual
meeting in Davos is a repeat entry in many a billionaire's and politician's
calendar, and the APES is its regional spin-off. We often think of established
religions as just successful cults, and in that sense the WEF is a successful
conference organiser, run since its inception in 1971 by Professor Klaus Schwab. </p>

<p>At the invitation of the WEF we were staying in the <a href="http://www.crowntowers.com.au/" target="_blank">Crown
Towers Hotel Casino</a>, a temple of hedonistic opulence now controlled by Kerry
Packer after he apparently bought it for a song in one of his famous asset
trades. Had the hotel realised how much attention the event would attract, we
doubt they would have agreed to host it, since they ended up having to shut down
the Casino. </p>

<p>The authorities had clearly been warned to expect large-scale
protests against the global dominance that we were all supposed to be plotting
inside, and a group calling itself <a href="http://www.s11.org/" target="_blank">S11</a>
(after the September 11th start date) had assembled especially for the event.
The police had taken concrete barriers normally used for the Melbourne Grand
Prix and surrounded the huge complex with them, leaving just a few gaps for
access. We had a pleasant Sunday afternoon looking around the clean and
attractive city of <a href="http://www.melbourne.vic.gov.au/" target="_blank">Melbourne</a>
and using its extensive tram network (Hong Kong take note), but spent some time
on the initiative test of finding the gap in the barriers afterwards. </p>

<p>As events kicked off on Monday, the protestors blockaded the
entrances, locking out delegates coming from other hotels. As the organisers
rightly pointed out, this was more a case of protestors preventing free speech
by delegates rather than exercising it themselves. However, the police were
obviously under instruction not to use physical force to remove the protestors.
Delegates toured Melbourne in buses for several hours, striking up vital
business relationships which arise from being in such close quarters and
presumably wishing they hadn't drunk so much coffee at breakfast. </p>

<p>Finally the organisers arranged some boats and attempted a
landing at the hotel from the adjacent Yarra River as they dodged protestors'
dinghies. A few VIPs made it in by helicopter, presumably including Australian <a href="http://www.pm.gov.au/" target="_blank">Prime
Minister</a> John Howard, who delivered a <a href="http://www.pm.gov.au/news/speeches/2000/speech440.htm" target="_blank">speech</a>,
but not before the WEF chief repeated in Mr Howard's presence assurances
received from the authorities that delegates would be unimpeded the next
day.&nbsp; </p>

<p>Mr Howard was a man with a lot on his plate with the Olympics
just around the corner, but his spin-meisters should at least teach him to smile
and enjoy it. Not so much as a smirk crossed his face as he grimly made his way
through the speech. </p>

<h3>Open Gates</h3>

<p>The next day, the police put their visors down and used
necessary force to clear a path for delegates. Bill Gates flew in and told
Australia that it had made slow progress in broadband development (they are just
rolling out ADSL). Telstra's CEO Ziggy Switkowski, also on the panel, declined
to reply, but as if to underline Gates' point, the internet connections provided
at the venue were woefully slow as data trickled down the now-famous IP backbone
from Hong Kong. </p>

<p>We asked Mr Gates about the high prices being paid for 3G mobile
licenses in Europe, which prices seem to imply that the operators will be able
to extract &quot;gatekeeper&quot; revenue for directing users to partner sites
on the internet. That compares with today's model where most internet access
providers (possibly excluding AOL) make very little money that way, since the
net is open and the browser goes anywhere. Stalling for thought, Mr Gates
described it as an &quot;insightful question&quot; before voicing the hope that
in each market there would be at least one &quot;open&quot; competitor to push
the others along. </p>

<p>We suspect the answer in the future will depend on the interface
through which a 3G connection is used. If all we have is thumbwheels, small
screens and remote controls, then we are likely to navigate through the menu we
are given by default, and access providers will extract commissions for menu
positioning. On the other hand, if the wireless graphic tablet enters the
mainstream as we expect, then the ease of selecting your own destination on the
web will mean your access provider gets only a utility-type connection fee. That
makes 3G license prices look very expensive. </p>

<p>On Tuesday evening, we were treated to a full-scale motorcade of
15 buses with police motorcycle outriders, the streets were cleared and we
headed for a very enjoyable gala dinner at the Grand Hyatt, sampling the best of
food, wine and arts that Australia has to offer. </p>

<h3>Farm Subsidies</h3>

<p>Several speakers at the conference raised what is a valid
concern in Australia and elsewhere, that of continued large-scale agricultural
subsidies and import barriers to foreign farm produce in Europe and the US.
These conditions distort free trade and lead to unsound agricultural practices
in other countries. As the world becomes more integrated, governments are going
to have to recognise that subsidising and protecting farmers is no longer
appropriate. </p>

<p>In the past, there has been a notion that economic efficiency
should take second place to &quot;strategic interests&quot; such as food supply,
since a war might otherwise put the populus at risk of starvation. Memories of
food rationing during World War II perhaps emphasised this point. However in the
oil age, recent protests over fuel prices in Europe have demonstrated that any
net oil-importing country is no longer economically self-sufficient as they
might have been in the 19th century. Shut down the oil supply and the country
rapidly shuts down with it. Lacking energy-independence means there is no longer
any point in trying for food-independence. </p>

<h3>Globalisation</h3>

<p>Contrary to popular belief, not all delegates at the WEF were
tycoons or politicians. Several non-profit entities like <i>Webb-site.com</i> were there to advance
other agendas, in our case to speak on improving corporate and economic
governance of the region. </p>

<p>In a lively session on Tuesday on <a href="http://www.weforum.org/conferencesum.nsf/d85180ea314fa18cc12569580000f8b7/a7891330ae331bedc1256958002ceff2!OpenDocument" target="_blank">Globalisation</a>,
Sharan Burrow, President of the <a href="http://www.actu.asn.au/" target="_blank">Australian
Council of Trade Unions</a> recited how the percentage of Australians in the
poverty bracket had increased, and how many manufacturing jobs had been lost in
the last several years. Of course, the Australian definition of poverty probably
includes drinkable tap water, electricity, education for children, basic
healthcare and social security handouts. On the same panel, <a href="http://www.vshiva.org/" target="_blank">Vandana
Shiva</a>, founder of the Research Foundation for Science, Technology and
Ecology in India, was able to speak about poverty Indian-style, where clean
running water, literacy and electricity are still out of reach for so many
people who struggle with agricultural subsistence. </p>

<p>As we listened to this juxtaposition of complaints we couldn't
help thinking how neatly this encapsulated the globalisation issue. Rich
developed nations face friction in upgrading their work force and surrendering
the labour-intensive jobs to lower paid people in poorer nations. Surely it is
not &quot;socially irresponsible&quot; for a multinational corporation to create
new adult jobs in India or China at the expense of jobs in Australia or the USA,
thereby expanding the economy and raising the living standards of developing
nations. The workers freed up by such movement can then retrain for more
economically productive output.&nbsp; </p>

<p>At the same time, many delegates recognised that the smokestack
industries of the world cannot be allowed to embark on &quot;environmental
arbitrage&quot; where they seek out the least-protected nations to pollute.
Agreement and enforcement on minimum environmental protection levels is needed. </p>

<p>If you want a greater discussion on the issues behind
Globalisation, we recommend John Gray's <i><a href="../books/default.asp#falsedawn" target="_blank">False
Dawn - the Delusions of Global Capitalism</a></i> and George Soros' <i><a href="../books/default.asp#crisis" target="_blank">The
Crisis of Global Capitalism</a></i>.&nbsp; </p>

<h3>Financial Markets</h3>

<p>A Wednesday afternoon session focused on the effect of the
internet on financial markets. It is quite clear that the net has made investors
more able to access information on both their local and overseas markets. In
addition, internet dealing, still in its infancy in Asia, will make it very
feasible for investors to deal across borders. This brings down the barriers to
competition between monopolistic national exchanges, and gives rise to what we
call &quot;competitive decay&quot; of investor protection frameworks as
exchanges try to attract listings to boost their volumes and hence their
revenues.</p>

<p>By way of example, Hong Kong's GEM managers cited the
competitive threat of Nasdaq in attempting to justify waiving several of its new
listing rules earlier this year.</p>

<p><a href="http://www.hkex.com.hk/" target="_blank">HKEx</a> Chief
Executive Kwong Ki Chi attended the session just long enough to deliver an
unremarkable speech but did not stick around for the Q&amp;A, which is a shame.
And no, his speech is not on their web site. As far as we know, nobody from the
HK <a href="http://www.sfc.hk/" target="_blank">Securities and Futures
Commission</a> attended the forum.</p>

<p><i>Webb-site.com</i> asked the panel whether the time was ripe
for a global or regional effort of Securities Commissions to standardise the
listing and disclosure regimes in each country, in a similar way that the
European Union has a directive on the subject, before competitive decay between
markets gets out of control.</p>

<p>While consensus seemed to be generally in favour of this, Ali
Abdul Kadir, Chairman of the <a href="http://www.sc.com.my/" target="_blank">Malaysian
Securities Commission</a>, did not think it would happen soon. Fellow panelist
Jack Wadsworth, regional Chairman of Morgan Stanley, reminded the audience that
the legal protections offered in the United States and through the litigative
environment there, were not available in most Asian jurisdictions, and so
regulators needed to decide what will stand in their place.</p>

<p>This is a point we have made before on <i>Webb-site.com</i> -
one cannot compare Nasdaq and GEM's listing rules without comparing the
securities legal framework which backs them up (or doesn't, as the case may be).</p>

<h3>Hong Kong and Competition</h3>
<p>Next year, the WEF East Asia summit
will be in Hong Kong.</p>
<p>At the Hong Kong Networking Lunch, we took the opportunity to
ask Chau Tak Hay, our Secretary for Commerce and Industry, whether Hong Kong
would follow first-world practice and establish a centralised competition
regulator. The US has the <a href="http://www.usdoj.gov/" target="_blank">Department
of Justice</a>, the European Union has a region-wide <a href="http://europa.eu.int/comm/dgs/competition/index_en.htm" target="_blank">Directorate-General
of Competition</a>, the UK has the <a href="http://www.oft.gov.uk/" target="_blank">Office
of Fair Trading</a>, Australia has the <a href="http://www.accc.gov.au/" target="_blank">Competition
and Consumer Commission</a>, and Hong Kong has... well, a system of
well-entrenched cartels with sporadic outbreaks of competition in some sectors.</p>
<p>Notably, the most competitive sector of HK's economy recently
has been the telecommunications sector, where OFTA has been busy breaking down
barriers. This was cited by Mr Chau in defence of Government policy that
&quot;we don't need anti-trust laws or general competition law&quot;. But the
very success of telecoms deregulation underlines the lack of progress in other
sectors where competition regulation is weak or non-existent.</p>
<p>In another session, we asked Roberto Romulo, a member of the <a href="http://www.abaconline.org/" target="_blank">APEC
Business Advisory Council</a>, whether there was any prospect of APEC
harmonising competition laws across the Asia region, thereby helping to level
the cross-border playing field. &quot;Not in my lifetime&quot; came the 61-year-old's less than optimistic reply.&nbsp;</p>
<p>What makes Hong Kong so different that it could not benefit from
a competition authority? It is well-accepted now that free markets without
strong competition regulation lead not to efficient markets but to monopolistic
behaviour. As the WEF turns its attention towards Hong Kong, producers of
reports on economic competitiveness such as the WEF and the <a href="http://www.heritage.org/" target="_blank"> Heritage Foundation</a>
would do well to look beyond the &quot;positive non-interventionism&quot;
Government rhetoric and focus on the real substance of the cozy
Government-business partnership which perpetuates so many vested interests here.</p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=21194">World Economic Forum</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=95">Agricultural subsidies</a></li>
				
				<li><a href="/dbpub/subject.asp?c=115">Competition</a></li>
				
				<li><a href="/dbpub/subject.asp?c=193">Telecoms</a></li>
				
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