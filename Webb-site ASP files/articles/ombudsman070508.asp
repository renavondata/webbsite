
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

<script type="text/javascript">document.title="Complaint to the Ombudsman";</script>

	<div class="summary">Webb-site.com editor David Webb has filed this complaint with the Ombudsman regarding the black-out of addresses of individual election donors, which makes it impossible to identify many of them by their incomplete or non-unique names alone.</div>

<h2 class="center">Complaint to the Ombudsman<br>
<span class="headlinedate">8 May 2007</span></h2>
<p class="revisedate"><a href="#update">update</a></p>
<p>Dear Sir/Madam,</p>
<p>Under the 
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc?OpenView&Start=551&Count=55&Expand=551.1">
Elections (Corrupt and Illegal Conduct) Ordinance</a> 
(<b>ECICO</b>), the donor of any amount over HK$1,000 (US$128) must provide his 
name and address for a 
<a target="_blank" href="http://www.eac.gov.hk/pdf/chief/2007/2007ce_reoc2.pdf">
receipt</a>, otherwise the donation cannot 
be used for election expenses. Those receipts, and a summary schedule of names, 
addresses and amounts donated, must then be filed with the Government within 30 
days of the election using a 
<a target="_blank" href="http://www.eac.gov.hk/pdf/chief/2007/2007ce_reoc1.pdf">
standard return</a></p>
<p>Section 41 of the ECICO entitles anyone to go 
down to an <a target="_blank" href="http://www.reo.gov.hk/en/ecenter/index.htm">
office in Wanchai</a> and inspect the 
returns, or obtain a photocopy on payment of HK$0.50 per page. I quote:</p>
<blockquote>
	<p>(3) If a person asks for a <strong>copy of 
	an election return</strong> or part of a return kept under this section, the 
	appropriate authority must provide the person with such a copy, subject to 
	payment of a copying fee not exceeding an amount calculated in accordance 
	with a rate fixed in accordance with subsection (4).</p>
</blockquote>
<p>On 25-Apr-07 we exercised such statutory right, 
and asked for a copy of the election&nbsp;returns (without the supporting receipts) 
of the respective candidates for Chief Executive in the recent election.</p>
<p>The purpose of these filings on donations is 
obviously to provide transparency by enabling everyone to see which people and 
companies are financing election campaigns. For that purpose to be fulfilled, it 
must be possible to identify the donors from the information. In a shocking 
development, the Government has unilaterally 
<a target="_blank" href="../codocs/DT2007donationsOver1000black.pdf">blacked-out</a> the addresses of the 
individuals who donated, leaving only their names, which are often far from 
unique.</p>
<p>The document provided to me by the REO in 
respect of each candidate was not a copy of the election return, but a copy of a 
censored, black-lined document derived from the election return, in which the 
addresses of individual donors had been deleted. So I submit that the REO has 
broken the law by failing to comply with section 41(3) of ECICO.</p>
<p>I checked with Alan Leong who confirmed that 
the returns he submitted complied with the law, that is, the addresses were not 
blacked out, and&nbsp;I assume the same is true of the other candidate, so this 
censoring was done by the Government. Mr Leong also confirmed that his office 
did not request the black-out.</p>
<p>By comparison, in 2005's uncontested election, 
the Government 
<a target="_blank" href="../codocs/DT2005donationsOver1000.pdf">did not black-out</a> donor addresses, many 
of which were office addresses anyway. Click on the links in this e-mail to see 
scanned versions of what I received.</p>
<p>The black-out makes it much harder to identify 
the individual donors. For example, how many people in Hong Kong are called 
&quot;Richard Lee&quot; or &quot;Thomas Chan&quot;? It makes a mockery of the whole exercise.&nbsp;If 
what they provided qualifies as a &quot;copy&quot; then it logically follows that even if 
they had blacked out the entire document, it would still qualify as a &quot;copy&quot;. 
Clearly that would be nonsense. I was not given a copy of the return. I was 
given a copy of a&nbsp;black-lined document derived from the return.</p>
<p>Now you might be thinking that the Government 
will claim that the Personal Data (Privacy) Ordinance (<b>PDPO</b>) prevents 
them publishing the address. It doesn't, because the PDPO&nbsp;(which was already in 
force in 2005, the last time I obtained an uncensored election return) does not 
override other laws, such as the ECICO. We were not making a &quot;data request&quot; when 
we obtained the copy. We were exercising a statutory right to require one.</p>
<p>Also,&nbsp;even if the PDPO did apply, from a 
practical perspective, anyone who gives more than $1,000 to a politician's 
campaign&nbsp;should know that their donation and identity will be made public&nbsp;in an 
election return and that they are supplying the data for that purpose. The donor 
implicitly consents to the disclosure, and that is part of the trade-off for 
being able to donate money to politicians.</p>
<p>Please require the REO to rectify this by 
providing me with copies of the actual returns, not censored derivatives 
thereof.</p>
<p>Yours faithfully</p>
<p>____________<br>
David M Webb</p>
<hr>
<h3 id="update">Update</h3>
<p>After we filed the above complaint with the Ombudsman, the REO changed its 
mind, and provided us with copies of the original returns. The Ombudsman <a target="_blank" href="../codocs/Ombudsman071120.pdf">
wrote</a> in its response to us:</p>
<blockquote>
	&quot;we consider REO to have over-reacted...REO should have sought 
	further legal advice, before introducing any change at all to election returns, 
	as they <strong>are required</strong> for public inspection.&quot; (their emphasis)
</blockquote>
<p>Both the redacted and the clean copies of the filings can be 
found in the <a target="_blank" href="../pages/electiondisclosures.asp">Election 
Disclosures</a> section of <em>Webb-site.com</em>.</p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=27546">ELECTORAL AFFAIRS COMMISSION</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=133">Electoral reform</a></li>
				
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