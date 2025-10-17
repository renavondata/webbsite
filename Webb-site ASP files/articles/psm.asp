
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

<script type="text/javascript">document.title="Enigma fallout: the social media fund";</script>

	<div class="summary">We piece together disclosures by 4 listed companies in the Enigma Network to reveal a pseudo-fund which held a single 55% stake in a social media company, posing new questions for the regulators.</div>

<h2 class="center">Enigma fallout: the social media fund<br>
<span class="headlinedate">28 April 2019</span></h2>
<p>Another piece of debris from the <a href="../dbpub/subject.asp?c=136">Enigma Network</a> has come to light. 
At least 4 of the listed companies, and possibly more, have or had stakes in a 
purported "fund" managed by another network member, <a href="../dbpub/articles.asp?p=58895">Convoy Global 
Holdings Ltd</a> (<strong>Convoy</strong>, 1019). The so-called fund made a 
single investment in 55% of an unidentified HK social media company, before 
disposing of it, causing nearly-complete impairment losses to at least 2 of the 
investors. And now, after the impairments, Convoy has offered to buy out some or 
all of the shares, on deferred payments over 33 months.</p>
<h3>Power Financial</h3>
<p>On 6-Mar-2019, Enigma member <a href="../dbpub/articles.asp?p=4951">Power 
Financial Group Ltd</a> (<strong>PF</strong>, 0397)
<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2019/0306/LTN201903061280.pdf" target="_blank">
announced</a> that it had disposed of 4,075.809 shares in an unnamed Cayman fund 
to an unnamed company incorporated in HK for HK$36.59m ($8977.87/share), with 
only 1/12 payable on 29-Mar-2019 and the rest in 33 equal instalments at the end 
of each month up to Dec-2021. On the evening of the announcement, Webb-site 
complained to SEHK that PF had failed to identify the fund, the purchaser and 
the beneficial 
owner of the purchaser. </p>
<p>On 11-Mar-2019, PF
<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2019/0311/LTN201903111012.pdf" target="_blank">
announced</a> that the fund is named <a href="../dbpub/articles.asp?p=23099506">
Promising Social Media Private Equity Fund</a> (<strong>PSM</strong>) and its 
manager is <a href="../dbpub/orgdata.asp?p=23099560">Convoy Fund Management Ltd</a> 
(<strong>CFM</strong>), which had represented to PF that the only asset of PSM 
at 31-Dec-2017, valued at approximately HK$87m, was:</p>
<blockquote>&nbsp;"its 55% equity interest in a company which operated in the 
field of multi-media, social media and internet-related business in Hong Kong".</blockquote>
<p>Not so much a fund as a holding company then. 
According to the calendar 2017 audited financial statements of PSM (dated 
7-Dec-2018, which makes them pretty late), after the end of 2017, PSM "had 
disposed of its 55% equity interest in the said company." CFM had not provided 
PF with any details of PSM's investments subsequent to 31-Dec-2017.</p>
<p>PF states that it had 3,522.108 shares in PSM at the end of 2015 and 2016, 
and 4,075.809 shares at 31-Dec-2017, so it must have acquired an extra 553.701 
shares in 2017. It was carrying the position in its books at $9,040.79/share at 
31-Dec-2017 and PSM had a net asset value of $8,977.87/share at that date.</p>
<p>The second announcement named the buyer as Convoy Collateral Ltd (<strong>CC</strong>), 
a 100% subsidiary of Convoy. It didn't mention that Convoy 
also owns 100% of CFM.</p>
<h3>China Demeter</h3>
<p>On 15-Mar-2019, another Enigma member,
<a href="../dbpub/articles.asp?p=13526">China Demeter Financial Investments Ltd</a> 
(<strong>CDF</strong>, 8120),
<a href="http://www3.hkexnews.hk/listedco/listconews/GEM/2019/0315/GLN20190315059.pdf" target="_blank">
announced</a> that it had sold 736.217 shares in PSM to CC, on the same terms 
that PF had announced. The 2017 audit report on CDF had been
<a href="http://www3.hkexnews.hk/listedco/listconews/GEM/2018/0511/GLN20180511161.pdf" target="_blank">
qualified</a> because of the uncertainty over the valuation of its shares in 
PSM, although the fund had not previously been named.</p>
<p>So that makes 2 sellers revealed.</p>
<h3>Finsoft</h3>
<p>Now we go back to an
<a href="http://www3.hkexnews.hk/listedco/listconews/gem/2017/0621/GLN20170621023.pdf" target="_blank">
announcement</a> on 21-Jun-2017 by <a href="../dbpub/articles.asp?p=2019649">
Finsoft Financial Investment Holdings Ltd</a> (<strong>Finsoft</strong>, 8018) 
coughing up details of its investments which it had failed to include in its 
2016 annual report. This disclosed that it had originally subscribed 360 shares 
in PSM for HK$3.5m ($9,723.399/share) as part of an offering of 4,990,000 shares 
and that PSM's net asset value at 31-Dec-2016 was $9,763.622/share. It would appear that 
either the total number of shares in the offering was wrong, or they were trying 
to raise the enormous amount of HK$48.52bn. The announcement stated that PSM was 
previously named "Convoy Social Media Private Equity Fund".</p>
<p>Finsoft's 
<a href="http://www3.hkexnews.hk/listedco/listconews/gem/2017/0810/gln20170810045.pdf" target="_blank">interim report</a> at 30-Jun-2017 put the NAV of PSM at $9,040.793 per 
share. Finsoft's 2017
<a href="http://www3.hkexnews.hk/listedco/listconews/gem/2018/0329/gln20180329043.pdf" target="_blank">
annual report</a> states that "due to the uncertainty in the prospect of this 
investment" it had fully impaired it during 2017.</p>
<h3>Universe Entertainment</h3>
<p>Now we turn to the 31-Dec-2017
<a href="http://www3.hkexnews.hk/listedco/listconews/sehk/2018/0328/ltn20180328630.pdf" target="_blank">
interim report</a> of <a href="../dbpub/articles.asp?p=9479">Universe 
Entertainment and Culture Group Co Ltd</a> (<strong>UEC</strong>, 1046). This 
reveals (p65,68) that it held 1,982 shares (then 21.03%) of PSM, which it valued 
at $17.92m with no impairment. It also discloses that PSM was incorporated on 
5-Feb-2014 and "commenced operation" on 29-Apr-2015.</p>
<p>However, in its
<a href="http://www3.hkexnews.hk/listedco/listconews/sehk/2018/1030/ltn20181030341.pdf" target="_blank">
annual report</a> at 30-Jun-2018 (p13-14), UEC made an impairment charge of 
$17.34m, reducing its valuation of the 21.08% PSM stake to $0.581m. There was no 
mention of PSM in the next interim report at 31-Dec-2018, probably because it 
was then too small.</p>
<h3>Stakes</h3>
<p>If UEC has its percentage stake right, then there are about 
9,425 shares in issue. The holdings in PSM were (rounded to the nearest 
share):</p>
<table class="numtable center fcl c2l">
<tr>
	<th>Stock<br>code</th>
	<th>Holder</th>
	<th>Shares</th>
	<th>Stake %</th>
</tr>
<tr>
	<td>0397</td>
	<td>PF</td>
	<td>4076</td>
	<td>43.25</td>
</tr>
<tr>
	<td>1046</td>
	<td>UEC</td>
	<td>1982</td>
	<td>21.03</td>
</tr>
<tr>
	<td>8120</td>
	<td>CDF</td>
	<td>736</td>
	<td>7.81</td>
</tr>
<tr>
	<td>8018</td>
	<td>Finsoft</td>
	<td>360</td>
	<td>3.82</td>
</tr>
<tr>
	<td>&nbsp;</td>
	<td>Others</td>
	<td>2271</td>
	<td>24.09</td>
</tr>
<tr>
	<td>&nbsp;</td>
	<td>Total</td>
	<td>9425</td>
	<td>100.00</td>
</tr>
</table>
<h3>Questions for regulators</h3>
<ol>
	<li>The PF announcement states that the offer for the PSM shares was conditional on 
6 holders (including PF) accepting on the same terms. We've only found 2 of 
the sellers and 4 holders, so that's the first question - who were the other 
	sellers and holders?</li>
	<li>What was the single investment of PSM, a 55% stake in a "company which 
	operated in the field of multi-media, social media and internet-related 
	business in Hong Kong"? At what price did PSM dispose of the 55% stake after 
	2017, and to whom, given that this seemed to cause a massive impairment in 
	the value of PSM, according to both Finsoft and UEC?</li>
	<li>Given that Finsoft totally impaired its investment in 2017 and UEC 
	impaired almost all of its investment on 30-Jun-2018, in each case, is 
	Finsoft/UEC one of the 6 sellers to Convoy's subsidiary, CC? If so, will it 
	record a gain on the sale? If not, then did Finsoft/UEC already sell its PSM shares to someone else, and on what 
	terms? Has anyone else benefited from the impairment followed by the sale of 
	shares to Convoy?</li>
	<li>Why is Convoy taking 33 months to pay for the PSM shares? Given the timing 
	of the sales announcements, was this simply a way of cleaning up the balance 
	sheets of the listed companies to avoid a qualified audit report for 2018?</li>
</ol>
<p><em>&copy; Webb-site.com, 2019</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=13526">China Demeter Financial Investments Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=996590">CONVOY COLLATERAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=23099560">Convoy Fund Management Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=58895">Convoy Global Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2019649">Finsoft Financial Investment Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4951">Minerva Group Holding Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=23099506">Promising Social Media Private Equity Fund</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9479">Universe Entertainment and Culture Group Company Limited</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=136">Enigma Network</a></li>
				
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