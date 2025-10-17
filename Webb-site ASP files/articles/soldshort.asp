
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

<script type="text/javascript">document.title="Proposed law sells HK short";</script>

	<div class="summary">If the Government consulted the public on a speed limit of 50km/h, then set it at 4km/h, wouldn't you wonder why? That's what the SFC has done after a consultation which from the outset was a solution in search of a non-existent problem. We call on the SFC to withdraw or amend its proposed filing requirements for 0.02% short positions and to focus with Government on filling the gap in the existing law by requiring public disclosure of short positions, including derivatives, at the same level as long positions, currently 5%. What do you think? Take our poll!</div>

<h2 class="center">Proposed law sells HK short<br>
<span class="headlinedate">7 March 2010</span></h2>
<div class="leftpicbox" style="border:0">
	<img alt="Reduced threshold" src="../images/thresholdcut.jpg">
</div>
<div class="pollbox">
	
	<ul class="navlist">
		<li id="livebutton">Poll</li>
		<li><a target="_blank" href='../vote/result.asp?p=36'>Results</a></li>
		<li><a href="../vote/">More polls</a></li>
		
			<li><a href="../webbmail/login.asp">Log in</a></li>
			<li><a href="../webbmail/join.asp">Sign up</a></li>
		
	</ul>
	<div class="clear"></div>
	<h3><b>Poll: Short position disclosure</b></h3>
	<p><b>Please <a href='../webbmail/login.asp'>log in</a> to see how you voted, if you did. </b></p>
	
			<p>	
			Poll closed: 18:00:00 19-Mar-2010
			</p>
		
		<script type="text/javascript">
		function NoEnter(e)
		{
			var key;
			if(window.event)
				key = window.event.keyCode;     //IE
			else
				key = e.which;     //firefox
			if(key == 13)
				return false;
			else
			return true;
		}
		</script>
		<form method="post" action="/articles/soldshort.asp">
			<hr>
			<p class=''>1. Should the law require public disclosure of short positions above a threshold?</p><p class=''><select name='174' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>2. Should the public threshold be the same for long and short positions?</p><p class=''><select name='175' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>3. What should the long position public disclosure threshold be?</p><p class=''><select name='176' class=''><option value=''>Select</option><option value='97'>5%</option><option value='98'>3%</option><option value='99'>2%</option><option value='100'>1%</option><option value='101'>0.5%</option><option value='74'>Undecided</option></select></p><p class=''>4. What should the short position public disclosure threshold be?</p><p class=''><select name='177' class=''><option value=''>Select</option><option value='97'>5%</option><option value='98'>3%</option><option value='99'>2%</option><option value='100'>1%</option><option value='101'>0.5%</option><option value='74'>Undecided</option></select></p><p class=''>5. Should the law require private short position disclosure to the SFC?</p><p class=''><select name='178' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>6. If required by law, what should the private disclosure threshold be?</p><p class=''><select name='179' class=''><option value=''>Select</option><option value='98'>3%</option><option value='99'>2%</option><option value='100'>1%</option><option value='101'>0.5%</option><option value='102'>0.25%</option><option value='103'>0.2%</option><option value='104'>0.02%</option><option value='74'>Undecided</option></select></p>
			<p>
			
			</p>
		</form>
	
</div>
<p>
Imagine, 
if you will, a consultation paper on road speed limits, in which the Government 
proposes introducing a 50km/h speed limit, and after collecting responses, they 
decide that because traffic moves slower here, they will introduce a 4km/h 
speed limit instead, 10 times lower than other countries decide to do at the 
same time.</p>
<p>That, in essence, is what Hong Kong's Securities and Futures Commission has just decided to do with short-position 
disclosures to the regulator. The change needs subsidiary legislation which is 
subject to Legislative Council negative vetting, so there is still time to stop 
this madness. It puts HK way out of line with international rules, including 
those announced by Europe the same day, as we explain below. If we don't stop 
this then for institutional investors, it will impose a high administrative 
burden for no public benefit, and many private investors or institutions selling 
dual-listed stocks overseas will likely just ignore it.</p>
<p>Don't get us wrong: Webb-site has always advocated transparency in every 
aspect of governance, but only where it results in meaningful disclosure and the 
benefit to the public interest justifies the costs. We need well-designed 
regulation, not just regulation for the sake of it.</p>
<h3>Background</h3>
<p>If you understand short selling in HK then skip this section.</p>
<p>A &quot;short sale&quot; is when a person sells shares he has borrowed, betting that 
the share price will go down rather than up, creating a &quot;short position&quot;. If he 
can buy them back at a lower price, then he makes a profit. If he has to buy 
them back at a higher price, he makes a loss. All short sales are tagged as 
such, and the aggregate amount of short sales in each stock is disclosed twice 
daily by HKEx. There is no disclosure when the short position is closed with a 
purchase, so the total short interest is not known.</p>
<p>Not all short sellers are betting against the market direction. Often, the 
short-seller will be making a relative-value bet, by buying something else as a 
hedge. For example, in a &quot;pair trade&quot;, he might buy the shares of a listed 
company and short the shares of its listed subsidiary, betting that one will 
out-perform the other, or in a &quot;merger arbitrage&quot; trade during a takeover offer, 
he might buy the shares of the target and sell short the shares of the offeror, 
or vice versa. These are known as &quot;market neutral&quot; positions.</p>
<p>Since all short sales must result in delivery of stock (or compulsory buy-in) 
on settlement day, the aggregate of all long minus short interests in a company must be 
100% at all times. If there are 120% long positions, then there are 20% short. 
There is no theoretical limit to how many times borrowed shares can be resold - 
shares don't have a label on them saying &quot;I am borrowed&quot;. So in theory (but 
seldom if ever in practice), the long interests could be 300% and the short 
interests would then be 200%. The net total is still 100%.</p>
<p>Under archaic SEHK Rules, not all stocks can be sold short. They publish a list of
<a target="_blank" href="http://www.hkex.com.hk/tradinfo/secshortsell/alphabetic.htm">
Designated Securities Eligible for Short Selling</a> (<strong>DSESS</strong>), 
currently including 520 stocks. This includes 7 stocks in the ill-fated 
<a target="_blank" href="http://www.hkex.com.hk/prod/uspilot/nasdaq.htm">Nasdaq 
pilot program</a>, 6 Real-Estate Investment Trusts and 52 Exchange-Traded Funds 
(ETFs), leaving about 455 ordinary shares. This restrictive list is probably 
honoured in the breach by borrowing the stock offshore and not tagging the sale 
as short. As long as you deliver, nobody here will know. One asset manager told 
us the other day how he was able to borrow shares in a stock he regarded as 
overvalued (all his HK orders are placed through a New York head office) before 
realising that the stock was not on the DSESS list, so he didn't sell.</p>
<h3>SFC research and consultation</h3>
<p>In a
<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/research/research/RS%20Paper%2042.pdf">
research paper</a> published on 23-Oct-08, the SFC found that short selling in 
HK from 22-Sep-08 to 22-Oct-08 (during the crisis) accounted for only 7.6% of 
market turnover, compared to 7.4% in the second quarter and 8.5% from 1-Jul-08 
to 19-Sep-08. The SFC estimated that the aggregate short position was about 1% 
of market capitalisation, well below that of New York (4.7%) and about the same 
as Australia (1.0%).</p>
<p>In a further
<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/research/research/RS%20Paper%2044.pdf">
research paper</a> on 17-Apr-09, on the liquidity effect of short-selling, the 
SFC concluded that:</p>
<blockquote>&quot;trading volume rose as short selling increased. Short selling 
improves market efficiency and increases turnover, be it directly or indirectly. 
As short selling helps price discovery, it encourages trading in the overall 
market...Short-selling activity helped narrow bid-ask spreads.&quot;</blockquote>
<p>Given all those benefits, you might wonder why short selling isn't allowed on 
all stocks. So do we. A free-market approach would allow it.</p>
<p>On 31-Jul-09, the SFC issued a
<a target="_blank" href="http://www.sfc.hk/sfcConsultation/EN/sfcConsultFileServlet?name=incshtpostrans&amp;type=1&amp;docno=1">
consultation paper</a> on increasing transparency of short positions. It 
mentioned that during the financial crisis, the UK had introduced a temporary 
requirement for public disclosure of short positions of 0.25% (in financial 
stocks and companies conducting rights issues) and was consulting on a permanent 
one with a 0.5% trigger. In the US, there was an emergency requirement for 
weekly disclosure of 0.25% short positions, applicable only to discretionary 
managers holding more than US$100m of certain classes of equities, which expired 
on 1-Aug-09.</p>
<p>As the SFC noted in its consultation paper (but failed to follow):</p>
<blockquote><strong>&quot;A threshold that is too low would be overly 
burdensome and may render the threshold meaningless.&quot;</strong></blockquote>
<p>Given the relatively low levels of short positions in HK, the consultation 
paper was a solution in search of a problem which doesn't exist. On p13, the SFC 
looked at stock loan estimates as a proxy for short positions (because you can't 
short shares without borrowing them to deliver). Looking at about 320 HK stocks, 
it found that in late Feb-2009, about half of them had total stock loans below 
0.50% of market value, so no single holder could have been short more than 
0.50%. In other words, in half the cases, the long positions were between 100.0% 
and 100.5%, and the short positions were between 0% and 0.5%. Even if you only 
count the free float of 25% as long, you have <strong>long positions outweighing 
short positions by 51 to 1</strong>. How is that a problem for market stability? 
Furthermore, About 36% of the 320 stocks had total short positions less than 0.25%. 
The SFC stated that:</p>
<blockquote>&quot;if we adopt a threshold approach to capture significant short 
positions, the threshold level should not be higher than 0.25% of the issued 
share capital which is the level adopted currently in London and New York.&quot;</blockquote>
<p>The giant flaw in the SFC's reasoning is that they decided that if short 
positions were not significant relative to other markets (let alone relative to 
long positions), then they should make them 
significant by adopting lower disclosure thresholds. That is rather like saying 
that, if speeding is not a problem in HK, then we should make it a problem by 
having lower speed limits than other territories.</p>
<h3>The gap in HK law</h3>
<p>Although we oppose the new requirements, there is a problem with the law, and 
this is where the SFC and Government should focus its efforts.</p>
<p>The
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/WebView?OpenAgent&amp;vwpg=CurAllEngDoc*568*458*568.1#568.1">
Securities and Futures Ordinance</a> requires shareholders to publicly disclose long 
interests of 5% or more (i.e. 250 times larger than the proposed private short position 
threshold), but the only statutory requirement for short positions is that, if 
someone has a long position over 5%, then they must disclose any short position 
over 1% in the same stock. This would almost never happen, because anyone who 
wanted a long position would not want a short position, and vice versa. It is 
cheaper to buy 4% than to buy 5% and short 1%. So short 
disclosures are only made by a few quirky participants such as operators of 
stock lending pools. Because of this omission in the law, in a stock with a 30% 
free float, you could have a short position of 6% of the company or 20% of the 
float, and you would not have to disclose it publicly.</p>
<p>Directors of the issuer must disclose all positions however small.</p>
<p>The obvious question here is this: if a long position is only significant 
enough to be publicly disclosed at the 5% threshold, then why is a short 
position significant, even to the regulator, at the 0.02% threshold? <strong>Why 
not have symmetric, public disclosure obligations for long and short positions, 
including derivatives, at the same threshold, whether at 5% (the HK and US 
standard) or 3% (the UK standard)?</strong></p>
<h3>Spotlight pressure</h3>
<p>The SFC is not proposing any public disclosure by holders, only private 
filing to the SFC, which will disclose aggregated data without names. This opens 
the possibility of the SFC being privy to price-sensitive information on 
individual large short interests, where the short shareholder itself might also 
be listed, and the consequent risk of illegal leakage. The public might be told 
that there is a 10% short interest in a stock, but they wouldn't know whether 
that was 50 holders averaging 0.2% each, or 1 big player who is short 10%. Inevitably 
investors would speculate and try to find out whether there was a single big player 
and who the player was. So the disclosure of aggregated data would put the spotlight 
on the SFC.</p>
<p>We emphasise that the SFC is pretty good at maintaining its statutory 
secrecy, but that's partly because the public doesn't know anything about what 
the SFC knows on pending takeovers or secret investigations, so there is no 
pressure for leaks. That would not be the same if there are aggregate public 
disclosures derived from SFC filings. These would be the &quot;known unknowns&quot; rather 
than the &quot;unknown unknowns&quot;, in <a href="rumsfeld.asp">
Rumsfeld-speak</a>. If you tell us half of the data, we'll want the rest.</p>
<h3>The regulatory principles</h3>
<p>The global regulatory scrutiny of short-selling is apparently aimed at stocks allegedly being &quot;pushed 
down&quot; by short sellers, which regulators and politicians say &quot;causes panic&quot; and&nbsp; 
makes the firms &quot;more likely to fail&quot;.&nbsp; But in an efficient market, if the 
stock was not over-priced then why wouldn't buyers come in to meet short sellers? If the 
stock is a bank, and investors have confidence in it, they will buy. Buyers have 
unlimited upside and limited downside. For short-sellers, it's the opposite - 
they have unlimited downside and limited upside, because the stock can only go 
to zero (on bankruptcy), not negative. If anyone has to be certain about their 
analysis, it is short-sellers. They take more risk.</p>
<p>The global regulators are confusing cause and effect - banks collapsed 
during the crisis because of over-leverage and reckless lending (facilitated by 
lax regulation) and the consequent busting of the property bubble, not because 
of short-sellers. After short-selling of financial stocks was briefly
<a target="_blank" href="http://www.sec.gov/news/press/2008/2008-211.htm">banned</a> 
in the USA and UK, banks continued to collapse. Don't shoot the messenger - the 
global markets' price discovery mechanisms were working.</p>
<p>As regards the circulation of false information about a listed company, 
whether positive or negative, there are laws against that, and those laws 
operate independently of disclosure of short or long positions. There are just 
as many incentives to circulate false positive news about a profit boost or a 
takeover (or in HK, some Chinese/Mongolian mining injection), and the upside on that is 
greater than false negative news.</p>
<p>Despite the overwhelming
<a target="_blank" href="http://www.independent.co.uk/news/business/news/fsa-abandons-inquiry-into-hbos-short-selling-for-lack-of-evidence-883317.html">lack of evidence</a> that short-selling causes companies to fail, regulators, 
including those in Europe, seem hell-bent on imposing far more stringent 
disclosure requirements on short positions than they do on long positions.</p>
<p>There is no other aspect of the HK law which requires shareholders to make 
private disclosure to the regulator but not make public disclosure. We do not, 
for example, have to tell the SFC when we own 0.02% of a company. Indeed, almost 
all of your editor's holdings exceed 0.02% and several are disclosed above 5%. 
He has never had a short position, but may in future. Why introduce a law on 
private disclosure of short positions? Why not just decide on the public disclosure requirements 
for both long and short positions 
(5%, or lower) and leave it at that?</p>
<h3>The SFC's conclusion</h3>
<p>The SFC's
<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/speeches/consult/consultationconclusion2march2010english.pdf">
conclusion paper</a> issued on 2-Mar-2010 is draconian. The SFC will require 
holders of short positions exceeding just <strong>0.02% (that is, 1/5000th)</strong> of a 
company's issued shares, and any short position which exceeds HK$30m, to report 
their position privately to the SFC weekly. The $30m threshold only kicks in 
above $150bn, so that only relates to <a href="../dbpub/mcap.asp">19 companies</a> 
(as of Friday). In the largest case, $30m of China Mobile Ltd (0941) is just 
<strong>0.002%</strong>. To put this in sporting terms, it is equivalent to a 2 millimetre bump 
in a 100 metre-long soccer pitch. It may be significant to an ant, but not to a 
soccer player.</p>
<p>The reporting requirement will apply to stocks in the
<a target="_blank" href="http://www.hsi.com.hk/HSI-Net/HSI-Net?cmd=navigation&amp;pageId=en.indexes.hsisis.hsi.constituents">
Hang Seng Index</a> (43 stocks) and the
<a target="_blank" href="http://www.hsi.com.hk/HSI-Net/HSI-Net?cmd=navigation&amp;pageId=en.indexes.hscei.constituents">
H-share Index</a> (40 stocks, of which several are in the HSI) and &quot;other 
financial stocks&quot; which are not in the index. They haven't defined what they 
mean by &quot;other financial stocks&quot;, but it is safe to assume it includes (but is 
not limited to) any company which derives a majority of its activity from 
banking, and probably insurance underwriting. Does it include listed stockbrokers and asset 
management firms? Insurance brokers? Only time will tell.</p>
<p>The
<a target="_blank" href="http://www.hkex.com.hk/tradinfo/regshortsell/regshortsell.htm">
criteria</a> for inclusion in the DSESS list include companies with a market cap 
(at the time of admission) of at least HK$1bn and an aggregate 12-months 
turnover of at least 40% of market capitalisation. Therefore, for the smallest 
stocks, the disclosure threshold of a 0.02% short interest would amount to just 
HK$200k (US$26k) - not even enough to buy a <a href="rusalsfc.asp">
board lot of Rusal</a> with the proceeds.</p>
<p>The warped logic of the SFC is reflected in paragraph 30 of the conclusions:</p>
<blockquote>&quot;While 0.25% is used in triggering the short position 
reporting requirement in several overseas jurisdictions...we note that not many 
reporting obligation is triggered (sic) each day...This implies that if a 
similar trigger level is used in Hong Kong, only very large short positions in 
the shares of very few companies might exceed the threshold...&quot;</blockquote>
<p>So they appear to define &quot;very large&quot; based on the frequency or size relative 
to other short positions, rather than relative to market cap. The goal seems to 
be to meet some quota of disclosures, rather than to disclose what is 
meaningful. And there's more:</p>
<blockquote>&quot;0.02% of the issued share capital of a large-cap company may 
have a very large value (e.g. 0.02% of the issued share capital of the top three 
constituent stocks of the Hang Seng Index is about HK$300m each).&quot;</blockquote>
<p>So what? This is just a banal truism, rather like saying 0.02% of Li Ka 
Shing's net worth is a lot of money. Would it be news if his net worth had 
changed by that amount? Of course not. Would it be at all meaningful if the long 
position of say, Fidelity in HSBC had changed by 0.02%?</p>
<p>At the same time as setting such a low disclosure threshold, the SFC decided 
to exclude derivative interests, such as put options, short futures contracts, 
or contracts for differences. That is not an acceptable compromise, as it is 
likely to shift activity from the underlying stock to the derivative market, 
particularly contracts for differences.</p>
<h3>Europe</h3>
<p>Ironically, just a few hours after the SFC announced its decision on 
2-Mar-2010, the <a target="_blank" href="http://www.cesr.eu/">Committee of 
European Securities Regulators</a> (<strong>CESR</strong>), which includes 
representatives of the regulator in each EU member state, also
<a target="_blank" href="http://www.cesr.eu/data/document/10_298.pdf">announced</a> 
its recommendations and issued a
<a target="_blank" href="http://www.cesr.eu/data/document/10_088.pdf">report</a> 
to the European Commission to introduce a pan-European short-selling disclosure 
regime. The recommendation is that interests of <strong>0.2%</strong> (<strong>10 
times</strong> the proposed HK level) would trigger private disclosure to the 
regulator, while short interests of <strong>0.5%</strong> would require public 
disclosure. Market-makers would be exempt, but all derivative interests would be 
included.</p>
<p>Apart from leaving HK with much stricter filing requirements, it also results 
in likely partial disclosure for dual-listed stocks. For example, do you really 
think that a firm based in the UK with no HK presence, which has short-sold 
0.02% of Standard Chartered or HSBC shares in London, is going to report their 
short interest to the HK regulator? Highly unlikely - they may not even be aware 
of the obligation, much less comply with it.</p>
<p>The proposed law will incentivise short sellers to use London rather than HK. 
It puts HK at a competitive disadvantage. Put simply, it sells HK short.</p>
<h3>Where's the external force?</h3>
<p>After observing regulatory developments here for over 18 years (11 on this 
site), we can't help but notice that consultation exercises usually conclude in 
either abandoning the proposed reforms, or doing something no stricter than was 
proposed. Like Newton's first law of motion, a regulatory body moves at constant 
velocity unless some external force acts upon it.</p>
<p>This time, the SFC's &quot;conclusion&quot; is 12.5 times stricter than what 
their consultation paper suggested. It seems likely to us that the Government, 
through the Financial Services and Treasury Bureau, and/or through the
<a href="../dbpub/officers.asp?p=503&amp;hide=Y">Non-executive Directors</a> who 
form a majority on the Commission, has pushed them to go far further than they had 
proposed.</p>
<p>The Legislative Council should push back.</p>
<ul>
	<li>We call on the SFC to look to 
Europe and withdraw or amend the proposals. The requirements should be no more 
	stringent than Europe's, if and when implemented.</li>
	<li>We call on Government to legislate a public disclosure threshold for 
	short positions, including derivative interests, at the same level as long 
	positions (currently 5%)</li>
</ul>
<p>While they are at it, the should amend the SFO to remove Saturday from the 
definition of business days, which is largely honoured in the breach when it 
comes to calculating 3-day deadlines for disclosures of interests. Most of HK is 
now on a 5-day week, and the Exchange hasn't opened on Saturdays in our living 
memory, but the law seems to think we will all be busy filing disclosures on 
Saturdays.</p>
<p class="center"><strong><a href="../vote/poll.asp?p=36">What do you think? 
Take our Opinion Poll!</a></strong></p>
<p class="center">Your name will not be disclosed, but the aggregate results will be sent 
to Legislators, the Government and the SFC.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=3728">HKSAR Government</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=127">Disclosure of interests - securities</a></li>
				
				<li><a href="/dbpub/subject.asp?c=185">Short-selling</a></li>
				
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