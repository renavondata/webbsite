
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

<script type="text/javascript">document.title="Cyber Villas by the Sea";</script>

	<div class="summary">A critical analysis of the Government's proposed joint venture property development with Pacific Century Group. The author finds the project space is 75% residential.</div>

<h2 class="center">Cyber Villas by the Sea<br>
<span class="headlinedate">22 March 1999</span></h2>
<p>A new word has entered the spell-checkers of Hong Kong's word processors this month:
&quot;Cyberport&quot;. This word has been conjured up to describe a property development
to take place on 26 hectares of prime, sea-front land in Pokfulam, Hong Kong Island. The
development was announced by Financial Secretary Sir Donald Tsang in his budget speech on
3rd March. In the days since, the government has been scrambling to justify the project
and its decision not to allow a formal tender process for the development of the site, but
to proceed into &quot;detailed discussions with the company from whom the idea
originates&quot;; as Sir Donald coyly described <a href="http://www.pacificcentury-grp.com/" target="_blank">Pacific Century Group</a> in his
speech.</p>

<h3>What is PCG?</h3>

<p>PCG is a private company controlled by Richard Li, younger son of Li Ka Shing, who is a
long-time friend of Hong Kong Chief Executive Tung Chee Hwa. Through Orient Overseas
International, the Hong Kong-listed shipping group, Tung's family has a joint venture with
Li's <a href="http://www.ckh.com.hk/" target="_blank">Cheung Kong</a> group, developing <a target="_blank" href="http://www.ckh.com.hk/prop_dev/china/china1.html">Oriental Plaza</a>,
the largest property development underway in the centre of Beijing, almost twice the size
of the Cyberport. Until now, PCG&nbsp; was perhaps more famous for paying top dollar for a
Japanese National Railways property site in the centre of Tokyo than for anything it has
done in technology. The younger Li later brought Cheung Kong's 49% associate <a href="http://www.hutchison-whampoa.com/" target="_blank">Hutchison Whampoa</a> group in to
finance 45% of the deal. Hutchison paid PCG a 3% &quot;origination fee&quot; on top of its
share of the land cost. The development will be known as <a target="_blank" href="http://www.pacificcentury-grp.com/pressrelease/tokyo23july98.htm">Pacific Century
Place</a>.</p>

<p>In an earlier deal, PCG formed (in Nov-94) and then quickly sold to Hutchison (in 1995)
a business&nbsp; called Pacific Century Corporate Access, which was a reseller of
satellite space for international leased circuits for companies in the region.</p>

<h3>What is the Cyberport?</h3>

<p>Details of the <a target="_blank" href="http://www.info.gov.hk/itbb/cyberport/">Cyberport</a>
project have been slowly emerging. Here's what we've been told so far:</p>

<ul>
  <li><p style="padding-bottom: 6px">The project was described in the budget on 3-Mar-99 as
    being a <i>&quot;$13bn development, mostly from private investment&quot;.</i></p>
  </li>
  <li><p style="padding-bottom: 6px">A
  <a target="_blank" href="http://www.info.gov.hk/gia/general/199903/03/0303169.htm">statement</a> from
    the Information Technology and Broadcasting Bureau (ITBB) the same day said 
  <i>&quot;the
    Government will provide the site as its equity contribution while PCG will make a capital
    contribution of about $7 billion to the whole development&quot;. </i>From this we infer that
    the government values the land at HK$6bn and the equity contribution is as follows:</p>
  </li>
</ul>
<table class="numtable center">
  <tr>
    <th></th>
    <th>$bn</th>
    <th>%</th>
  </tr>
  <tr>
    <td>Government's contribution of Land</td>
    <td>6</td>
    <td>46%</td>
  </tr>
  <tr>
    <td>PCG's contribution of capital</td>
    <td>7</td>
    <td>54%</td>
  </tr>
  <tr>
    <td>Total equity</td>
    <td>13</td>
    <td>100%</td>
  </tr>
</table>

<ul>
  <li><p style="padding-bottom: 6px">The statement said <i>&quot;two-thirds of the site will be
    for Cyberport development and the rest will be high class residential development.&quot;</i>
    It went on <i>&quot;before any surplus from the sale of the residential development is
    shared, $200 million will be put into a Development Fund for the maintenance and
    refurbishment of the Cyberport&quot;</i></p>
  </li>
  <li><p style="padding-bottom: 4px">According to an
  <a target="_blank" href="http://www.info.gov.hk/gia/general/199903/16/0316213.htm">ITBB statement</a>
    on 16-Mar-99, the plot ratio of the residential development, which is now being carefully
    described as <i>&quot;ancillary&quot;</i>, will be <i>&quot;between 3 to 4&quot;</i>, and the
    <i>&quot;current figure&quot;</i> is 3.8.</p>
  </li>
  <li><p style="margin-bottom: 2px">The statement continued: <i>&quot;PCG... will design,
    construct and fund the development. The Government will be the sole owner of the Cyberport
    (including the land, the buildings and the facilities thereon) and will receive all the
    rental from the Cyberport.&quot;</i></p>
  </li>
</ul>

<p>One third of the land area is 8.7 hectares, or about 933,000 square feet. At a plot
ratio of 3.8 (which is not final and could go higher), this would yield about 3.54 million
sq. ft. of gross floor area.</p>

<p>However, a careful look at the Phasing Plan shown at a <a href="http://www.info.gov.hk/itbb/cyberport/sem-sht1.ppt" target="_blank">Government
presentation</a> on 17th March discloses a more interesting breakdown of the development
plan. By adding up the figures for the various blocks on the plan, we have the following
breakdown of floor area:</p>
<div align="center"><center>

<table class="numtable center">
  <tr>
    <td></td>
    <td><i>Sq. m.</i></td>
    <td><i>' 000 Sq. ft.</i></td>
    <td>%</td>
  </tr>
  <tr>
    <td>Houses, apartments and shared facilities</td>
    <td>404,000 </td>
    <td>4,349 </td>
    <td><strong>75.2%</strong></td>
  </tr>
  <tr>
    <td>Serviced apartments</td>
    <td>4,500 </td>
    <td>48 </td>
    <td>0.8%</td>
  </tr>
  <tr>
    <td>Hotel</td>
    <td>7,500 </td>
    <td>81 </td>
    <td>1.4%</td>
  </tr>
  <tr>
    <td>Retail</td>
    <td>29,000 </td>
    <td>312 </td>
    <td>5.4%</td>
  </tr>
  <tr>
    <td>Offices</td>
    <td>92,000 </td>
    <td>990 </td>
    <td><strong>17.1%</strong></td>
  </tr>
  <tr>
    <td>Total</td>
    <td>537,000 </td>
    <td>5,780 </td>
    <td>100.0%</td>
  </tr>
</table>
</center></div>

<p>Yes, over <strong>75%</strong> of the developed area is residential. The office space
represents just <strong>17%</strong> of the total. Perhaps a more appropriate name for
this project would be &quot;<strong>Cyber Villas</strong>&quot;. The residential portion
of some 4.35m sq. ft. is substantially more than indicated in the land-use figure - in
short, the figures are inconsistent.</p>

<p>The purported &quot;shared facilities&quot; such as &quot;demonstration
facilities&quot;, a &quot;media laboratory&quot;, and &quot;exhibition and trade show
facilities&quot; make up part of a small 18,000 sq. m. block which includes houses and
apartments, so even if half of this block is shared facilities, it would only account for
1.7% of the development. Its about as important as a shared Laundromat in a housing
estate. We will ignore the hotel and serviced apartments on the generous assumption that
they will be retained by the government for free as part of the Cyberport.</p>

<h3>What's it worth?</h3>

<p>At current prices, brand new sea-view residences in Pokfulam would fetch around $6,000
per sq. ft. We have been told that PCG's capital injection will be $7bn, and this
presumably covers the cost of development since the land is free. That equates to around
$1,210 per sq. ft., but let's be generous and assume it is $1,500 per sq. ft., without
increasing PCG's equity share.</p>

<p>Normally a developer would be prepared to accept a 30% profit margin on turnover (its a
tough job, but someone's got to do it), which&nbsp; in this case equates to around $1,800
psf, so this means that if the residential part of the site were sold today, it would be
worth an &quot;accommodation value&quot; of around $2,700 psf.&nbsp; This means that the
4.35m sq. ft. of residential space has a land value of around <strong>$11.8 billion</strong>
if sold in the open market (possibly in stages, for a site so large). In addition, the
developers' profit comes to another <strong>$7.8 billion</strong>. That's a total of <strong>$19.6
billion</strong>.</p>

<p>Responding to accusations of favouritism prior to a meeting with other property
developers on 17th March, Sir Donald was quoted in the <em>SCMP</em> as saying &quot;we
pride ourselves in being transparent&quot; and in the same paragraph &quot;there's some
misunderstanding. They [other developers] do not know what the conditions of the agreement
are.&quot; Um, right - I guess that's what you mean by transparency. Would you mind
telling the rest of us, or is this something that only developers can be told?</p>

<p>Remember that the residential component will not come to market for a couple of years,
at which stage conditions may have improved, but as the land is being provided free of
charge, the only variable on the cost side are the construction costs of the project,
which are unlikely to vary much. If we allow $1,500 per sq. ft. for construction of the
rest of the Cyberport, the cost will come to some $2.15 billion. Another $200m must be set
aside for the Development Fund, bringing the total to $2.35 billion. So after building the
Cyberport, selling the 75% residential component, handing the rest of the property back to
the government plus $200m for maintenance, we a left with a net profit of $17.22bn, which
we presume will be split according to the equity shares indicated in the budget. This
gives us the following estimated profit for PCG:</p>
<div align="center"><center>

<table class="numtable center">
  <tr>
    <td></td>
    <td><i>'000 Sq. ft.</i></td>
    <td><i>$ per<br>
    sq. ft.</i></td>
    <td><i><br>
    $bn</i></td>
  </tr>
  <tr>
    <td>Residential sales</td>
    <td>4,349 </td>
    <td>6,000 </td>
    <td>26.09 </td>
  </tr>
  <tr>
    <td>Residential construction costs</td>
    <td>4,349 </td>
    <td>1,500 </td>
    <td style="border-bottom: medium groove">- 6.52 </td>
  </tr>
  <tr>
    <td>Residential gross profit</td>
    <td></td>
    <td></td>
    <td>19.57 </td>
  </tr>
  <tr>
    <td>Cyberport construction costs</td>
    <td>1,431 </td>
    <td>1,500 </td>
    <td>- 2.15 </td>
  </tr>
  <tr>
    <td>Development Fund</td>
    <td></td>
    <td></td>
    <td style="border-bottom: medium groove">- 0.20 </td>
  </tr>
  <tr>
    <td>Net profit</td>
    <td></td>
    <td></td>
    <td>17.22 </td>
  </tr>
  <tr>
    <td>46% for government based on equity</td>
    <td></td>
    <td></td>
    <td style="border-bottom: medium groove">- 7.92 </td>
  </tr>
  <tr>
    <td><strong>Estimated net profit for PCG</strong></td>
    <td></td>
    <td></td>
    <td style="border-bottom: medium double"><b>9.30 </b></td>
  </tr>
</table>
</center></div>

<p>In fact, there is so little risk in this project that the residential sales price would
have to drop to about $2,000 psf before it made a loss, implying a further 67% collapse in
the property market. Even bears like this writer have trouble conceiving that. The profit
of $9.3bn on a $7bn investment works out at 133% on investment, but bear in mind that it
should be possible for PCG to borrow a large part of the investment from banks, secured on
the future income from residential sales. Contrary to government statements that the
residential component will only be completed in phases from 2003, there is, according to
the Phasing Plan, a small element of apartments and houses (about 300,000 sq. ft.) that
will begin rolling out in 2001. These could begin pre-selling at an early stage (perhaps
early next year), helping to service the debt. We estimate PCG could borrow 50% of its
investment, reducing the funding requirement to $3.5bn. The debt would be paid back by
around 2002 based on pre-sales from the first major stage of the residential development,
so compound interest at say 10% per annum would cost it only about $1.2bn, leaving a
profit of $8.1bn on a $3.5bn investment, or over 230%.</p>

<ul>
  <li>The ITBB on 16th March also stated &quot;the present thinking is that the developer
    would act as a long term management agent for the Cyberport including marketing of the
    facilities to IT firms.&quot;</li>
</ul>

<p>In other words, PCG would take a share of the rental from the Cyberport (the going rate
is around 10%) for managing its facilities, indefinitely.</p>

<h3>Down at the Mall</h3>

<ul>
  <li>According to the Government plan, the Cyberport will include a hotel, serviced
    apartments and a &quot;Cyber mall&quot; (retail, educational and entertainment)</li>
</ul>

<p>Let's get real. The term &quot;cyber mall&quot; is normally used to describe a virtual
mall on the web, where you might find a number of on-line shops or products on one web
site. This has nothing to do with bricks and mortar. The type of mall envisaged at
Cyberport, on the other hand, is a physical concrete and glass mall which will differ
little from those already in Hong Kong. We might just as well call our schools
&quot;Cyber-schools&quot; and our hospitals &quot;Cyber-hospitals&quot;. Putting the odd
internet terminal or info-kiosk in a mall does not make it a Cyber-mall. If you want
internet access, try Pacific Coffee Company.</p>

<p>Here are some of the more memorable quotes about the Cyberport in recent days:</p>

<ul>
  <li><p style="padding-bottom: 4px">&quot;Mr [Richard] Li said that in December [1998] the
    Government came back with a proposal that PCG build the Cyberport, to which the company
    had agreed, reluctantly&quot; <em>(SCMP, 9-Mar-99).</em></p>
  </li>
  <li><p style="padding-bottom: 4px">&quot;It is wrong, very wrong, to say the Cyberport is a
    property development&quot; - <em>(<a href="http://www.info.gov.hk/gia/general/199903/17/0317124.htm" target="_blank">Donald
    Tsang, 17-Mar-99</a>)</em></p>
  </li>
  <li><p style="padding-bottom: 4px">&quot;We have not tried to exclude anybody in the
    process&quot;<em> - (<a href="http://www.info.gov.hk/gia/general/199903/17/0317146.htm" target="_blank">Donald Tsang 17-Mar-99</a>)</em></p>
  </li>
</ul>

<p>The above statements need no further comment.</p>

<h3><strong>The Opportunity Cost</strong></h3>

<p>The entire 26 hectare site, developed at a medium-density plot ratio of 5 times, would
yield around 14 million square feet of space. At an accommodation value of $2,700 per
square foot, this land, if sold in stages at auction for residential development, would
probably fetch around <strong>$37.8 billion</strong>. That is equivalent to next year's
budget deficit, or the cost of educating around 100,000 students with university degrees.
It is also more than 6 times the $6bn value being attributed by the government to its
stake in the Cyberport. With the new coastal road linking Pokfulam quickly to Central,
this would become prime living space.</p>

<p>This then is the opportunity cost of the Cyberport, less any gains that may accrue to
the government from its development and future rental. The government would probably argue
that the Cyberport also brings untold benefits to the economy at large, which would
justify its plan, if not its method of allocating the development. This paper concludes
with an analysis of that assertion.</p>

<h3><strong>The Flawed Rationale</strong></h3>

<p>Information technology is indeed a growing and important part of the global economy,
and the fact that you are reading this article on a web-site should serve as a reminder. A
few years ago, the only way to publish this article would have been through the print
media.</p>

<p>Areas of I.T. excellence are found in various cities around the World. However, in
almost all cases these areas have developed principally through high quality educational
institutions and a good quality of life for the people who work there. Our government
should be focusing its efforts on upgrading both the educational and physical environment
of Hong Kong.</p>

<p>Cyberport is no <a href="http://www.internetvalley.com/archives/mirrors/sv&amp;128.html" target="_blank">Silicon
Valley</a>, which grew with the academic support of nearby Stanford and UCLA Berkeley, nor
is it Route 128, the concentration of technology businesses around Boston and Cambridge,
Massachusetts, fuelled by the excellence of MIT.&nbsp; Silicon Valley stretches over about
750 square kilometres of California, equivalent to about 75% of the entire land area of
Hong Kong.&nbsp; We are talking about 0.26 square kilometres in Pokfulam. The whole point
of I.T. is that it allows companies to collaborate both internally and with their peers
across any distance literally at the speed of light, so there is no need to be located
within shouting distance. Almost nowhere in Hong Kong is more than about an hour's drive
from anywhere else in the territory, should video conferencing prove inadequate, so Hong
Kong <em>is</em> already a &quot;cluster&quot; of buildings and businesses, to use the
latest buzz-word.</p>

<p>Hong Kong already has a fully digital telephone system and fibre optic lines snaking
all over the territory. Our international bandwidth is also wide and growing. In numerous
modern office blocks, you can get as much bandwidth as you want - just take a look at the
dealing rooms of Citibank Plaza, Exchange Square or the Cheung Kong Centre, or a trip on
the MTR to Swire's vast spread in Quarry Bay. Any I.T. business which needs modern
offices, reliable power supplies and high-speed data lines can have it tomorrow and at
(post-crash) reasonable cost. If more space is needed, then the private sector will be
happy to develop the land, bought at open tender or converted from old industrial sites.
&nbsp; The greatest contribution the government can make to this process is to maintain
land supply to prevent another property bubble.</p>

<p>So in terms of accommodation, the Cyberport offers nothing that Yahoo! or the other
supposed anchor tenants (who have not gone further than non-binding letters of interest)
cannot find elsewhere in Hong Kong. This begs the question of rents - will the 17% of the
property allocated to offices be let at a discount to market rates? Surely this would
amount to intervention in the rental market. It would mean that companies would strive to
define themselves as suitably I.T.-driven in order to qualify for lower rents in this
zone. With only 990,000 sq. ft. available at Cyberport, this will be quite entertaining.
To put it in perspective, 990,000 sq. ft. is about 22% smaller than the space in the
Cheung Kong Centre, on the site of the old Hilton Hotel. Perhaps we will see groups such
as Hutchison Telecom (controlled by Li Ka Shing) applying to put their internet and mobile
phone businesses on the site, or Fortress, Park N' Shop and Watson's (all Hutchison
businesses) seeking to locate their &quot;e-commerce&quot; businesses there. </p>

<p>We simply urge that if the land that was once Telegraph Bay is to be developed, do it
by open tender on commerical terms and drop the protestations that this is a race against
time and only one company is suitable to lead us into the 21st Century. </p>

<p>What I.T. businesses perhaps need most is sufficient numbers of potential employees
with an education in information technologies. The answer to that is to boost government
spending on tertiary and secondary education, to foster private investment in training,
research and development, and to make Hong Kong an attractive place to live for immigrant
professionals, but not to donate land for Cyber Villas by the sea.</p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=17936">HONG KONG CYBERPORT MANAGEMENT COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
				<li><a href="/dbpub/subject.asp?c=16">Real estate</a></li>
				
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