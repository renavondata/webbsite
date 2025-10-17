
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

<script type="text/javascript">document.title="The SFC and prospectus liability";</script>

	<div class="summary">The SFC complained yesterday about deteriorating standards of sponsors' work in listing applications. Some of the blame lies with the SFC for abandoning in 2006 proposals to reform the law on prospectus liability. Until investors can effectively sue for a fraudulent prospectus, creating a stronger deterrent, the situation is unlikely to improve.</div>

<h2 class="center">The SFC and prospectus liability<br>
<span class="headlinedate">27 July 2010</span></h2>
<p>The SFC yesterday
<a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=10PR87" target="_blank">
announced</a> its latest
<a href="http://www.sfc.hk/sfc/doc/EN/speeches/public/dual/jul10.pdf" target="_blank">
dual filing update</a>, complaining about a deterioration in the standard of 
draft prospectuses submitted in listing applications. If the SFC is picking up a 
deterioration on the drafts, then it is a fair bet that the overall standard of 
final prospectuses has been declining too - because we can't expect regulators 
to detect every piece of sloppy due diligence by sponsors or every questionable 
piece of accounting.</p>
<p>However, some of the blame for the deterioration must lie at the SFC's door, 
for failing to reform the laws on prospectus liability to increase the deterrent 
for bad work by sponsors, reporting accountants, valuers and everyone else involved 
in the prospectus, including not least the applicant and its directors, of 
course. In Aug-2005 the SFC proposed reforms to the law on prospectus liability, 
but in 2006 these were abandoned under pressure from the industry.</p>
<h3>Prospectus liability</h3>
<p>On 22-Sep-06 the SFC
<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/speeches/public/consult/06/conclusions_prospectus_060922.pdf">
announced</a> that it had abandoned a proposal (Proposal 9 in the
<a target="_blank" href="http://www.sfc.hk/sfcConsultation/EN/sfcConsultFileServlet?name=prospectusregime&amp;type=1&amp;docno=1">Consultation Paper</a> on 
reforms to the prospectus regime) to allow secondary 
market purchasers to bring claims for fraud in IPO prospectuses. The entire 
price discovery process in the secondary market relies on the truth of the prospectus, and subscribers 
in the IPO have a right of recourse (subject to the limitation below), but 
anyone who purchases shares in the market from that subscriber, even on the 
first day of trading, is on their own, as if the prospectus did not exist. The 
subscriber who sells on day 1 is of course free and clear, and will not claim if 
the issuer subsequently collapses in a smoking heap of fraud, while the 
secondary buyer can't sue the seller because no representation was made by 
him in the market when he sold.</p>
<p>Another SFC proposal that was abandoned was Proposal 10, to remove the 
requirement for subscribers to prove that they actually read and relied on the 
prospectus when making a claim for fraud. Now, how many people can prove what 
they read yesterday, let alone what they read months or years ago? Do they have 
any witnesses? Of course not. Again, the relevant fact is that the IPO was 
priced on the basis of the prospectus and nothing else, and enough people read 
enough of it for the market to set that price. If the prospectus then turns out 
to be fraudulent, no victim should have to prove that he himself read it. 
It should be enough to show that if the document had been known to be false, 
then the shares would not have fetched the price they did in the primary or 
secondary market. The SFC could not find any such &quot;prove that you read it&quot; 
requirement in Australia, Singapore or the UK.</p>
<p>For these reasons, plus the lack of a <a href="classactions.asp">
class action system</a>, no IPO sponsor has ever been sued by an investor in HK, 
as far as we know,</p>
<p>Currently the only deterrent to poor due diligence work comes from the SFC, 
which may fine or discipline sponsors, or reach no-fault settlements with them. 
The largest to date is the HK$30m
no-fault
<a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=05PR17" target="_blank">
settlement</a> in 2005 with <a href="../dbpub/orgdata.asp?p=5449">ICEA Capital 
Ltd</a> in the case of <a href="../dbpub/articles.asp?p=14974">Euro-Asia 
Agricultural (Holdings) Co Ltd</a>. Another case involved
<a href="../dbpub/articles.asp?p=12067">Deloitte &amp; Touche Corporate Finance Ltd</a>, 
which &quot;voluntarily refrained&quot; from sponsoring listings for 9 months after a 
no-fault no-payment
<a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=06PR147" target="_blank">
settlement</a> in 2006 relating to its work on the listing of
<a href="../dbpub/articles.asp?p=15091">Codebank Ltd</a>, which still holds the 
record for the
<a href="../dbpub/delisted.asp?exch=GEM&amp;hide=&amp;sort1=lifeup">shortest 
listing</a> before imploding.</p>
<p>If the SFC is serious about improving the quality of sponsor's work, then it 
needs to improve the deterrent by moving ahead with the proposals it abandoned 
in 2006, and the Government must table legislative amendments to achieve this. 
Secondly, the Government must move ahead with the proposals of the Law Reform 
Commission for a <a href="classactions.asp">class action system</a> in HK, otherwise most investors will never 
be able to afford to go to court, as each individual claim is too small to 
justify the millions in potential costs for a battle which could go the Court of 
Final Appeal.</p>
<h3>Auditors have no duty of care to shareholders</h3>
<p>Apart from reforming prospectus liability, there is also the problem of the 
unreliability of audit reports after the company has listed. </p>
<p>In Jul-06, a brave individual investor
<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=53446&amp;currpage=T">
attempted to bring a court action</a> against Ernst &amp; Young, the auditors of 
Gold Wo. The Court of First Instance had no choice but to quote the House of 
Lords case
<a target="_blank" href="http://oxcheps.new.ox.ac.uk/casebook/Resources/CAPARO_1.pdf">
<i>Caparo Industries plc v Dickman and Ors</i> (1990)</a>, in which the auditors 
were held not to owe a duty of care to shareholders of the company, let alone to 
future shareholders who may buy in the market. Their only duty was to the 
company itself. The HK case was accordingly 
&quot;doomed to fail&quot; and was struck out in its entirety.</p>
<p>It is frankly ridiculous that no investor can rely on the audit report in the 
annual report when deciding to invest, or to remain invested. Only legislation 
can change this, as Deputy Judge Ian Carlson said:</p>
<blockquote>
	<p>&quot;What [the plaintiff] seeks is the sort of consumer protection which is 
	available in some of the state jurisdictions of the United States...That 
	position has not been arrived at in Hong Kong.&quot;</p>
</blockquote>
<p>Again, the Government should legislate on this, so that auditors carry the 
can for sloppy work. That doesn't escape the directors who are responsible for 
financial statements, but it would also impose a duty of care on auditors to do 
their job properly, and if they knew that they had that duty, they might be a 
bit more careful in their work.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=15091">CODEBANK LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12067">DELOITTE & TOUCHE CORPORATE FINANCE LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14974">EURO-ASIA AGRICULTURAL (HOLDINGS) COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5449">ICEA CAPITAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=97">Auditor liability</a></li>
				
				<li><a href="/dbpub/subject.asp?c=175">Prospectus liability</a></li>
				
				<li><a href="/dbpub/subject.asp?c=188">Sponsor regulation</a></li>
				
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