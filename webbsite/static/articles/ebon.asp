
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

<script type="text/javascript">document.title="E. Bon bonus beggars belief";</script>

	<div class="summary">A proposal to halve the price and double the board lot will also double the minimum bid-offer spread to 1.55%. No competent board could believe that this is in shareholder interests and will enhance liquidity. We call on the SFC and Stock Exchange to act.</div>

<h2 class="center">E. Bon bonus beggars belief<br>
<span class="headlinedate">19 February 2016</span></h2>

<p>On 19-Jan-2016, interior hardware vendor
<a href="/dbpub/orgdata.asp?p=11230">E. Bon Holdings Ltd</a> (<strong>E. Bon</strong>, 
0599) <a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0119/LTN20160119490.pdf" target="_blank">
announced</a>  a proposed a bonus issue of 1 new share for every existing share 
held, halving the share price from $1.29 to a theoretical $0.645 and the 
2000-share board lot to HK$1290, which is below the $2000 required/suggested by the 
Stock Exchange in its
<a href="https://www.hkex.com.hk/eng/rulesreg/listrules/listguid/listpp/eppguid/documents/d_ta.doc" target="_blank">
Guide on Trading Arrangements for Selected Types of Corporate Actions</a> (MS 
Word format). No, it's not a Listing Rule, but it is part of an increasing 
paraphernalia of
<a href="https://www.hkex.com.hk/eng/rulesreg/listrules/listguid/guidance.htm" target="_blank">
Guidance Letters</a> and
<a href="https://www.hkex.com.hk/eng/rulesreg/listrules/guidref/othergm_index.htm" target="_blank">
Other Guidance Materials</a> through which the Stock Exchange avoids the proper 
process of actually amending the Listing Rules, which would require market 
consultation and SFC approval.</p>
<p>So yesterday, 18-Feb-2016, E. Bon
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0218/LTN20160218332.pdf" target="_blank">
announced</a> that it in addition to halving the share price with the bonus 
issue, it would also double the board lot size from 2000 to 4000 shares, so that 
the expected board lot value would be unchanged. The timetable still provides a 
14-day period in which the shares will trade "ex-bonus" on the old board lot 
size, and therefore at half the value per board lot, but the Exchange doesn't 
seem to mind that.</p>
<p>The stated "Reasons for the proposed Bonus Issue" are the usual nonsense 
accompanying such proposals:</p>
<blockquote>"The Bonus Issues marks the 40th anniversary of the 
establishment of the Group in Hong Kong. In addition, the Board believes that 
the Bonus Issue is a reward to the continuing support of the Shareholders by 
allowing them to participate in the business growth of the Company by way of 
capitalisation of a portion of the share premium account and will be a return to 
the long-term support of the Shareholders; and that the Bonus Issue will also 
enhance the liquidity of the Shares as the number of shares to be held by the 
Shareholders will increase."</blockquote>
<p>This was a statement of beliefs without foundation in fact. It is, in our 
view, a misleading statement. The bonus issue is certainly not a "reward", 
because shareholders will be no better off, and in fact their company will incur 
expenses for the bonus issue. Shareholders are already able to "participate in 
the business growth of the Company" (if any), and the bonus issue adds nothing 
to their percentage participation. For the same reason, there is also no reason 
to believe that the bonus issue will provide a "return".</p>
<p>The <a href="/dbpub/officers.asp?p=11230&amp;hide=Y">directors</a> fail 
to state why they believe any of these things. They either understand so little 
about finance that they are incompetent to be directors, or they don't believe 
this, in which case the statement is false as well as being misleading. Finally, 
given that the value of a board lot will now be unchanged, there is no reason to 
expect the bonus issue to "enhance the liquidity".</p>
<p>In fact, there is a very good reason to believe that the bonus issue will 
<em>decrease</em> liquidity. Under the
<a href="https://www.hkex.com.hk/eng/rulesreg/traderules/sehk/Documents/sch-2_eng.pdf" target="_blank">
SEHK Spread Table</a>,, between $0.50 and $10.00, the minimum bid-offer spread is 
$0.01, so by halving the share price but staying in that range, the 
bid-offer-spread will double from an already-wide 0.78% to a truck-wide 1.55%. 
Wider spreads reduce liquidity (measured by dollar turnover), because potential 
buyers and sellers tend to queue up facing each other rather than "jump the 
spread". If the equilibrium price lies somewhere between the best bid and offer, 
then less business gets done. Put simply, they cannot meet in the middle.</p>
<p>The bonus issue is subject to shareholders' approval. The SFC and Stock 
Exchange should require E. Bon to:</p>
<ul>
	<li>withdraw the misleading statement;</li>
	<li>disclose to shareholders that the trading spread will increase, which is 
	likely to decrease liquidity; and</li>
	<li>either withdraw the proposal or explain why the directors believe that 
	it is in the interests of shareholders to decrease liquidity and also incur 
	the costs of the bonus issue.</li>
</ul>
<p>E. Bon is far from alone in this tawdry practice of trying to attract 
investors with a lower nominal share price achieved through stock splits or 
bonus issues, but if they think investors are that stupid then they should 
explain why.</p>

<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=11230">E. BON HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=102">Bonus issues and stock splits</a></li>
				
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