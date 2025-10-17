
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

<script type="text/javascript">document.title="The Trump Dump: war-gaming the next move against China";</script>

	<div class="summary">The US Administration has so far focused entirely on the trade account, but when the potential for tariffs is exhausted, if not sooner, Trump may start to wonder why US funds have hundreds of billions of dollars invested in stocks and bonds of Chinese state-backed companies, and use OFAC powers to order them to divest.</div>

<h2 class="center">The Trump Dump: war-gaming the next move against China<br>
<span class="headlinedate">2 June 2019</span></h2>
<p>Both sides in the US-China trade war appear to be digging in for a long-term 
battle of ideologies - the US battling for capitalism and open markets, China 
battling for socialism, central planning and protectionism, baulking at the idea 
that it should commit to free and fair trade by opening its markets to foreign 
competition and ownership on a level playing field. The Chinese position is entirely to be 
expected, because it's right there in the
<a href="http://www.npc.gov.cn/englishnpc/Constitution/2007-11/15/content_1372963.htm" target="_blank">
PRC Constitution</a>:</p>
<blockquote>"7. The State-owned economy, namely, the socialist economy under 
ownership by the whole people, is the leading force in the national economy. The 
State ensures the consolidation and growth of the State-owned economy."</blockquote>
<p>And although the constitution since a
<a href="http://www.npc.gov.cn/englishnpc/Constitution/node_2826.htm" target="_blank">
2004 amendment</a> allows for the private sector, it is very much an appendage 
to the state-led approach:</p>
<blockquote>"11. The non-public sectors of the economy such as the individual 
and private sectors of the economy, operating within the limits prescribed by 
law, constitute an important component of the socialist market economy.<br><br>
The State protects the lawful rights and interests of the non-public sectors of 
the economy such as the individual and private sectors of the economy. The State 
encourages, supports and guides the development of the non-public sectors of the 
economy and, in accordance with law, exercises supervision and control over the 
non-public sectors of the economy."</blockquote>
<p>No large-scale economy on Earth has delivered enduring prosperity to its 
citizens without giving them all the rights and liberties of open society and 
divesting the state of large-scale involvement in the allocation of capital. 
China, by relaxing basic controls since 1979, has raised GDP per capita to
<a href="https://data.worldbank.org/indicator/NY.GDP.PCAP.CD?locations=US-CN-OE" target="_blank">
around a quarter</a> of OECD levels, but it simply cannot centrally-plan its way 
to OECD levels of prosperity. Unfortunately, the current leadership, with
<a href="https://en.wikipedia.org/wiki/Leadership_core" target="_blank">Xi 
Jinping as the "Core</a>" and surrounded by yes-men, does not recognise that, 
and believes it can steer China to a socialist "<a href="http://www.chinadaily.com.cn/a/201803/16/WS5aab21d6a3106e7dcc142020.html" target="_blank">completely developed 
country</a>" by 
2049, the 100th anniversary of the Communist takeover of China, masterfully 
allocating capital as only the Party knows how. It may still take years of 
economic stagnation before they discover that they are wrong.</p>
<h3>The capital threat</h3>
<p>So far, all of the Trump Administration's economic actions against China 
(with the exception of actions against particular companies for alleged 
sanctions-busting), have been focused on the trade account: imports of Chinese 
goods to the US, with escalating tariffs now threatening to add 25% to the cost 
of all Chinese goods entering the USA. Forgive us for pointing this out and 
waving a Chinese red flag at this US bull, but Mr Trump and his advisers have so 
far ignored another huge potential area of sanctions, namely the capital 
account.</p>
<p>How long will it be before they realise that hundreds of billions of dollars 
of US pension funds, mutual funds, foundations, endowments and 401(k) retirement plans are 
invested in the stocks and bonds of Chinese companies listed in the US, HK and 
the mainland, many of which are either state-controlled or heavily influenced or 
protected by the Chinese government? Not only that, but some of the world's 
biggest asset managers are also US-headquartered - the likes of Fidelity, 
Blackrock and Capital Group manage not just the assets of US citizens but of 
other citizens around the world, investing their money in Chinese securities.</p>
<p>In the opposite direction, China applies very strict controls to the outflow 
of its citizens' capital, restricting them to contrived schemes like the 
Southbound HKEX "Stock Connect" (mostly investing in Chinese companies) and
limiting foreign exchange purchases to USD50k per citizen per year and
<a href="https://www.safe.gov.cn/en/2017/1230/1397.html" target="_blank">
overseas cash withdrawals</a> to CNY100k (about USD15k) per citizen per 
year. It's one way that the Chinese Yuan is propped up against overseas 
currencies, and if you need any evidence of the over-valuation of the CNY and 
the way capital is trapped, then look at the premium at which mainland A-shares 
trade to the H-shares of the same company. The shares are economically equal 
but, at current exchange rates, the A-shares are
<a href="https://www.hsi.com.hk/eng/indexes/all-indexes/ahpremium" target="_blank">
priced</a> at a 26% premium to their HK counterparts.</p>
<p>When each side has exhausted the potential for trade-damage by tariffs 
(and the US has inflicted all the self-harm it can bear), if not sooner, we would not be 
surprised to see Mr Trump apply capital sanctions and force US 
Persons to dump their holdings of Chinese equities and bonds. They have 
potentially wide scope to do this, using the US Treasury's
<a href="https://www.treasury.gov/about/organizational-structure/offices/pages/office-of-foreign-assets-control.aspx" target="_blank">
Office of Foreign Assets Control</a> (<strong>OFAC</strong>). According to its 
web site: </p>
<blockquote>"[OFAC] administers and enforces economic and trade sanctions based 
on US foreign policy and national security goals against targeted foreign 
countries and regimes, terrorists, international narcotics traffickers, those 
engaged in activities related to the proliferation of weapons of mass 
destruction, and other threats to the national security, foreign policy or 
economy of the United States."</blockquote>
<p>OFAC's powers were demonstrated in Apr-2018 when it
<a href="https://home.treasury.gov/news/press-releases/sm0338" target="_blank">
ordered</a> US Persons to divest, and stop dealing with, Russian aluminium firm <a href="../dbpub/orgdata.asp?p=55733">United Company Rusal plc</a>, 
on the grounds that it was controlled by a man who is close to the Russian 
regime. OFAC cited the regime's occupation of Crimea, support of President 
Assad's regime in Syria, and attempts to subvert Western democracies. US Persons 
were ordered to divest Rusal within a month. The HK-listed shares
<a href="https://www.reuters.com/article/us-usa-russia-sanctions-rusal-stocks/rusal-shares-plunge-over-40-percent-on-u-s-sanctions-idUSKBN1HG04H" target="_blank">
plunged</a>, and for a while it was even impossible to get a stock price from 
US-based information providers, who were prohibited from dealing with the firm. 
Index-providers and credit-ratings agencies also had to
<a href="https://www.reuters.com/article/us-usa-russia-sanctions-companies-factbo/actions-taken-on-russian-firms-by-market-institutions-after-new-us-sanctions-idUSKBN1HK14V" target="_blank">
drop coverage</a>. Eventually the
<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2019/0128/LTN20190128053.pdf" target="_blank">
sanctions were lifted</a> following a rearrangement of directors and 
shareholdings.</p>
<p>We have some distance still to go on the tariff front, but we would be amazed 
if the economic war-gaming in the US Treasury Department has not already begun 
to consider capital sanctions, and could introduce them either in parallel or 
after the next round of tariffs. OFAC might first be used to order US Persons to 
divest from all PRC state-controlled companies such as those in the banking, 
petroleum and petrochemicals sectors, before moving on to target private sector 
companies which have established Communist Party Committees within their 
Articles of Association, embedding the Party in the company. Such entities are 
not as "private-sector" as they claim to be.</p>
<p>After all, it is somewhat inconsistent for the US on the one hand to complain 
that the PRC Government directs the allocation of capital and subsidies to 
state-controlled enterprises and favoured sectors and protects them from foreign 
competitors, while at the same time allowing US persons to fund the same 
enterprises via the international stock and debt markets, whether in HK, the 
mainland or overseas.</p>
<p>Apart from the price-impact of such a large-scale dump (which depends 
partly on the timeframe), the direct impact on US funds from depriving them of 
the ability to invest more cash in Chinese equities and bonds (particularly 
those which are government-controlled) would be relatively minor, as they have 
other global opportunities for their capital. It might even improve their 
portfolio performance in the long run, if we are right that the 
centrally-planned economy will fail to deliver sustainable growth in its present 
form.</p>
<p><em>&copy; Webb-site.com, 2019</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=55733">UNITED COMPANY RUSAL, IPJSC</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2467013">Trump, Donald John</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11640">Xi, Jinping</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=142">Free trade</a></li>
				
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
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