
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

<script type="text/javascript">document.title="SEHK Moves to Web Disclosure";</script>

	<div class="summary">In a long-awaited move advocated by Webb-site.com since 1999, the Stock Exchange of Hong Kong has announced plans to require full web-based disclosure for main board-listed companies through its web site. We fill in the blanks behind the proposals and note that there is still some way to go with other company filings such as shareholder circulars and reports.</div>

<h2 class="center">SEHK Moves to Web Disclosure<br>
<span class="headlinedate">26 April 2001</span></h2>
<p>In a long-awaited and very welcome move, the Stock Exchange of Hong Kong
(SEHK) has <a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2001/0424news.htm" target="_blank">announced</a>
that it will require all formal announcements by main-board listed companies to
be published in electronic form on its web site. The implementation date was not
stated, but the SFC has already approved the change to the listing rules, so it
should be soon. The second-board <a href="http://www.hkgem.com/" target="_blank">GEM</a>
market already requires this on its own web site. Sources tell <i>Webb-site.com</i>
that we should also expect the two platforms to be merged into one web site in
the not too distant future.</p>
<p>In a separate <a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2001/documents/1020401-HKEX-PA.pdf" target="_blank">announcement</a>,
the Exchange announced plans to discontinue the requirement for newspaper
announcements <i>&quot;by the second quarter of 2002&quot;</i>.&nbsp; With
internet penetration rates in Hong Kong now well over 50%, this move is likely
to be a net benefit for investors as they get more rapid disclosure, their
companies will save money on newspaper announcements and investors don't have to
buy newspapers just to find out what their companies are saying. For those
investors who do not have internet access, there are public libraries and
internet cafes which can provide it, and walk-in brokerages are sure to follow
suit.</p>
<h3>Background</h3>
<p>At present, all main-board company announcements are required to be published
in English and Chinese, each in at least one daily Hong Kong newspaper of the
corresponding language. In practice, that is a lot easier for those investors
who read English, as they only have to search the South China Morning Post and
the Hong Kong i-Mail, our only two English language local dailies.</p>
<p>Of course, the paper with the lowest circulation tends to have the lowest
advertising rates and hence attracts the most announcements - which are then the
least widely read because they are in the lowest circulation newspaper.</p>
<p>For those who can only read Chinese, it theoretically meant buying an awful
lot of newspapers every day to see all the announcements. In practice, few
people bothered. But whatever your language, there was the practical problem
that newspapers are not easily archived, are not machine-searchable and get
thrown away with the garbage. <i>Webb-site.com </i>maintains several filing
cabinets full of such announcements as it was the only way to get a complete
archive.</p>
<p>The SEHK does have a partially-built online news <a href="http://www.hkexnews.hk/listedco/listconews/sehk/search.asp" target="_blank">archive</a>,
but it only goes back to 1-Apr-99 (this is no joke) and has been severely
lacking. For example, take the results announcements. Picking a company at
random, the online version of Guangzhou Pharmaceutical's 2000 results statement
this week looks <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010423/LTN20010423022.HTM" target="_blank">like
this</a>, while the printed version in the next morning's newspaper ran to four
tabloid pages of fine print and included full financial statements, a Chairman's
statement, prospects and so on. The online version is what we call
&quot;teletext format&quot; and dates back to at least the 1980s.</p>
<p>For overseas investors, the situation was particularly unfair, since they did
not have access to HK newspapers until they arrived by plane or somebody copied
them and faxed them over. Instead, they relied on second-hand summaries from
brokers. A number of international brokerages to this day spend a lot of time
just re-writing newspaper stories and calling it their &quot;morning
report&quot; which is then faxed or e-mailed to overseas clients.</p>
<h3>Madcap proposal aborted</h3>
<p>In Sep-99, we covered the SEHK's madcap &quot;distributed disclosure&quot;
scheme to have each listed company publish the results on their own web site -
in other words, to find all of the announcements you would need to continually
search over 800 separate web sites (and hope that they were still on line and in
a file format that you could read). We <a href="pubduty.asp" target="_blank">strongly
criticised </a>the SEHK for ducking its public duty and urged them to provide a
centralised standardised platform for dissemination of all listed company
documents.</p>
<p>Well, these things never happen fast, but the SEHK published a <a href="http://www.hkex.com.hk/library/listpaper/C0331e4.doc" target="_blank">consultation
paper</a> in Apr-00 scrapping the distributed scheme in favour of a centralised
scheme and requested all listed companies to participate in a trial run from
10-Apr-00, excluding results announcements. Most have complied. The consultation
period closed on 20-May-00, and 11 months later the results were published.</p>
<h3>Access must remain free</h3>
<p>The new listing rules require all announcements to be filed electronically
and published on the SEHK web site.</p>
<p>We do hope the SEHK will resist any temptation to charge for this service and
abuse its monopoly over the collection of this data. Disclosure and listing
regulation are something which investors already pay for through a 0.005% levy
(half of the current transaction levy) and they should not have to pay twice. To
impose a charge for information on listed companies would result in the smaller
investors who have not established an account with SEHK from simply trading
without access to information - a recipe for poor uninformed investment
decisions.</p>
<h3>Competition</h3>
<p>In the USA, the disclosure function is handled by the government's <a href="http://www.sec.gov/" target="_blank">Securities
and Exchange Commission</a> (SEC) which has required on-line filing since 1996.
All information is collected and stored on a central database called <a href="http://www.sec.gov/edgar/aboutedgar.htm" target="_blank">EDGAR</a>,
and private-sector information providers have access to this database and often
present the information in a more user-friendly format. For example, see <a href="http://www.freeedgar.com/" target="_blank">FreeEdgar</a>
and <a href="http://www.tenkwizard.com/" target="_blank">10-K Wizard</a>.</p>
<p><a href="http://www.hkex.com.hk/" target="_blank">Hong Kong Exchanges and
Clearing</a>, which owns the SEHK, is a listed for-profit monopoly. We argued at
the time of its creation that the cost-centre regulation of listed companies
should have been transferred to the <a href="http://www.sfc.hk/" target="_blank">Securities
and Futures Commission</a>. We believe that eventually this will happen
(probably after another crisis), but in the meantime there is no reason why the
SEHK should have the monopoly on access to the news it collects.</p>
<p>To incentivise innovation in the way the information is presented, the SEHK
should provide open access to the raw file submissions of listed companies, so
that online media can present the information on their own sites. There can be
no argument that the SEHK has copyright on any of this - the announcements are
regulatory filings by companies and are not the property of the SEHK.</p>
<h3>What about other documents?</h3>
<p>The announcement of the new plan did not make any mention of other company
disclosures such as circulars to shareholders, annual reports and interim
reports. <b>We urge the SEHK to include all these filings as part of the online
disclosure requirement. </b>There is no reason why this cannot happen, since all
printers these days work with electronic typesetting and can easily produce
&quot;Acrobat&quot; versions for online publication, as they do for the GEM.</p>
<h3>Directors' appointments</h3>
<p>One loophole that needs closing is the disclosure of appointments and
resignations of directors. Currently the listing rules to do not require a
formal &quot;announcement&quot; to be made, but just that the changes be <i>&quot;made
public by means of a press release or such other method as the Issuer thinks
fit&quot;.</i> So the online disclosure will not capture these press releases.
There is also no requirement to provide a biography, so often you just see a
name and a date of appointment. The biography requirement is in the annual
report, but if a newly appointed director resigns before the next annual report,
he or she can avoid that requirement too. With director's biographies highly
topical at present, it would be a good time to improve this disclosure.</p>
<p><em>&copy; Webb-site.com, 2001</em></p>
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