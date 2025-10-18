
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

<script type="text/javascript">document.title="Prudential's de facto delisting";</script>

	<div class="summary">We look at the evaporating puddle of liquidity in the dual-primary HK listing of Prudential Plc, now down to 0.08% of the company. 95% of it has drained away since last year's listing. Meanwhile, the much-trumpeted secondary listing of Brazilian iron ore giant Vale has almost dried up too, now down to 0.02% of the company.</div>

<h2 class="center">Prudential's de facto delisting<br>
<span class="headlinedate">15 February 2011</span></h2>
<p>What's that sucking sound coming from the general direction of 13th Floor, 
IFC One? That would be the sound of liquidity gradually draining away and the
<em>de facto </em>delisting of <a href="../dbpub/orgdata.asp?p=33398">Prudential 
Plc</a> (<strong>Pru</strong>, 2378) from Hong Kong.</p>
<p>Pru listed here on 25-May-2010 in connection with the proposed over-priced 
acquisition of AIA Group Ltd last year, which was eventually
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100603/LTN20100603003.pdf" target="_blank">
cancelled</a> on 3-Jun-2010 in the face of opposition from its shareholders, as 
was the rights issue to fund it. The dual primary listing in HK (the other 
primary listing is in London) was accompanied by a secondary listing in 
Singapore. So Pru has to comply with HK main board Listing Rules as well as UK 
Listing Rules.</p>
<p>Maybe it seemed like a good idea at the time, given the millions of AIA 
policyholders and hundreds of thousands of insurance agents in Asia (Pru has a 
decent-sized business too), but it was doomed from the start, with no existing 
shareholder base in HK, no public offering, and no common trading platform 
between UK and HK. Even if a few Asian employees of Prudential get some stock 
from company share schemes, that wasn't going to create a market, and they will 
more happily sell their shares in the UK, where there is a ready market.</p>
<p>Perhaps Pru had hoped that AIG would sell some of the Pru shares it 
would have received in return for AIA into the HK and Singapore market rather 
than the UK, but that prospect fell away. In any case, AIG would have been 
subject to a 12-month lock-up on the Pru shares it would receive - and after the 
lock-up, why would AIG have sold into Asia when there was a liquid market in the 
UK?</p>
<p>It takes some 11 business days to move stock between the 2 registers, or 3 
business days if you pay a premium. That's one reason why cross-border mergers 
of stock exchange owners won't produce much synergy - they remain two separate 
markets unless they have a common trading platform, common currency and 
supranational securities legislation (as EuroNext and the European Union have). 
If you can't buy in Singapore from an investor in Australia, or sell in Toronto 
to an investor in London, then merging these pairs of exchanges does not make 
much sense. But we digress - back to Pru's HK listing.</p>
<p>In a contrivance to generate liquidity, Pru organised some &quot;Designated 
Dealers...with a view to seeking to provide liquidity&quot; for a &quot;Designated Period&quot; 
in HK. Note the get-out words &quot;with a view to seeking&quot;. The Designated Dealers 
were Credit Suisse Securities (Hong Kong) Ltd, HSBC Securities Brokers (Asia) 
Ltd and J.P. Morgan Broking (Hong Kong) Ltd.&nbsp;Credit Suisse was also the listing 
sponsor. The Designated Period was from the date of listing until the date on 
which the rights issue shares began trading (fully paid) or one month after the 
HK listing, whichever was later. As the rights issue was cancelled, the 
Designated Period ran out on 25-Jun-2010.</p>
<p>The Designated Dealers arranged to borrow some shares from the UK register 
and transfer them to the HK register, so that they could be traded in HK. If 
there was enough local demand, then they could eventually close the stock 
borrowing by buying back shares in the UK and leaving the inventory in HK.</p>
<p>At the start of trading in HK, 50,974,150 shares (2.01% of Pru)
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100524/LTN20100524003.pdf" target="_blank">
had been moved</a> from the UK to HK register, but there was no public offering. 
This was never going to be enough. Liquidity always gravitates towards the 
centre, because buyers and sellers want to meet sellers and buyers, and with 98% 
of the stock still registered in the UK, it was clear what the centre was. 
That's the classic &quot;<a href="http://en.wikipedia.org/wiki/Network_effect" target="_blank">network 
effect</a>&quot; in economics. You are only going to overcome that with a new market 
if you can establish a second, self-sustaining network where the number of 
participants is large enough that the incremental benefits of migrating back to 
the original market would not overcome the inertia&nbsp; of remaining separate.</p>
<p>Take a look at the Webb-site CCASS Analysis service, which shows
<a href="../ccass/ctothist.asp?i=6007" target="_blank">how 
many shares Pru were in CCASS</a> each day since the listing. CCASS is the 
Central Clearing and Automated Settlement System owned by HKEx. Shares must be 
in CCASS in order to settle transactions on the Stock Exchange of Hong Kong. The 
number of Pru shares in CCASS declined rapidly from a high of 40,404,718 the day 
after listing (26-May-2010) to 13,601,893 at the end of the Designated Period, 
to just 2,028,611 shares on the latest date, 11-Feb-2011. That's about 0.08% of 
Pru, leaving 99.92% in the UK. So more than 95% of the initial puddle of 
potential liquidity has drained out of the HK market. Oh and by the way, that 
total in CCASS includes shares held by Citibank on behalf of the Central 
Depository (CDP) in Singapore, where there is no share register.</p>
<img class="center" alt="" src="../images/PruInCCASS.gif">
<p>They can keep paying the listing fees as long as they like, but unless they 
launch a local public offering of the stock (and why should they - that would 
dilute existing UK holders), or acquire a company with a large number of HK 
shareholders for stock, then the liquidity isn't coming back, and it is a 
listing only in name.</p>
<h3>A Brazilian gimmick</h3>
<p>We should also note that the
<a href="http://www.info.gov.hk/gia/general/201012/08/P201012080041.htm" target="_blank">
much-trumpeted</a> secondary 
<a href="http://www.hkex.com.hk/eng/newsconsul/newsltr/2011/Documents/2011-01-03-e.pdf" target="_blank">listing</a> of the ordinary and preferred-share HK 
depository receipts of Brazilian iron ore giant
<a href="../dbpub/orgdata.asp?p=62739">Vale S.A.</a> (in two classes, codes 6210 
and 6230) has also decayed rapidly and is heading into obscurity. It listed on 
8-Dec-2010 and the number of <a href="../ccass/ctothist.asp?i=6469">common 
HDRs in CCASS</a> peaked at 5,935,000 on 17-Dec-2010. It is now down to 959,100 
HDRs at 11-Feb-2011, or about 0.03% of the shares in issue. Similarly, there are 
now only 363,450 <a href="../ccass/ctothist.asp?i=6470">preferred HDRs in 
CCASS</a>, or about 0.02% of the shares in issue at listing. That's down from an 
initial 2,503,000. The &quot;Designated Period&quot; for the only Designated Dealer, J.P. 
Morgan, which also sponsored the listing, expired on 8-Feb-2011.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=33398">PRUDENTIAL PUBLIC LIMITED COMPANY</a></li>
				
				<li><a href="/dbpub/articles.asp?p=62739">VALE SA</a></li>
				
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