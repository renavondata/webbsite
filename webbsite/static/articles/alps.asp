
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

<script type="text/javascript">document.title="Give public access to ALPs";</script>

	<div class="summary">We need your help! The SFC is proposing to ban retail investors from accessing Alternative Liquidity Providers, which could provide faster and better execution than just placing the order with SEHK. Webb-site urges the SFC to give the public the same options that institutional investors enjoy. They almost did with HSBC's ill-fated Stockmax. We also urge the Government to abolish SEHK's statutory monopoly and allow competition to drive down fees and innovate.</div>

<h2 class="center">Give public access to ALPs<br>
<span class="headlinedate">15 April 2014</span></h2>
<p>On 27-Feb-2014, the SFC
<a href="http://www.sfc.hk/edistributionWeb/gateway/EN/news-and-announcements/news/doc?refNo=14PR25" target="_blank">
launched</a> a
<a href="http://www.sfc.hk/edistributionWeb/gateway/EN/consultation/openFile?refNo=14CP3" target="_blank">
consultation paper</a> on the regulation of Alternative Liquidity Pools (<strong>ALPs</strong>), 
also known as Alternative Trading Systems and &quot;dark pools&quot;. As we will explain, 
the proposals would eliminate the possibility of public (retail) access to 
faster and better order-execution that ALPs can provide. Now is your chance to 
help oppose this by <a href="#submit">submitting your view to the SFC</a>.</p>
<h3>Background</h3>
<p>The SFC defines ALPs as:</p>
<blockquote>&quot;electronic systems through which the crossing or 
matching of orders involving listed or exchange-traded securities are conducted 
with no pre-trade transparency.&quot;</blockquote>
<p>The SFC doesn't define &quot;pre-trade transparency&quot; but we take that to mean that 
no bids or offers are displayed to users. ALPs are operated under a &quot;Type 7&quot; SFC 
licence for Automated Trading Services (<strong>ATS</strong>). At 31-Dec-2013 
there were 25 corporations with an ATS licence, but only 16 of them operated 
ALPs. Others may operate lit venues, or Electronic Communication Networks (<strong>ECNs</strong>) 
which display orders (whether anonymised or not) to clients. In essence the 
biggest ECN is the AMS/3 trading system operated by The Stock Exchange of Hong 
Kong Ltd (<strong>SEHK</strong>), although it does so as a statutory monopoly 
&quot;stock market&quot; to which all other ECNs must report trades and pay tolls. </p>
<h3>The stated objective</h3>
<p>The stated objective of the SFC consultation is to enhance and standardize 
the regulatory obligations on ALPs operators in HK, which until now have been 
dealt with by imposing conditions on the ATS licence. The licence conditions of 
ALPs are inconsistent between operators. For example, currently the SFC 
restricts new ALPs to securities listed on SEHK and restricts operation to the 
same trading hours as SEHK, but that doesn't apply to ALPs which were licensed 
&quot;some years ago&quot;. The SFC proposes bringing them all to a common standard by 
putting that standard into the omnibus
<a href="http://en-rules.sfc.hk/en/display/display.html?rbid=3527&amp;element_id=1868" target="_blank">
Code of Conduct</a>, and asks what that standard should be.</p>
<p>The SFC proposes allowing ALPs to operate at any hours they choose, and to 
transact in any securities they choose, whether listed on SEHK or overseas. On 
trading hours, they state:</p>
<blockquote>&quot;allowing transactions in securities that are traded on 
SEHK to be effected outside SEHK trading hours would merely recognize and 
sanction the practice that has long existed, albeit without the involvement of 
electronic crossing or matching systems, of transactions being entered into 
after normal trading hours and reported to SEHK the following day.&quot;</blockquote>
<p>Webb-site agrees that investors should be free to trade when they want, and 
that allowing ALPs and ECNs to choose their own hours of operation will 
facilitate this and enhance competition. If there is enough demand for trading 
outside the 5.5 hours per day of SEHK, then it sends a clear signal that they 
should consider lengthening their own hours, possibly including the 12-1pm lunch 
break.</p>
<p>It is also a reality that through various online brokers with a HK presence, 
the public can already trade in securities in multiple overseas markets, and 
institutions certainly can, so we see no reason in principle why we should not 
allow ALPs to facilitate onshore trading in overseas stocks.</p>
<h3>The unstated objective: locking out the public</h3>
<p>What the SFC does not mention, though, is that this paper comes in the 
aftermath of a crackdown on a <a href="darkspread.asp">proposal from 
HSBC</a> to allow its retail clients to use StockMax, an ALP that could have 
provided price improvement and faster execution for clients by allowing them to 
deal inside the often wide minimum bid-offer spread on SEHK and to at least 
bypass the SEHK queue. At the last minute, the SFC
<a href="/articles/stockmin.asp">revoked</a> its approval 
for retail access, and it was only 16 months later that it indirectly
<a href="stockmax2.asp">explained why</a>; HSBC had proposed 
StockMax as an opt-in service but had then changed its mind to make it an 
opt-out service, and the SFC had not been updated.</p>
<p>But if that was the only concern, then HSBC could have proceeded with an 
opt-in service. What this was really about, in our view, was political pressure, 
including from small brokers, not to allow competition outside SEHK's trading 
engine, because small brokers do not have enough order flow to provide such 
services individually (although they could pool their efforts).</p>
<p>So now, in this paper, the SFC proposes to eliminate the possibility of 
StockMax, or systems like it, providing retail access to competing trading 
venues. The SFC proposes that only &quot;institutional investors&quot; should be allowed 
access to ALPs. They don't use small brokers anyway. The SFC then goes on to 
admit that some larger financial services groups have both fund management arms 
and private banking/ retail broking arms, so it proposes to require ALPs 
operators to ensure that their clients, and the clients of their group 
companies, do not conduct transactions unless they are institutional investors, 
to prevent them &quot;attempting to circumvent the spirit&quot; of the ban. All very 
cumbersome.</p>
<p>The reason given for banning retail investors from ALPs is that 
investors &quot;might find it difficult to understand the operation of, and the risks 
associated with, these crossing networks&quot;. This is frankly rather patronising. 
It doesn't take a rocket scientist to understand that sooner is better, and that 
being offered a better price is better. This is the same regulator which has no 
problem with allowing retail investors to trade exotic products such as 
proprietary derivative warrants and bull-bear certificates issued by investment 
banks when there is no fungibility between them and only the issuing bank can go 
short by printing more. If those risks are acceptable then surely ALPs are.</p>
<p>The SFC suggests that ALPs provide a &quot;promise of price improvement&quot; that may 
mislead retail investors. They don't. They provide a <u>
possibility</u> of price improvement, which is better than no possibility. 
ALPs will not always improve on the speed of execution or the price you are 
willing to pay or receive relative to the exchange, but they won't do any worse, 
because the broker-dealers are always under an obligation to provide &quot;best 
execution&quot; - that is, if they can get a better price on SEHK, or if they don't 
have a matching order immediately available, then they must send the order to 
SEHK.</p>
<h3>The HKEx monopoly</h3>
<p>As an unelected director and CEO of <a href="../dbpub/articles.asp?p=9643">Hong Kong 
Exchanges and Clearing Ltd</a> (<strong>HKEx</strong>, 0388, the owner of SEHK), 
Charles Li Xiao Jia, pointed out last week (much to the chagrin of the 
Government, which likes to pretend otherwise), HKEx is a government-controlled 
company, and its shareholders (on a 1-share-1-vote basis, by the way) can only 
elect 6 out of its 13 directors. The SFC's paper adopts the unstated assumption 
that this state-controlled monopoly should remain the default venue for trading 
securities, rather than opening up competition and innovation. As a result, we 
are stuck with the wide
<a href="https://www.hkex.com.hk/eng/rulesreg/traderules/sehk/Documents/sch-2_eng.pdf" target="_blank">
spread table</a> (as much as 2% at 50 cents) and rigid trading hours.</p>
<p>The USA and Europe, by comparison, have multiple competing trading venues. 
Even Australia has two. Whilst this does present its own challenges for 
regulation, it is an organic, competitive market which has produced far narrower 
bid-offer trading spreads and lower transaction fees than the HKEx monopoly. The 
recent hubbub over Michael Lewis' latest book on the US market tends to overlook 
that. Yes, there are some clever people who arbitrage between the venues, and 
yes, there have been some unfair practices by trading venues, which in essence 
have been sharing the fruits of front-running some clients with others. The SEC 
should crack down on these practices, but that doesn't mean they are going to 
turn the US market into a state-controlled monopoly exchange like SEHK.</p>
<p>At the very least, the SFC should allow &quot;informed consent&quot;. That is, they 
should allow retail investors to opt in to the use of ALPs and ECNs in their 
orders, either on a per-order basis or an all-order basis. That's the basis on 
which the SFC originally approved Stockmax. This would allow for more 
competition, which would force SEHK to overhaul its archaic practices. Secondly, 
now that we do have a Competition Ordinance, the Government should remove the 
statutory monopoly of SEHK and allow for a level playing field of properly 
licensed competing exchanges, without all the competing venues (ALPs and ECNs) 
having to pay a toll to SEHK.</p>
<p>Competing exchanges would of course mean additional regulatory workload - it 
is undoubtedly easier to regulate one exchange than several. The SFC would need 
to oversee a consolidated reporting and quotation system similar to that 
provided by Regulation NMS (National Market System) in the USA. But it would be better 
than the current monopoly mono-pool.</p>
<h3 id="submit">Submit your views to SFC</h3>
<p>Should retail investors have access to Alternative Liquidity Pools, with the 
opportunity for faster and better execution of orders? You can submit your 
views, however brief, directly to the SFC <strong>
<a href="https://www.sfc.hk/edistributionWeb/gateway/EN/consultation/comment?refNo=14CP3" target="_blank">
using this form on their site</a></strong>. If you agree with Webb-site, then 
you could just submit along the following lines &quot;I am a retail investor and I 
want access to ALPs&quot;. Variations are better, to avoid the risk of being 
aggregated and treated as a single submission.</p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=122">Dealing costs</a></li>
				
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