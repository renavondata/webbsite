
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

<script type="text/javascript">document.title="Destructive Ambiguity";</script>

	<div class="summary">The Hong Kong dollar was pegged twenty years ago today. We take aim at Yambo's latest whacky doctrine of "constructive ambiguity". The whole point of the peg in 1983 was to reduce uncertainty, not increase it. Uncertainty attracts speculators and certainty turns them off. So how can you profit from all this? We'll tell you.</div>

<h2 class="center">Destructive Ambiguity<br>
<span class="headlinedate">15 October 2003</span></h2>
<p>Twenty years ago today, and before our time here, Hong Kong was a very 
different place. A 99-year lease on the &quot;New Territories&quot; which comprise the 
majority of Hong Kong's land area was in fact not new at all, but set to expire 
on 30-Jun-97, and Britain and China were deep in negotiations about the future, 
which as we now know, resulted in a smooth handover of the whole colony. But 
back then, the financial markets were in turmoil, China was a much more backward 
place and nobody much fancied the idea of being ruled by men in Mao suits.</p>
<p>In a Saturday press conference, the Government announced that the Hong Kong 
dollar would be pegged at the rate of 7.8 to the US dollar, and this took effect 
the following Monday morning, 17-Oct-83. Since then, despite numerous shocks to 
the global financial system, the rate has stayed close to the peg, reaching a 
low (for the HK$) of 7.90 on 7-Jul-84.</p>
<h3>A dark day in a free market</h3>
<p>However, the darkest day came on 14-Aug-98, when the Hong Kong Monetary 
Authority (<b>HKMA</b>), the Government's quasi-central bank, waded into the 
stock market and began buying up the 33 stocks in the Hang Seng Index, 
purportedly to defend the peg. The Hang Seng Index had closed at a multi-year 
low of <b>6,66</b>0.42 the previous day - and the Government perhaps saw the 
sign of the devil in the details when others were just sensing a buying 
opportunity coming along. In Hong Kong, the Government believes in free markets, 
except when the market goes against them. It's a bit like believing in elections 
provided you know who will win.</p>
<p>Over the following two weeks, ending in a blitz on 28-Aug-98 (the day of that 
month's futures contract expiry), the Government
<a target="_blank" href="http://www.info.gov.hk/hkma/eng/press/1998/attach/981026ea.doc">
spent</a> some HK$118bn (US$15bn) buying about 15% of the free float of the 
index members, and driving the index up 17.6% (it fell 7.1% the day after they 
stopped). The purported targets of this were hedge funds who had been shorting 
the Hong Kong dollar, to push up local interest rates, hoping that the stress on 
the market would help drive down the index, where they had also sold index 
futures. HKMA Chief Joseph Yam said he was going to <i>&quot;hit them where it 
hurts&quot;,</i> earning himself a short-term action-man nickname of &quot;Yambo&quot;.</p>
<p>All this happened just a couple of months before we established <i>
Webb-site.com</i>, but you can read our coverage of this and editor David Webb's 
letters to the newspapers in our archive under <a href="interven.asp">Market 
Intervention</a>. We were then, and remain, opposed to government intervention 
in markets, and believe there was no justification for it. In the aftermath, the 
Government claimed sovereign immunity from its own laws on disclosures of 
shareholdings and market manipulation as well as from disclosure obligations 
under the non-statutory Takeover Code. It has recently
<a target="_blank" href="abovethelaw.asp">reiterated that immunity</a> in 
relation to the MTRC.</p>
<p>Following the summer, the HKMA realised that there was a flaw in the peg 
mechanism which allowed short-term interest rates to be spiked excessively, at 
which point, rather than attracting capital to the higher interest rate, the 
effect is to drive it away by the fear of a break in the peg. A 100% interest 
rate only earns you 1.9% in a week, but if you think there is a 20% chance of a 
20% devaluation in the next week, then you will expect to lose 4% if you stay in 
the local currency, which is more than double the interest, so you will still 
head for safety and convert your currency, thereby exacerbating the shortage of 
local currency. You might think this was obvious, but in the first 15 years of 
the peg, it wasn't obvious to the authorities.</p>
<p>So the HKMA took their night-caps off and put their thinking 
caps on, and realised that they should never have allowed rates to be squeezed 
in this way. On 5-Sep-98 they introduced the so-called &quot;<a href="https://www.hkma.gov.hk/eng/key-information/press-releases/1998/980905.shtml">seven 
technical measures</a>&quot; to modify the currency board, and effectively converted 
the HKMA into a central bank. A full discount window was introduced to which 
Government bills and notes from certain other issuers could be presented as 
security for short-term HK$ funds, greatly expanding the monetary base. If this 
had been done earlier, the intervention might never have happened. It now takes 
enormous amounts of short positions to have any major upward effect on rates.</p>
<h3>Peg still flawed</h3>
<p>But a flaw remains, and the HKMA is currently dancing around the problem. The 
convertibility undertaking they have given to convert HK$ into US$ at 7.8 to 1 
is one-sided (protecting the HK$ on the down-side by guaranteeing a conversion 
into US$ at 7.80), when it should be symmetric. After recent pressure on Asian 
countries (particularly mainland China) to revalue their currencies upwards 
against the US dollar, and with a booming stock market, there has actually been 
excess demand for HK$, and rather than meet that at 7.80, the HKMA has allowed 
the rate to slip to as low as $7.70.</p>
<p>Initially, Mr Yam reverted to his 1998 Yambo persona, aided and abetted by 
hereditary textiles tycoon and new Financial Secretary Henry Tang, and took some 
glee in claiming that those who had been shorting the HK$ were now in pain. <i>
&quot;The speculators have suffered big losses...I don't sympathise with them&quot; </i>
said Tang on 24-Sep-03. On 2-Oct-03 this was followed by Yam's comment in his
<a target="_blank" href="http://www.info.gov.hk/hkma/eng/viewpt/20031002e.htm">
web column</a>:</p>
<blockquote>
  <p>&quot;there is no harm to have a bit of constructive ambiguity, if only for the 
  purpose of making those shorting the Hong Kong dollar realise that this is not 
  so much of a one-side bet. We are in the business of ensuring exchange rate 
  stability, not bailing out currency speculators.&quot;</p>
</blockquote>
<p>One cannot help thinking that beneath the surface of this administrator lies 
a man who, despite all claims to the contrary, yearns for a floating exchange 
rate which would make his role as the manager of our foreign currency reserves 
so much more exciting. And so much more dangerous for Hong Kong.</p>
<p>His latest utterance was:</p>
<blockquote>
  <p>&quot;we will not actually tolerate any deviation which is big enough that it 
  would undermine credibility and confidence in the system&quot;.</p>
</blockquote>
<p>Think about that. It implies that he believes <i>some </i>deviation does not 
undermine credibility. We disagree - the moment you start to have a &quot;managed 
float&quot; with a range of allowed deviation, then you encourage people to test the 
boundaries. You are in fact inviting speculation by introducing uncertainty, and 
you are playing with fire, Mr Yam. If there really are speculators out there who 
have been short HK$, then the rational thing for them to do now is to short some 
more, in the knowledge that sooner or later you will have to return to the peg 
rate, and maybe even overshoot the other way. Those with capital to spare will 
simply double their bets.</p>
<p>But the whole point of the peg in 1983 was to reduce uncertainty, not to 
increase it. The stated goal of deterring speculation is directly contradicted 
by the policy of introducing uncertainty into the rate. <b>Ambiguity is not 
constructive, Mr Yam, it is destructive to stability</b>.</p>
<p>If there was a rigid 2-way convertibility, then speculators would not be 
attracted in the first place, and interest-rate arbitrage would ensure that the 
money supply remains in balance with the demand; whenever there were too many 
HK$ in circulation, the lower interest rate would attract conversion to US$, and 
when there was more demand for HK$, higher interest rates would attract inflows. 
That is how a true peg should work, but it is muddied when you start allowing a 
band of flotation, and the interest rate arbitrage system for attracting and 
repelling capital flows collapses. Take a leaf out of the Bank of England 
playbook, where many of your deputies have come from&nbsp; - it was the flexible 
range of the Exchange Rate Mechanism that was its downfall when the pound bust 
its 6% boundaries in 1992. There was nothing constructive about that.</p>
<p>If this Government truly believes in a peg system, then it should hold the 
rate rigidly fixed at HK$7.80, and guarantee to convert both ways. That would 
prevent any movement beyond transaction costs, because anyone who could buy US$ 
at HK$7.79 could turn around and get HK$7.80 from the HKMA. That would be a true 
peg, not the &quot;managed float&quot; we are now witnessing.</p>
<p>Meanwhile, as the Government is running a fiscal deficit, it has to dig into its 
reserves, most of which are held in foreign currency assets, so that means that 
as long as the rate remains out at HK$7.74, the Government is losing about 0.77% on each 
conversion as it sells US$ to buy HK$ to pay its bloated civil service, not to 
mention Mr Yam's HK$9m salary - whoops, we did. Perhaps he'll take US$ pay 
instead, and save us the conversion.</p>
<p>According to Mr Yam's column, the HKMA has sold about US$8bn in the open 
market in the last 12 months to fund the deficit. That's an average of US$667m 
per month, and at a difference of HK$0.06 from the peg rate, it is now costing 
the taxpayers an extra HK$40m per month to fund it.</p>
<h3>How to profit</h3>
<p>The Government cannot afford for the peg to break upwards, because this would 
result in further deflation of prices, first in imported goods that fill our 
stores, and then in property rents and values, just at a time when the 
authorities have been trying to shore up the property market to head off looming 
problems with mortgages which have so far been contained. Longer term, it can't 
afford the volatility that a floating exchange rate would cause either.</p>
<p>So finally, here's how you can make a little money. If you hold HK$ and have 
no plans for it in the next few months, then consider doing what we did, and 
switch into US$ at around the current HK$7.74 level or better. You'll get a 
better interest rate on short-term time deposits in US$ than HK$ (shop around, 
the difference is about 0.5% per annum) and you'll make 0.78% (less transaction 
costs) when the rate goes back to HK$7.80.</p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=3295">Hong Kong Monetary Authority</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2192">Yam, Joseph Chi Kwong</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=121">Currency board/ peg</a></li>
				
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