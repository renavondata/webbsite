
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

<script type="text/javascript">document.title="Mengniu Dairy CEO's unaccredited MBA";</script>

	<div class="summary">Moo! Who's got a dodgy MBA then? The CEO of China Mengniu Dairy has, along with several other listed company directors we identify.</div>

<h2 class="center">Mengniu Dairy CEO's unaccredited MBA<br>
<span class="headlinedate">26 April 2010</span></h2>
<p>According to the 1-Jun-2004 IPO 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20040601/02319/EWP114.pdf" target="_blank">prospectus</a> of 
<a href="../dbpub/orgdata.asp?p=21224">China Mengniu Dairy Co Ltd</a> (<strong>Mengniu</strong>, 
2319), co-founder and then executive director 
<a href="../dbpub/positions.asp?p=21228">Yang Wenjun</a> (<strong>Mr Yang</strong>) &quot;graduated with a 
Master's degree in Business Administration from Barrington University in 2003&quot; 
- just in time for the IPO. 
The latest
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090429/LTN200904291603.pdf" target="_blank">annual report</a> (for 2008) 
repeats the claim, stating that Mr Yang, who became CEO on 27-Aug-2009, 
&quot;holds a Master's degree in Business Administration from Barrington University&quot;.</p>
<p>Barrington University, Inc. (<strong>Barrington</strong>) was a company incorporated and headquartered in Alabama and 
was owned by Virtual Academics.com, Inc. (<strong>VADC</strong>), an 
Over-The-Counter Bulletin Board stock based in Boca Raton, Florida. An
<a href="http://southflorida.bizjournals.com/southflorida/stories/2000/10/16/story2.html" target="_blank">
investigative report</a> by South Florida Business Journal (<strong>SFBJ</strong>) 
dated 13-Oct-2000 found that the location listed for Barrington's headquarters was just 
an answering, secretarial and bookkeeping service in Mobile, Alabama.</p>
<p>Barrington 
<a href="http://web.archive.org/web/20001017130020/barrington.edu/mac.asp" target="_blank">
claimed</a> that it was 
&quot;accredited&quot; by the International Association of Universities and Schools 
(<strong>IAUS</strong>) - 
but IAUS turned out to be a Florida company incorporated on 24-Feb-1998 with the 
Chairman of VADC, Robert K Bettinger, as Vice President, and its incorporation 
lapsed 19 months later for non-payment of fees. IAUS was never recognised as an 
accreditation body by the US Department of Education. The Internet Archive has 
copies of
<a href="http://web.archive.org/web/*/http://www.barrington.edu" target="_blank">
Barrington's old web site</a>, the
<a href="http://web.archive.org/web/*/http://www.virtualacademics.com" target="_blank">
VADC</a> web site and the
<a href="http://web.archive.org/web/*/www.iaus-accreditation.org" target="_blank">
IAUS</a> web site.</p>
<p>Barrington also had a &quot;private school license&quot; issued by the Department 
of Education in Alabama, but it was only when the SFBJ inquired for its story 
that the state's assistant superintendent of education sent a staff member to 
inspect the &quot;headquarters&quot; and found that the company was no longer there. 
In a follow-up story 2 weeks later, SFBJ
<a href="http://southflorida.bizjournals.com/southflorida/stories/2000/10/30/story3.html" target="_blank">
reported</a> that Alabama was threatening to revoke the licence. In any case, 
the Alabama state department license would not have constituted accreditation by 
an accreditation body recognised the US Department of Education. Barrington 
University is
<a href="http://www.michigan.gov/documents/Non-accreditedSchools_78090_7.pdf" target="_blank">
included</a> by the Michigan Civil Service Commission on its list of 
unaccredited schools, and it's also on the
<a href="http://www.osac.state.or.us/oda/unaccredited.aspx" target="_blank">
Oregon list</a> of unaccredited degree suppliers.</p>
<p>In a press release on 26-Jan-2000, VADC 
<a href="http://web.archive.org/web/20010422045159/virtualacademics.com/frames/release01-26-00.asp" target="_blank">said</a> 
that it had an exclusive agreement 
with Hubei Labor Union University, Wuhan to offer &quot;dual degrees&quot;. On 
25-Jul-2000, VADC
<a href="http://web.archive.org/web/20010421102146/virtualacademics.com/frames/people_china.html" target="_blank">
said</a> it had signed agreements for &quot;dual degree programs with 30 Peoples 
Republic of China Government Universities&quot; which were located &quot;throughout 37 
provinces in China&quot;. In fact there are only 22 or 23 provinces (if you 
exclude/include Taiwan), 5 Autonomous regions, 4 municipalities and 2 SARs, but 
who's counting?</p>
<p>In a <a href="http://www.gao.gov/new.items/d04771t.pdf" target="_blank">
report</a> on Diploma Mills dated 11-May-2004 (before Mengniu's IPO), the United States General 
Accounting Office cited Barrington University, of Mobile, Alabama, as an 
unaccredited school which offers academic credits based on life experience and 
requires no classroom instruction.</p>
<p>After the spotlight was shone on Barrington, Virtual Academics.com was 
renamed &quot;Cenuco, Inc.&quot;, and on 30-Sep-2004 it
<a href="http://www.sec.gov/Archives/edgar/data/843494/000116169704000768/ex_10-1.txt" target="_blank">
sold</a> the assets of Barrington University, Inc. to Rarefied LLC, a Georgia 
company whose President is Mr Akber Mithani, for US$1m. Barrington was later 
renamed <a href="http://www.uofa.edu" target="_blank">University of Atlanta</a>. 
It's web site says it was &quot;founded in 2006&quot;. It is now
<a href="http://www.chea.org/search/actionInst.asp?CheaID=173123" target="_blank">
accredited</a> by the Distance Education and Training Council, which is 
recognised as an accreditation agency by the Department of Education. According 
to a 2008 DETC
<a href="http://www.detc.org/downloads/publications/Fall%202008%20DETC%20News.pdf" target="_blank">newsletter</a>, The university's President is Nick Mithani and his brother Alex 
Mithani is CEO.</p>
<p>This doesn't change the fact that Barrington was an unaccredited 
entity at the time that Mr Yang &quot;graduated&quot;, 3 years after the SFBJ 
exposed the university's lack of accreditation. It's also surprising that the 
Listing Sponsor, <a href="../dbpub/adviserships.asp?p=9572">BNP Paribas Capital 
(Asia Pacific) Ltd</a>, didn't spot the problem.</p>
<h3>Other Barrington &quot;graduates&quot;</h3>
<p>Mr Yang is not the only one with a 
Barrington MBA - our research found that <a href="../dbpub/positions.asp?p=6370">
Stephen Hui Hung</a>, currently an INED of 
<a href="../dbpub/orgdata.asp?p=17959">Global Digital Creations Holdings Ltd</a> 
(8271) and 
earlier an INED of 4 other companies, &quot;furthered his studies and was conferred&quot; 
an MBA by Barrington University in 2001. He was also once the manager of the 
China Division of 
<a href="http://en.wikipedia.org/wiki/Bank_of_Credit_and_Commerce_International" target="_blank">doomed</a> Bank of Credit and Commerce International in HK.</p>
<p>Other MBA &quot;graduates&quot; of Barrington who were once directors of 
HK-listed companies include <a href="../dbpub/positions.asp?p=18288">Ian Kuok 
Cheong</a>, formerly an Executive Director of
<a href="../dbpub/orgdata.asp?p=18285">AGTech Holdings Ltd</a> (then MegaInfo 
Holdings Ltd), and <a href="../dbpub/positions.asp?p=11998">Wan Qiu Sheng</a>, 
formerly Vice Chairman of <a href="../dbpub/orgdata.asp?p=11993">China Public 
Healthcare (Holding) Ltd</a> (then Neolink Cyber Technology (Holding) Ltd).</p>
<h3>Adam Smith University</h3>
<p>Another person involved in founding the bogus accreditation outfit IAUS was 
Donald Grunewald, who served as President of another unaccredited entity,
<a href="http://web.archive.org/web/*/http://www.adamsmith.edu" target="_blank">
Adam Smith University of America</a>. Our research shows that
<a href="../dbpub/positions.asp?p=30530">Ricky Tse Wing Chiu</a>, former CEO and 
now NED of <a href="../dbpub/orgdata.asp?p=2610">Easyknit International Holdings 
Ltd</a> (1218) and <a href="../dbpub/orgdata.asp?p=489">Easyknit Enterprises 
Holdings Ltd</a> (0616), &quot;obtained&quot; an MBA from Adam Smith University of America 
in 1996.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=18285">AGTech Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11993">CHINA FORTUNE INVESTMENTS (HOLDING) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=21224">CHINA MENGNIU DAIRY COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2610">EASYKNIT INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=489">EMINENCE ENTERPRISE LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17959">GLOBAL DIGITAL CREATIONS HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=6370">Hui, Stephen Hung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=18288">Kuok, Cheong Ian</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=30530">Tse, Ricky Wing Chiu</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11998">Wan, Qiu Sheng</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=21228">Yang, Wenjun (1966)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=124">Degrees</a></li>
				
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