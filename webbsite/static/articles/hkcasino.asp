
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

<script type="text/javascript">document.title="Hong Kong's casino";</script>

	<div class="summary">Never mind Lantau, Hong Kong does have a fully operational casino with a legally protected monopoly. We comment on the M-chip craze and the hypocrisy that permits the public to take risks in the markets and on property, but prohibits risk-taking in other forms of gambling outside of the Jockey Club monopoly. We call for liberalisation of the gambling sector.</div>

<h2 class="center">Hong Kong's casino<br>
<span class="headlinedate">24 November 2004</span></h2>
<p>You may have heard that the Liberal Party wants to build a casino on Lantau. 
Keep this under your hat - it's our little secret. Hong Kong already has a 
casino. You thought this was illegal, but it isn't - in fact, the biggest 
gambling den is a legally protected monopoly. Hundreds of &quot;facilitators&quot; will 
even provide you with credit to assist in placing your bets and advice on which 
bets to make. Even the Government is in on it - they take a piece of every 
transaction.</p>
<p>We speak, of course, of the Stock Exchange. Who needs Macau when you've got 
Macau concept stocks to gamble on? The Government gets its cut off the top - 
0.2% on each transaction in stamp duty and 0.007% to fund the gambling regulator 
and the broker-default compensation fund. The brokers provide gambling credit as 
margin finance, and the tycoons provide an endless supply of shiny M- chips to 
play with. And if it's not M-chips, then in the past it has been dot-com chips, 
GEM stocks, red chips or (coming soon) rinky-dinky instruments like callable 
bull/bear contracts.</p>
<p>Recently the debate began on what to do with the exchange's trading floor, 
the lease of which expires in October next year. A rather hum-drum
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2004/041105news.htm">
proposal</a> was reached in which the lease will be renewed and a small portion 
of the trading floor will be retained for brokers who are willing to pay for the 
booths. Many will just use it as a backup facility, so we can look forward to 
the appearance of a shrunken exchange with no action, while the real frenzy 
takes place electronically on trading screens. The rest of the floor will be 
converted into other uses, including an exhibition area and a cultural piazza 
for ritual roast pig-chopping to celebrate new listings.</p>
<img class="center" src="../images/casino2.jpg" alt="Artist's Impression for HKEx trading floor">
<p>Quite honestly this proposal lacks imagination and market savvy. What we really need 
is to convert the trading booths into slot machines. Lots of them. And the 
lovely green baize of the blackjack table. And roulette wheels with stock codes 
marked on them. The zero goes to the house - we call that transaction levy and 
stamp duty. We could even give the slot-players red jackets to recreate the feel 
of the old trading floor. An artist's impression of the renovated trading floor 
is on the right - minus the jackets.</p>
<p>Yes, our trading hall is the natural place for Hong Kong's first legal casino 
floor.</p>
<p>Joking aside, let's send a serious message here - it is human nature to risk 
money on the outcome of future events. That is what we call investment and 
insurance. The Government's continued resistance to legalised and properly 
licensed gambling is contradictory to the fact that we are all placing bets with 
each other every day on the Stock and Futures Exchanges. Yet apart from the 
Government-sanctioned monopoly of the
<a target="_blank" href="http://www.hkjc.com/">Hong Kong Jockey Club</a>, which 
takes bets on horses and football and runs a lottery, it is illegal to operate a 
gambling establishment or even to place bets with offshore bookmakers and 
casinos from Hong Kong. The Government professes a belief in free markets but 
permits a monopoly in gambling with strictly prescribed types of bets on only 2 
sports.</p>
<p>But it's OK to buy warrants on M-chips or short-sell stocks and it is even 
encouraged to buy a property with a 95% mortgage. The policy is inconsistent and 
hypocritical. Gambling should be legalised and liberalised.</p>
<p>Vast law-enforcement resources are spent on policing, prosecuting and judging 
gambling dens and bookmakers which operate without any kind of financial 
oversight, and the criminal underworld thrives on this activity simply because 
it is illegal. If bookmaking were legal and licensed, you wouldn't want to deal 
with a triad and a source of their revenue would be eroded.</p>
<p>The fact that a small proportion of the population are gambling addicts or 
alcoholics is not a sufficient reason to ban everyone from betting or drinking 
alcohol. America tried that with
<a target="_blank" href="http://www.cato.org/pubs/pas/pa-157.html">prohibition</a> 
from 1920 to 1933 and it was a complete failure in every social objective.</p>
<p>The HKJC has been
<a target="_blank" href="http://www.hkjc.com/english/special/2004_annual_report/a1.pdf">
calling</a> for a shift in taxation policy so that instead of taking an average 
13.5% of each bet in duty, the Government takes a tax on profits. We support 
that, but only if at the same time the HKJC loses its monopoly, and we allow any 
properly capitalised company to take bets on anything it likes, whether it is 
horses, elections or tomorrow's air pollution readings. This should be regulated 
by a Betting Commission that checks that the firms have sufficient resources to 
honour their bets, just like insurance companies do. The Commission would also 
enter into mutual recognition with overseas betting regulators, and the 
anti-competitive ban on offshore betting should be scrapped. It should be legal 
for HK residents to bet with overseas firms as well as HK firms. After all, it's 
not illegal for a HK resident to pick up the phone and buy shares in Frankfurt 
or futures contracts in Chicago.</p>
<p>The World Trade Organisation's Dispute Settlement Body on 10-Nov-04 issued a
<a target="_blank" href="http://www.wto.int/english/tratop_e/dispu_e/285r_e.pdf">
report</a> (page 272) ruling against the United States for prohibiting 
cross-border gambling in a case brought by the Caribbean state of Antigua and 
Barbuda. The US will probably appeal. As a member of the WTO, Hong Kong will 
ultimately be affected by this ruling.</p>
<p>The liberalisation of betting would create a lot of employment and broaden 
the tax revenue base. There is also no reason to prohibit electronic exchanges 
for people to make bets with each other, such as
<a target="_blank" href="http://www.betfair.com">betfair.com</a> and
<a target="_blank" href="http://www.tradesports.com">tradesports.com</a>. 
Globally, race tracks and bookmakers, who have long enjoyed a one-sided market, 
whinge that exchanges make it easier to back a losing horse - but you can do 
that just by betting on all the others to win, and the complaint is nullified 
when you consider that they already allow you to bet against a football team by 
betting on the other side to win. Electronic exchanges can also keep audit 
trails of people's bets, while cash bookmakers cannot, so exchanges are actually 
able to assist in the never-ending battle against match-fixing and race-fixing.</p>
<p>In Hong Kong's case, the HKJC would argue that gambling supports charitable 
causes. It's their fig leaf for keeping a monopoly - but the truth is that only 
about 1% of each bet goes to charity, while over 5% goes to running the club and 
about 13.5% in tax. In a liberalised gambling regime, the Government could 
continue to divert part of its tax revenue to charitable causes (many of which 
should form part of our Government's social safety-net anyway), including 
counselling services for those who are addicted to gambling, whether it is on 
the stock market or on sports.</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1415">HONG KONG JOCKEY CLUB (THE)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=115">Competition</a></li>
				
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