
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

<script type="text/javascript">document.title="The dividend tax myth";</script>

	<div class="summary">We correct the Financial Secretary's latest gaffe and explain why a further tax on corporate profits in the form of a dividend tax would necessitate a steeper salaries tax, a capital gains tax, a tax on worldwide investment income and ultimately a loss of economic output and revenue. It is a myth that dividends are tax-free.</div>

<h2 class="center">The dividend tax myth<br>
<span class="headlinedate">5 March 2013</span></h2>
<p>Every once in a while in Hong Kong, an uninformed member of the public, or a 
socialist and impoverished journalist or a populist politician, alleges that 
tycoons or business owners don't pay tax &quot;because dividends are tax-free&quot; and 
lobs the idea of a dividend tax into the public arena without being aware of the 
consequences. In this article, we will explain, step by step, how a dividend tax 
would necessitate both a steeper rate of salaries tax and a capital gains tax, 
how investment taxes would necessitate a tax on worldwide investment 
income of HK residents, and how taxing residents on their investments could 
drive them overseas and out of the tax net, along with their spending. </p>
<h3>The &quot;dividends are tax-free&quot; myth</h3>
<p>On a &quot;Financial Secretary Call-in&quot; show on RTHK Radio 3 on Friday 
(1-Mar-2013), there was the following exchange between a caller and Financial 
Secretary <a href="../dbpub/positions.asp?p=24948">John Tsang Chun Wah</a> (<a href="../audio/FSonDividends.asf">listen 
here</a>):</p>
<blockquote>Caller: &quot;I think this dividend issue is quite a significant 
one, in that a lot of people set up companies in which the companies pay them 
dividends rather than salaries and for that they escape paying any tax at all&quot;</blockquote>
<blockquote>Financial Secretary: &quot;OK I know that, I know that&quot;</blockquote>
<p>The caller can be forgiven for his ignorance, but not the Financial Secretary 
for endorsing this popular misconception. He really should know better. He could 
have explained that salaries reduce taxable profits, while dividends are paid 
out of taxed profits, and therefore a tax on those dividends would result in 
additional taxation of profits. The word &quot;dividend&quot; literally means to &quot;divide&quot; 
profits amongst shareholders and comes from the Latin word <em>&quot;dividendum&quot;</em> 
(things to be divided).</p>
<p>But instead, he earlier suggested that we don't have a dividend tax 
because of building up the asset management industry and jobs, which is barely 
relevant to this issue. High-tax-and-spend jurisdictions like the UK and the US, 
with massive budget deficits, do have substantial asset management industries - 
indeed, after imposing investment taxes, their governments then force their 
citizens to institutionalise their savings by granting tax breaks for pension 
plans and various types of funds. They also exempt homes from capital gains tax 
and generally incentivise home ownership resulting in housing crashes.</p>
<p>So let's explain why the Financial Secretary is wrong. Imagine two identical 
private companies, Company-A and Company-B, each running a successful business, 
owned by their respective Chairman. Each company produced $5m profit before tax 
and before paying either a bonus or a dividend to the Chairman. Company-A pays 
her a $5m bonus, resulting in no taxable profits, while Company-B does not, but 
pays profits tax and then pays out all its taxed profit as a dividend. Here are 
the numbers:</p>
<img class="center" alt="" src="../images/salarydiv.gif">
<p>As you can see, there is a slight difference in tax paid, because the rate of 
profits tax at 16.5% is higher than the &quot;Standard Rate&quot; of salaries tax at 15%, 
but other than that, the outcome is the same. The chairman-owner will of course 
choose the optimum path. This is why, in our
<a href="altbudget.asp" target="_blank">alternative budget</a>, we 
called for a flat and equal rate of salaries tax and profits tax, so that the 
taxman gets his fair share either way.</p>
<h3>A dividend tax implies steeper salaries tax rates</h3>
<p>If HK were to impose, say, a 10% tax on dividends, then that would mean that 
the effective tax rate on profits would rise from 16.5% to 24.85% (being 
1-0.835*0.9). Any business owner would then rather pay herself a big bonus, 
reducing her company's profit to zero, and only pay 15% salaries tax, as in 
Company A. The only way to neutralise the choice would be to increase salaries 
tax to 25% and thereby remove the incentive to pay out corporate profits that 
way.</p>
<p>If we did that, though, then there are other ways around it - simply use the 
taxed profits to buy back shares rather than pay dividends, or the company could 
lend the money to the director indefinitely. This would necessitate a whole 
panoply of anti-avoidance legislation and loopholes, as has been necessary in 
other jurisdictions.</p>
<h3>A dividend tax implies a capital gains tax</h3>
<p>For listed companies, the issues are similar. They could stop paying 
dividends on which their HK holders will be taxed, and instead just buy back 
shares of the same value as the dividend they would have paid, thereby legally 
avoiding dividends tax. Companies which previously had a dividend yield of say 
3% could just buy back 3% of their shares instead. Shareholders who need, say, a 
3% cash flow from their investment to fund their living costs could just sell 3% 
of their shares each year in the market. So to counter that, the Government 
would then need to introduce a capital gains tax on disposal.</p>
<p>That would be rather crude, because if a company's share price has gone 
down since the investor's purchase, then no capital gains would arise, so 
investors would be inclined to sell losing positions to capture losses, and 
offset those losses against the gains on sale of winning positions. Over time, 
this would distort capital allocation because people generally have more gains 
than losses, so they would hang on to gaining positions to avoid the tax. So 
then the Government would start tinkering with taper-relief, reducing gains tax 
rates based on the holding period. There is no end to how complex this can 
become.</p>
<p>Ultimately, capital gains, being changes in share prices, represent a change 
in the net present value of future profits of a company. Those profits will be 
taxed wherever they are generated, so a capital gains tax, like a dividend tax, 
amounts to additional and accelerated taxation of those future corporate 
profits. This becomes obvious when you consider that a share which pays out a 
dividend normally drops in price by the value of that dividend, because part of 
those future profits are no longer in the price but in your hands.</p>
<h3>Taxing HK-resident investors implies world-wide income tax</h3>
<p>Taxing dividends and gains on HK investments has broader implications, 
because residents could simply decide to invest overseas instead - for example, 
by buying shares in Singapore-listed companies. It would also encourage 
HK-listed companies to move their listings overseas. If you don't believe that, 
then consider the Jardine group of companies, listed in HK until 1994, which are 
mainly traded in Singapore, although their primary listing is in London. They 
left for different reasons, but others could join them.</p>
<p>So to counter the tendency of HK investors to buy overseas shares to avoid 
tax, and to deter companies from shifting their listings, the HK Government 
would have to tax residents on their worldwide dividends and gains, abandoning 
the <a href="http://www.ird.gov.hk/eng/paf/bus_pft_tsp.htm" target="_blank">
territorial source principle of taxation</a> that it has adhered to since 1841.</p>
<h3>Taxing HK-resident investors would drive them overseas</h3>
<p>HK-resident investors would then face a simple choice. They don't have to 
live here to invest here, so they could simply move overseas, perhaps to 
Singapore, which does not tax people on dividend income and capital gains, carry 
on investing in HK stocks but spend their money in the local economy rather than 
in HK. Those residents who have already transferred their assets to offshore 
trusts would probably be exempt anyway, unless we start taxing overseas 
investors on HK investments - but if we do that, then we can be even more 
confident of driving away listed companies to a place where their foreign 
shareholders will not be taxed, such as London or Singapore. Keep in mind that 
most listed companies are not incorporated here, so we can only really tax their 
HK businesses at the profits tax level.</p>
<h3>Adding to surpluses</h3>
<p>The result of all this in the short term might be more revenue that the 
Government doesn't actually need, given its humungous reserves which were 
accumulated from long-run surpluses, so then there would be pressure to 
redistribute it to those who don't need it (for example, on a non-means-tested 
pension), or to squander it on projects like high-speed trains to Shenzhen. In 
the longer-term though, HK simply can't afford to take a much bigger tax bite 
out of the economy without driving away business, talent and profits.</p>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=24948">Tsang, John Chun Wah</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=192">Tax & budget</a></li>
				
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