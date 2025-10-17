
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

<script type="text/javascript">document.title="EVI for Beginners";</script>

	<div class="summary">The latest stock on the rampage in the GEM children's playground is kindergarten web firm EVI Education Asia, up 192% on its debut, following close on the heels of stable-mate L.P. Lammas. We'll give you a bit of online education ourselves and tell you why you shouldn't play with these fireworks.</div>

<h2 class="center">EVI for Beginners<br>
<span class="headlinedate">15 March 2001</span></h2>
<p>The latest bubble to float out onto the GEM is a little stock
called <a href="http://www.evigroup.com/web/guestzone/web/guest/gw000000.htm" target="_blank">EVI Education Asia</a>
(<b>EVI</b>). The group offers a Chinese language-based pre-school web site to
kindergartens in HK with ambitions to cover Macau and the PRC. At today's
closing price of $1.11, up 192% on the IPO price, it is valued at HK$888m. Nice
lucky number, you might think. Not so fast - we'll explain why you should keep
your money in your pocket. </p>

<h3>The cast</h3>

<p>There are 3 executive directors, who are the 31-year-old
Chairman and CEO Wilson Pong Wai-san (<b>Wilson Pong</b>), his mother Dorothy
Pong-Lo Shuk-yin, and vice chairman Wings Cheung Shi-kwan. Wilson Pong's mum
apparently has over 20 years experience in administration and management of
kindergartens, so she should be able to steer some business his way. Wilson Pong
owns 65.23% of EVI. </p>

<p>The two so-called independent non-executive directors are Kelvin
Ko Chun-hay (<b>Mr Ko</b>) and Wilfred Hung Fan-wai (<b>Mr Hung</b>), who is
coyly described as <i>&quot;deputy chairman of a listed company in Hong
Kong&quot;.</i> </p>

<p>Aw, come on guys, the <i>Webb-site.com</i> database will always
spot these things. The listed company they declined to name is in fact pine
furniture maker <a href="../dbpub/articles.asp?p=11749" target="_blank">I-Wood International</a>
which is 35.02% owned by Wilson Pong. Can Mr Hung really be called independent?
I-Wood also featured in last month's story on <a href="woodenlammas.asp" target="_blank">L.P.
Lammas</a>, which is chaired by Louis Pong Wai-yan. That stock has also been on
the rampage and closed today at $0.56, up 180% on its IPO price. </p>

<p>As for Mr Ko, he is <i>&quot;currently a financial controller
and company secretary of a listed company in Hong Kong&quot;</i>. That one, as
far as we know, is independent - it is called <a href="http://www.tongda.com/" target="_blank">Tongda
Group Holdings Ltd</a> and makes metal chassis for PCs and for microwave ovens.
He joined them in Aug-00 and before that he was the finance director at
HK-listed Perennial International Ltd, which makes AC power cords. </p>

<h3>The IPO</h3>

<p>EVI made an IPO of 160m shares (the minimum allowed, being 20%
of the enlarged company) which was priced at HK$0.38, raising $60.8m before
expenses or about $50m net. </p>

<p>Although sponsor ICEA Capital Ltd managed to find 190 placees,
only 29 of them bought more than 20,000 shares. That means that just 2% of the
offering went to 161 placees. On the other hand, the top five placees took up
about 70% of the offer, and the next five took up another 20%. Talk about
tightly held - wind it up and watch it go - a bit like one of those <a href="http://www.nitrobug.freeserve.co.uk/plfinal.jpg" target="_blank">elastic-band
powered</a> model aircraft that we used to play with in kindergarten, which
zooms into the sky until the band unwinds, and then it stalls and nose-dives
into the carpet. </p>

<h3>So what is it made of?</h3>

<p>Balsa wood. Oh sorry, you don't mean the model plane, you mean
EVI. Well, the group claims a history dating back to 28-Jun-99, when EVI
Services Ltd (<b>EVISL</b>) was incorporated. They say: </p>

<blockquote>

<p>&quot;the group was founded by Mr. Pong Wai San, Wilson and the
first group company was incorporated on 28th June 1999&quot; </p>

</blockquote>

<p>That two-fact statement is technically true, but the two facts
are not related, because the accountants' report states: </p>

<blockquote>

<p>&quot;EVISL was incorporated in Hong Kong on 28th June 1999 and
was inactive since then up to 4th January 2000 when the Group acquired a 100%
interest in it&quot; </p>

</blockquote>

<p>In other words, EVISL was a shelf company until Jan-00. It was
originally called Landwell Development Ltd until its name was changed on
15-Jun-00. </p>

<p>The track record of EVI includes two periods, the first running
3 months from 28-Jun-99 to 30-Sep99, and the second for a year ended 30-Sep-00.
So EVISL was only active for 9 months of the second period. The only other group
company existing in the first period was a BVI company called Jaques Kurtz Co
Ltd (<b>JK</b>), which was incorporated on 28-Jul-99 and engaged in <i>&quot;research
and development&quot;</i>. </p>

<p>&nbsp;In fact, the first period shows no revenue and only
HK$108k of expenses. Of this, $20k was directors salaries, and $60k was a
consultancy fee paid to Info-Tech Services Company (<b>ITSC</b>) which was
beneficially owned by a director of EVISL. Apart from 2 directors, the group had
no paid employees in the first period. </p>

<p>ITSC was in the business of <i>&quot;computer training and
services&quot;</i>. A bit of surfing shows that in Oct-99, ITSC was <a href="http://cptra.ln.edu.hk/~isga/share/JOBS-IT.txt" target="_blank">advertising</a>
on the Lingnan University graduate employment site for an IT graduate to <i>&quot;prepare
training materials and provide training for pre-school students&quot;. </i>Perhaps
this was one of the first jobs at EVI. The contact point at ITSC was Steven K.
Poon, who according to the EVI prospectus, &quot;joined&quot; EVI in Jul-99 as
Senior Technical Officer, presumably while continuing to run ITSC. </p>

<p>Towards the end of the second track record period (the year to
30-Sep-00), the group began to raise equity funds. By the end of the track
record, equity in EVISL had been issued as follows: </p>

<img class="center" alt="" src="../images/evi.ht1.gif">

<p>As you can see, at this stage Hanny Holdings Ltd (<b>Hanny</b>)
had put up $10m for 10% of the company. Only $18k of equity had come from Wilson
Pong, although he had lent money to the company as we explain later.
Incidentally, CU Securities Ltd, the joint lead manager of this IPO, is 40%
owned by Hanny, a fact we could not find disclosed in the prospectus. </p>

<h3>Doesn't quite add up</h3>

<p>Rather puzzling is the following check-sum we did on Arthur
Andersen's accountants' report: </p>

<img class="center" alt="" src="../images/evi.ht2.gif">

<p>As you can see, the total is $18k short of where it should be
after adding back the losses to the closing net assets, to get the invested
equity. It is a minor discrepancy but we cannot think of an explanation, and by
coincidence this amount happens to be the same as the capital injected by Wilson
Pong. </p>

<h3>Wilson Pong's entry cost</h3>

<p>Now apart from the $18k of equity, by 30-Sep-00 Wilson Pong had
lent $5.348m to EVI and Hanny was owed a &quot;technical consultancy fee&quot;
by EVI of $5.188m. On 28-Feb-01 $5m of the loan and all of the fee were
converted into shares as part of the pre-IPO restructuring. </p>

<p>Long-time readers will recall our article on <a href="techpac.asp" target="_blank">Techpacific.com</a>
in which we revealed the embarrassingly low entry cost of all pre-IPO investors,
something which prompted the Stock Exchange to require all subsequent GEM
prospectuses to include, in their &quot;Summary&quot; section at the front, a
table of such investment costs. Small breakthroughs we are grateful for.
However, EVI claims that the total investment cost for Wilson Pong is <i><b>&quot;not
applicable&quot;</b></i>. Presumably the folks at the GEM took their word for
it. Wake up and smell the coffee, here it is (expressed in terms of current
shares in EVI): </p>

<img class="center" alt="" src="../images/evi.ht3.gif">

<p>We see no justification from excluding that fact from the
prospectus. It shows that the IPO at $0.38 was priced at over 39 times Wilson
Pong's net entry cost of 0.962 HK cents per share. </p>

<h3>Total investment pre-IPO</h3>

<p>The total subscribed capital before the IPO is as follows: </p>

<img class="center" alt="" src="../images/evi.ht4.gif">

<p>GR Investments Holdings Ltd is a HK-listed investment company
which became a shareholder on 17-Nov-00, 4 months before the IPO and at just
over half the IPO price. </p>

<p>After today's first day of trading, the stock closed at $1.11,
giving the pre-IPO investors an average paper profit of 2,713%, and in Wilson
Pong's case, a gain of 11,438%. Not bad for a year's work. </p>

<h3>The business</h3>

<p>Just a few words about the business. We are sure that there is a
role for computers in kindergartens, but the ease with which a business like
this can be assembled means that the business is not worth much more than it
costs to build. Competition and low barriers to entry will ensure that is the
case. </p>

<p>Even allowing for the $50m in cash brought in from the IPO, that
puts fair value of the company at around $0.09 per share, and that is subject to
the assumption that the business will actually make money. Take a discount for
the risk of bad governance and you'd be looking at a price for a minority
interest around <b>$0.05</b> per share at best. </p>

<p>In fact, EVI has done very little of its own development. The
web design was outsourced to local web firm <a href="http://www.edlinkol.com/" target="_blank">Edlink
Online Ltd</a> (which has a rather nice site of its own). They won a 6-month
contract starting 1-Sep-00 (yes, one month before the end of the track record)
which was later extended until Jun-01. Another contract, also starting 1-Sep-00
went to a subsidiary of HK-listed systems integrator <a href="http://www.ctil.com/" target="_blank">Computer
&amp; Technologies Holdings Ltd</a> for application software development. </p>

<p>To date, EVI has been giving its online service away for free,
so it is unknown how much kindergartens and parents will really pay for the
service. The online version was only launched in Jan-01. This free service plan
(in which EVI also buys and owns the on-site computers if needed) is part of the
marketing strategy, and they do not plan to charge for some time. The free trial
period will end <i>&quot;no later than the first quarter of 2002&quot;.</i>&nbsp; </p>

<p>This means that the earliest quarter in which they record
subscription revenue might be 30-Jun-02, with results released by mid-August
2002. Thanks to the now-infamous <a href="waiver2.asp" target="_blank">GEM
waivers</a>, the lock-up period on this stock will expire almost a year earlier,
on 15-Sep-01, so the founders will be free to sell long before we know whether
EVI is ever going to make any money. </p>

<p>This stock rivals stable-mate L.P. Lammas as one of the most
over-rated and insubstantial stocks GEM has ever seen. </p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=11749">CENTURY GINWA RETAIL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12509">IMPERIUM FINANCIAL GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12996">Legend Upstar Holdings Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=826">Master Glory Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1458">Prosperity Investment Holdings Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=10844">Hung, Wilfred Fan Wai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8076">Ko, Kelvin Chun Hay</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11752">Pong, Wilson Wai San</a></li>
				
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