
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

<script type="text/javascript">document.title="Time Out for Timeless";</script>

	<div class="summary">We take a look at Timeless Software, one of the first listings on the new GEM market which begins trading on 25-Nov-99, and are disappointed by what we find. The valuation is ridiculous and there is a potential back-door to allow directors to sell shares in the next month.</div>

<h2 class="center">Time Out for Timeless<br>
<span class="headlinedate">24 November 1999</span></h2>
<p>Thursday 25th November sees a small moment in Hong Kong's
history as the first two counters begin trading on GEM, the Growth Enterprises
Market. One of these is <a href="http://www.timeless.com.hk/" target="_blank">Timeless
Software</a>. </p>

<h3>Background</h3>

<p>Timeless was incorporated on 12-Mar-96 and unusually, there has
been no restructuring into a Bermudan holding company prior to the listing. What
you get is the original Hong Kong company. </p>

<p>By 18-Nov-97 (two years before listing, which for Stock Exchange
purposes is the dawn of time) the company had 10m shares of HK$1 each in issue,
60% held by Encore Holdings Ltd (<b>Encore</b>), 20% by the Chairman, Mr Cheng
Kin Kwan, and 20% by the Chief Operating Officer, Danny Cheng Wan Cheung. As far
as we know the two are not related. </p>

<p>The company has made several small acquisitions for cash. It acquired <a href="http://www.timeless.com.hk/company/3p/3p_cp01.html" target="_blank">Three
Principles Computer Service Co Ltd</a> in 1996 for a total of <b>HK$7m</b>. It
acquired <a href="http://www.timeless.com.hk/company/ecl/ecl_cp01.html" target="_blank">Expert
Consulting Ltd</a> (formerly Expert System Solutions Ltd), buying 60% in Jul-97
and 40% in Jun-98 for a total of <b>$5m</b>. It acquired a publication called IT
Magazine in the form of Corp-Vision Publishing Ltd for just <b>$0.3m</b> on
23-Jan-99, and in Sep-98 it agreed to invest <b>$8m</b> in 80% of a joint
venture with the Zhuhai Southern Software Park where the JV will be a tenant and
hope to sell services to other tenants. The JV does not own any of the property. </p>

<p>By 31-Aug-99, the company had recorded an accumulated loss of
HK$45.2m. A large part of this was funded by an interest-bearing loan from Mr
Choi Kin Chung, who owns 25% of Encore and was a director from 20-Mar-96 to
30-Sep-97 and again from 24-Aug-98 to 5-Jun-99. </p>

<p>On 21-Aug-98, Mr Laurie Kan Siu Kei invested $2m at the
equivalent of $0.05 per current share (allowing for a 20:1 stock split) for 40m
shares. He joined the company in Mar-98 as President, and was previously the
Managing Director of Microsoft (Hong Kong) Ltd. </p>

<p>This is a busy week for Mr Kan, because (unless there are two
people of the same name and age) he is also an independent non-executive
director of Pine Technology Holdings, which starts trading on GEM on Friday
26-Nov-99. In the Pine prospectus, he is described as general manager of
SINA.COM (Hong Kong) Limited. Can this really be the same person? </p>

<p>On 30-Dec-98, employees were allotted 4m shares (since split to
80m shares) at an effective <b>$0.05</b> per current share. This was followed on
16-Nov-99 (last week) by a further 60m post-split shares at the same price, of
which 28m shares went to directors. </p>

<h3>Crimson Asia Capital</h3>

<p>On 19-Jun-99 Crimson Investments, Ltd and Crimson Asia Capital
Ltd L.P. agreed to invest a total of US$11m (<b>HK$85.25m</b>) in two stages;
HK$65m on 7-Jul-99, and HK$20.25m on 2-Nov-99 (just 3 weeks ago) by exercising
an option. </p>

<p>In both injections, Crimson bought in at US$1 (HK$7.75) per
share, but the stock has since split 20:1 so the effective price is <b>HK$0.3875</b>
per share. The prospectus does not provide this analysis. </p>

<p>By contrast, the issue price in the IPO on GEM (which has been
done by way of placing without a public offer) is <b>HK$3.00</b> per share, and
Crimson's stake would be worth <b>$660m</b> at that price. Now forgive us for
being stupid, but why is something that the company was willing to sell 4 months
ago at $0.3875 now worth $3 per share? </p>

<h3>Over-allotment</h3>

<p>Crimson is only locked into the holding for 6 months. Indeed,
they have signed (along with other shareholders, including management) an
&quot;over-allocation&quot; option which allows the underwriters to buy up to
25m existing shares until 18-Dec-99 to satisfy demand for the stock. This
provides a novel way of avoiding the 2-year lock-up rule to which management are
supposed to be subject, and we wonder if other companies will head this way. Of
the 25m shares, 54%, or <b>$40.5m</b> worth, would come from the two Crimson
investors, recovering half their cash investment if fully taken up. 19.2%, or
4.8m shares, would come from 3 directors in equal proportions, releasing <b>$14.4m</b>
of cash. </p>

<h3>This is not an internet company</h3>

<p>Let's be clear. This is not what we consider to be an internet
company. It is a software solutions provider. It takes off-the-shelf software
such as Oracle and customises applications for clients. It designs and programs
web sites for clients, but has no real internet properties of its own. There are
dozens of companies doing the same thing. It is a people business that relies
very much on its programmers and designers. </p>

<p>In the year to 31-Mar-99, over 44.4% (nice lucky number) of the
firm's business came from Y2K compliancy work for customers. How much of that do
you expect after Y2K? Total turnover was $43.3m, and the IPO values it at
$2,250m, or 52 times turnover. You would be lucky in the long-run to achieve
profit margins of 30% on software solutions business, and probably less. Your
biggest cost is keeping the talented brains behind the keyboards. </p>

<p>The valuation on this business, at 122 times pro forma
fully-diluted forecast earnings (or 89 times weighted-average earnings), for the
year ending 31-Mar-00, is ridiculous. Even highly-rated <a href="http://www.asl.com.hk/" target="_blank">Automated
Systems Holdings</a>, which has a blue-chip client list and turnover of $605m
last year (14 times that of Timeless), trades on &quot;only&quot; around 28x
earnings, a figure we find excessive but not ridiculous. That values ASH at
$1.14bn, or half the value placed on Timeless. Which would you rather own? </p>

<p>So Timeless is one GEM listing that will not sparkle. All that
glitters is not gold. </p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9381">Timeless Resources Holdings Limited</a></li>
				
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