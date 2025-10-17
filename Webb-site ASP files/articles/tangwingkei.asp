
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<title>Webb-site Reports</title>
<style type="text/css">
.auto-style1 {
	margin-left: 40px;
}
</style>
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

<script type="text/javascript">document.title="Deception behind the Companies Registry paywall";</script>

	<div class="summary">On International Open Data Day, we reveal a network of knock-off companies using the CIBC, Credit Suisse and BNP brands, based in HK with subsidiaries in the UK and New Zealand. If those registries were not free and open, the deception would remain undiscovered. We call on HK Registrar Ada Chung to tear down this paywall.</div>

<h2 class="center">Deception behind the Companies Registry paywall<br>
<span class="headlinedate">5 March 2016</span></h2>

<p>In the course of investigating problems at the HK Companies Registry, 
Webb-site has discovered a deceptive and potentially fraudulent pattern of behaviour involving 
a person who often goes by the name of "KEI, Tang Wing" but whose name is probably "William TANG Wing 
Kei" (<strong>Mr Tang</strong>), Tang being a common HK surname while Kei is 
not. </p>
<p>The paywall on the HK Companies Registry facilitates this kind of deception 
by making it impossible to check documents or directorships without payment of 
fees, and we're not paying to find out how far this mess extends in HK, but we
<em>can</em> tell you about the UK and New Zealand. Ironically, today, 
5-Mar-2016, is
<a href="https://www.facebook.com/events/806570022782598/" target="_blank">
International Open Data Day</a>!</p>
<p>What started our investigation was a UK company registered in HK on 14-Sep-2012 under the name "CIBC 
FINANCE LTD", HK number F0019373. The HK registry is out of date. Looking up that 
name
<a href="https://beta.companieshouse.gov.uk/company/08137674" target="_blank">in 
the UK registry</a>, which is open and free, we found that it changed its name on 
15-May-2015 to "BANGKO FIRST CREDIT LTD." and again on 23-Dec-2015 to "EURO EXIM 
BANGKO LIMITED". We have <a href="../dbpub/orgdata.asp?p=1954107">updated our 
record</a> in Webb-site Who's Who accordingly. Between those two dates, the 
company filed an annual return in HK without updating its name.</p>
<p>The UK registry shows (without payment) that the director is "Tang Wing KEI", 
born 4-Sep-1957, and lists his
<a href="https://beta.companieshouse.gov.uk/officers/0DiI09Z5FepyQVwJn8sFBgUEWTk/appointments" target="_blank">
16 directorships</a>. Now the pattern emerges. 5 of the companies' names were 
changed by the UK Company Names Tribunal, after applications from Canadian 
Imperial Bank of Commerce (<strong>CIBC</strong>) and CIBC World Markets Plc, so 
their names are now their respective incorporation numbers followed by the word 
"Limited". You can see why:</p>
<table class="txtable center">
	<tr>
		<th>Past name</th>
		<th>Current name</th>
	</tr>
	<tr>
		<td>CIBC SAVING LTD</td>
		<td>08149022 LTD</td>
	</tr>
	<tr>
		<td>C.I.B. CORP LTD</td>
		<td>08208819 LTD</td>
	</tr>
	<tr>
		<td>CIB CREDIT LTD</td>
		<td>08209545 LTD</td>
	</tr>
	<tr>
		<td>CIB CREDIT AND SAVING LTD</td>
		<td>08209637 LTD</td>
	</tr>
	<tr>
		<td>CIBC AG LTD</td>
		<td>08290830 LTD.</td>
	</tr>
	<tr>
		<td>CIBC SAVINGS AND CREDIT CORP LTD</td>
		<td>CI SAVINGS AND CREDIT LTD.</td>
	</tr>
	<tr>
		<td>CIBC SAVINGS AND CREDIT LTD</td>
		<td>COMMERCIAL &amp; INDUSTRIAL BANGKO LIMITED</td>
	</tr>
	<tr>
		<td>CIBC CREDIT N SAVING CORP LTD</td>
		<td>CREDIT &amp; INVESTMENT BANQUE LTD.</td>
	</tr>
	<tr>
		<td>CIBC BANCORP LIMITED</td>
		<td>CREDIT AND INVESTMENT BANGKO CORP LTD.</td>
	</tr>
	<tr>
		<td>CIBC UK LTD</td>
		<td>CREDIT BONDS LTD.</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>CREDIT BOSTON LTD</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>CREDIT SUISSE BANCORP LTD</td>
	</tr>
	<tr>
		<td>CIBC FINANCE LTD</td>
		<td>EURO EXIM BANGKO LIMITED</td>
	</tr>
	<tr>
		<td>CIBC CREDIT CORP LTD</td>
		<td>GRAND METRO INVESTMENT INC. LTD</td>
	</tr>
	<tr>
		<td>CIBC CREDIT &amp; FINANCE LTD</td>
		<td>POINT CREDIT AND SAVING LTD</td>
	</tr>
	<tr>
		<td>CIBC CREDIT LIMITED</td>
		<td>SUISSE CREDIT CAPITAL UK LTD</td>
	</tr>
</table>
<p>Mr Tang has also been active in New Zealand, where he registered two UK companies as overseas companies. Like the UK, the New Zealand registry is 
also free and open. The two companies' records are at these links:
<a href="https://www.business.govt.nz/companies/app/ui/pages/companies/3905336" target="_blank">
CIBC CREDIT LIMITED</a> and
<a href="https://www.business.govt.nz/companies/app/ui/pages/companies/4331078" target="_blank">
BNP CREDIT &amp; SAVING LIMITED</a>. As shown in the table above, the first of these companies has changed its name 
(without telling New Zealand) to the equally misleading "SUISSE 
CREDIT CAPITAL UK LTD", a play on the brand of the real Swiss bank Credit Suisse, 
while the BNP knock-off (a play on real French bank BNP Paribas) is 
<a href="../dbpub/orgdata.asp?p=2542993">still under that name</a> in the UK, although the director 
is named "<a href="https://beta.companieshouse.gov.uk/officers/ludvUNfOjLUah7YFQQgrlBdqpqE/appointments" target="_blank">Kei 
Wing TANG</a>", so that makes 17 companies.</p>
<p>One of the above firms, CIBC Bancorp Ltd, was the subject of a
<a href="http://www.fca.org.uk/news/warnings/cibc-bancorp-ltd" target="_blank">
warning</a> of possible unauthorised activities by the UK Financial Conduct 
Authority on 22-Sep-2011.</p>
<p>Incidentally, there is also a HK company incorporated on 11-Jun-2013 called
<a href="../dbpub/orgdata.asp?p=2082770">SUISSE CREDIT CAPITAL LIMITED</a> which 
may or may not be related. We're not paying the registry to find out. A similar-named company, <a href="../dbpub/orgdata.asp?p=1948118">Credit &amp; 
Investment Bancorp Corporation Ltd</a>, was incorporated in HK on 3-Sep-2012. 
Another one, CIBC AG Finance Ltd, was incorporated in HK on the same day and 
changed its name to <a href="../dbpub/orgdata.asp?p=1947983">LC Services (Asia) 
Ltd</a> (<strong>LCSA</strong>) on 19-Aug-2014. The "AG" is a nice touch, making 
it sound like a German subsidiary. There was also a HK firm called
<a href="../dbpub/orgdata.asp?p=1825588">CIBC BANCORP ASIA LIMITED</a> 
incorporated on 10-Nov-2011 and struck off on 14-Aug-2015.</p>
<p>For several of the UK knock-offs, the address of the company is in London's 
East End at "Office 3, 3rd Floor, 148 Cambridge Heath Road, London E1 5QJ". That 
address is shown on <a href="http://www.mailbox4u.co.uk/" target="_blank">
www.mailbox4u.co.uk</a>, which says it was established in 1996 by Leonard 
Cosgrove. The domain is
<a href="http://www.nominet.uk/whois/?query=mailbox4u.co.uk" target="_blank">
registered</a> to "Len Mailing Address Service".</p>
<h3>Max Vision Finance</h3>
<p>All 17 companies were incorporated with only one shareholder,
<a href="../dbpub/orgdata.asp?p=1391183">Max Vision Finance Limited</a> (<strong>MVF</strong>), 
incorporated in HK on 4-Jun-2008. The shareholder and Mr Tang's address is given 
as "Room 905, Tung Ming Commercial Bildg, 40-42 Des Voeux Road, Central, Hong 
Kong". Allowing for typos, that is "Tung Ming Building".</p>
<p>Also at that address or the adjacent unit 906, each with a director called 
"William Tang" in the Trade Development Council directory, are:</p>
<ul>
	<li><a href="../dbpub/orgdata.asp?p=1141937">Kent Star Trading Ltd</a>, 
	incorporated in HK on 7-Sep-2005, and in the 	<a href="http://www.hktdc.com/sourcing/hk_company_directory.htm?companyid=1X073NTA&amp;locale=en" target="_blank">
	TDC directory</a></li>
	<li><a href="../dbpub/orgdata.asp?p=1165719">East Light Industries (HK) Ltd</a>, 
	incorporated in HK on 10-Jan-2006, and in the 	<a href="http://www.hktdc.com/sourcing/hk_company_directory.htm?companyid=1X09DLOL&amp;locale=en" target="_blank">
	TDC directory</a></li>
	<li><a href="../dbpub/orgdata.asp?p=1243218">British Dubai Incorporation Ltd</a>, 
	incorporated in HK on 16-Dec-2006, and in the
	<a href="http://www.hktdc.com/services-suppliers/British-Dubai-Incorporation-Ltd/en/1X00GTF6/" target="_blank">
	TTDC directory</a></li>
	<li><a href="../dbpub/orgdata.asp?p=1398255" target="_blank">BDI (HK) Ltd</a>, 
	incorporated in HK on 27-Jun-2008, and in the 	<a href="http://www.hktdc.com/manufacturers-suppliers/BDI-HK-Limited/en/1X07WBHM/" target="_blank">
	TTDC directory</a></li>
	<li><a href="../dbpub/orgdata.asp?p=1663687">MSB Trading International Ltd</a> 
	(<strong>MSB Trading</strong>), incorporated in HK on 9-Sep-2011 and in the
	<a href="http://www.hktdc.com/services-suppliers/MSB-TRADING-INTERNATIONAL-LIMITED/en/1X08P1FI/" target="_blank">
	TDC directory</a></li>
</ul>
<p>There 
is a web site for LCSA at
<a href="http://68bank.wix.com/msbtrading" target="_blank">68bank.wix.com/msbtrading</a> which gives an e-mail address at cibc-bancorp.com 
(matching the old name of LCSA), and includes a "message from the Chairman", William 
Tang.</p>
<p>Is William Tang the same person as TANG, Wing Kei? What makes this 
almost certain is the discovery of an 18th UK company,
<a href="../dbpub/orgdata.asp?p=2542994">SUISSE CAPITALS (UK) LTD</a>, at the 
same London address, the director and only shareholder of which is "William 
Tang", with the same date of birth as Kei Tang Wing, and the 2014 accounts were 
signed by "Wing Kei Tang". This company has a web site at
<a href="http://www.suisse-capitals.com" target="_blank">suisse-capitals.com</a>, 
a domain registered to "Max Vision Finance". The web site appears to promote 
letters of credit from an address in London but with a building name and street 
address that belongs to an office block in Coventry that&nbsp;
<a href="http://www.bbc.com/news/uk-england-coventry-warwickshire-29640988" target="_blank">
was demolished</a> in 2014.</p>
<p>According to the Gazette, MVF <a href="http://www.gld.gov.hk/egazette/pdf/20081232/egn200812325426.pdf" target="_blank">
applied for</a> a money-lenders licence in Aug-2008. According to
<a href="http://www.cr.gov.hk/en/public/docs/ml_list3.pdf" target="_blank">a 
list</a> at the Companies Registry, the application was withdrawn. The list does 
not say when.</p>
<h3>Ms Chung, tear down this paywall</h3>
<p>If the UK and New Zealand registries still charged to find directors and 
documents, we would never have uncovered this deception. HK is the odd one out. 
The Companies Registry, led since 2007 by <a href="../dbpub/positions.asp?p=2322558">Ada Chung Lai Ling</a>, in the year to 31-Mar-2015
<a href="http://www.cr.gov.hk/docs/ar/2015/08_e.pdf" target="_blank">booked a 
profit</a> of HK$263m on turnover of HK$548m. That is an obscene, monopolistic 
profit margin. Of the turnover, search and copying fees were HK$73m, so it would 
still be hugely profitable without search fees. So Ms Chung, in the words of 
Ronald Reagan in Berlin, "<a href="https://www.youtube.com/watch?v=xfZgR5KOIXs" target="_blank">open 
this gate...tear down this wall</a>". Open the data to public scrutiny as the UK 
and New Zealand have done.</p>
<p>Government should be run for-people, not for-profit. As the Financial 
Secretary said in his budget last month:</p>
<p class="auto-style1">"Unless justified on policy ground, all fees and charges 
for government services have been set in accordance with the "cost-recovery" and 
"user pays" principles."</p>
<p>Given that the most efficient way to store company records is digitally, the 
Companies Registry would store all the data on servers even if the register 
were not open to searching, so adding the online search facility is only a 
marginal expense, certainly far less than HK spends on things like public parks 
and free wi-fi. Given the public interest and the economic benefits of 
transparency in terms of reduced fraud and corruption and ease of business, the 
search fees should be abolished and the filing fees cut until the registry 
operates at break-even. The HK public should not have to pay the Government in 
order to check whether they are dealing with the "real" CIBC, Credit Suisse or 
BNP.</p>

<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2542986">08149022 LTD</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2542961">08208819 LTD</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2542960">08209545 LTD</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2542959">08209637 LTD</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2542958">08290830 LTD.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1398255">BDI (HK) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1243218">BRITISH DUBAI INCORPORATION LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2542987">CI SAVINGS AND CREDIT LTD.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1825588">CIBC BANCORP ASIA LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2542962">COMMERCIAL & INDUSTRIAL BANGKO LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1948118">Credit & Investment Bancorp Corporation Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2542963">CREDIT & INVESTMENT BANQUE LTD.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2542992">CREDIT AND INVESTMENT BANGKO CORP LTD.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2542991">CREDIT BONDS LTD.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2542989">CREDIT BOSTON LTD</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2542990">CREDIT SUISSE BANCORP LTD</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1954107">EURO EXIM BANGKO LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2082770">FORTURN LAND INVESTMENT AND TRADING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2542964">GRAND METRO INVESTMENT INC. LTD</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2322557">HKSAR Companies Registry</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1391183">MAX VISION FINANCE LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1809951">MSB TRADING INTERNATIONAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1947983">NEW CASTLE TECHNOLOGY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2542988">POINT CREDIT AND SAVING LTD</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1141937">SKYER DEVELOPMENT COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2542994">SUISSE CAPITALS (UK) LTD</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2542957">SUISSE CREDIT CAPITAL UK LTD</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2322558">Chung, Ada Lai Ling</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2542956">Tang, William Wing Kei</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
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