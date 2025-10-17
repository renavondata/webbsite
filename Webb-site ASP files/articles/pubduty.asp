
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

<script type="text/javascript">document.title="SEHK Ducks Publication Duty";</script>

	<div class="summary">The Stock Exchange of Hong Kong, soon to be part of a profit-making listed entity, has proposed that listed companies be required to publish their corporate documents on their own web sites. We see this as a blatant attempt to relinquish responsibility for the centralised publication and storage of information, a responsibility that the Exchange has yet to fulfill.</div>

<h2 class="center">SEHK Ducks Publication Duty<br>
<span class="headlinedate">16 September 1999</span></h2>
<p>In an
<a target="_blank" href="http://www.irasia.com/regbod/hk/sehk/press/p990913.htm">announcement</a> on 13-Sep-99, the Stock Exchange of Hong Kong
said it proposed that all listed companies should be required to have their own
web site. The announcement stated: </p>

<blockquote>

<p>&quot;It is intended that the website should contain all of the
listed issuer's listing-related announcements, circulars, interim and annual
reports and results and other items currently required under the Exchange
Listing Rules to be published in the newspapers or sent to its shareholders, in
addition to any other information which a listed issuer may wish to place on its
website.&quot; </p>

</blockquote>

<p>At <i>Webb-site.com</i>, we see this as a blatant attempt by the
SEHK to relinquish responsibility for the centralised publication and storage of
information on the companies it lists. We are all in favour of listed companies publishing web sites and
improving disclosure, and this practice should be encouraged,
but what we need most is a central information warehouse for the formal reports,
announcements and circulars which are produced under the listing rules. </p>

<h3>A History of Poor Disclosure</h3>

<p>Hong Kong has suffered, and continues to suffer, from a lack of
access to published information on listed companies. Company announcements, for
example, appear in the newspapers (if you buy the right one) and are then thrown out with the garbage. The
Stock Exchange does not maintain an archive of these announcements for public access, either
in hard copy or soft (electronic) form. At <i> Webb-site.com</i> and at research
houses all over town, we each have to maintain our own hard-copy library of these
announcements in order to know what has happened since the last annual report.
Maintaining a library is not something the general public has the time or
inclination to do. We also waste time and space collecting our own library of
hard-copy annual reports and circulars. </p>

<p>So the general public trades on rumour and erroneous press
reports. The SFC and SEHK are constantly asking companies to explain movements
in their share prices, but they seem to ignore the fact that rumour is all that
most people have to go on. Give people the facts, readily accessible, and
rumours will be less influential on prices. </p>

<h3>Annual Reports</h3>

<p>Recently the SEHK has made available for sale CD-ROMs of annual reports
and shareholder circulars, but these lack the immediacy of the internet, and the
storage is in the crudest form - a low-resolution black and white scanned image
which is not always legible when companies have used colour art work. It is like
looking at third-generation faxes. Currently the latest CD-ROM
only contains reports for periods ended in 1997 and circulars published in 1998. That's
ancient history - good for
historians and journalists, but of limited use for most investors. And it's not
on the web - we each have to buy our own set of CDs, lovingly burnt onto
Recordable CDs at HK$2,400 per set (or HK$1,800 for circulars). Don't expect to
find them in HMV. </p>

<p>There is a start-up web site called <a href="http://annualreport.com.hk/">AnnualReport.com.hk</a>,
which has a limited number of more recent annual reports on-line in the Portable
Document Format (PDF) which can be read by free Adobe Acrobat readers.&nbsp;That's
the same format used by the Stock Exchange of Singapore. Congratulations to the
start-up, but we should not be relying on the private sector to do something
which only needs to be done once. Private companies can go in and out of
business, and introduce charges for their services, while the SEHK will be in
operation as long as it has a stock exchange to run. </p>

<h3>Singapore sets a standard</h3>

<p>For an example of how an exchange should publish information,
look no further than the home page of the <a href="http://www.ses.com.sg/" target="_blank">Stock
Exchange of Singapore</a> (SES). There you will find a centralised electronic archive of
prospectuses, annual and interim reports, shareholder circulars and
announcements, updated in real time. It's not perfect, but it is streets ahead of
Hong Kong's system.&nbsp; </p>

<p>Not only that, but the SES also provides free real-time quotes
and historic share price graphs for every stock in Singapore. In Hong Kong, real-time data is
charged for and available only to information vendors for resale to the public,
while historic data is available only on CD-ROMs at prices out of reach of the
general public (HK$2,000 per quarter-year for daily prices). The SEHK does not even
calculate adjusted historic stock prices (with adjustments for bonus issues, stock splits
and so on), leaving information vendors to figure this out independently. So
charts may differ from one vendor to another. </p>

<p>Another example is in the USA, where all regulatory filings can
be found (in plain text format) at the <a href="http://www.sec.gov/edgarhp.htm" target="_blank">EDGAR</a>
system maintained by the Securities and Exchange Commission. Other companies
have produced better interfaces to the system, such as <a href="http://www.freeedgar.com/" target="_blank">FreeEdgar.com</a>. </p>

<h3>What we Need</h3>

<p>The proposal by the SEHK to require companies to publish their
own documents on web sites is a recipe for chaos. Each company may use a
different format, very few of the documents would be machine readable, and there
will always be some sites out of action, particularly if the listed company in
question is not paying its bills due to financial difficulty. That is often the
time when their share prices are most volatile as they effectively become
options on survival. That's when we need information most. </p>

<p>So we need a centralised on-line database, sponsored by the
SEHK, which should include: </p>

<ul>
  <li>
    <p>all announcements, released on a real-time basis and in a
    full-text searchable archive. The Exchange may require listed companies to
    submit electronically via a secure internet-based system;</li>
  <li>
    <p>all annual and interim reports</li>
  <li>
    <p>all shareholders circulars</li>
</ul>

<p>The reports and circulars should be made available in a
standardised format such as PDF or HTML/XML. </p>

<p>The SEHK has shown through its lethargic progress over the years
that it lacks the internal ability to produce such a site. Therefore it should
publish a specification, invite tenders, and sub-contract the site maintenance
on a regular short-term contract basis, perhaps 2 years at a time. </p>

<p>The costs of running the site should be met out of listing fees
and transaction levies. Better corporate transparency tends to lead to a higher
quality market, which should increase both of these revenue streams in the long
run. We can't help wondering whether the Exchange's proposal is partly motivated
by a desire to reduce costs and maximise profits as a listed entity. By seeking
to bounce all the publication responsibility back to the listed companies, it
avoids incurring costs itself. </p>

<p>Until we have better access to published information, the
Exchange and the SFC have no right to complain about people trading on rumours. </p>

<hr>
<h3>Related article</h3>
<p><a href="http://www.aimskl.com/Apollo/F990916.htm" target="_blank">Opacity,
the Asian Way?</a> - Claire Barnes, Apollo Investment Management, 16-Sep-99.</p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=134">Electronic filing</a></li>
				
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