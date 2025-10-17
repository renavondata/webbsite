
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

<script type="text/javascript">document.title="MTR Director's Dodgy Degree (updated)";</script>

	<div class="summary">Choo-choo! From yesterday's story on Barrington University, we move down the track to unaccredited Kensington University, expelled from California and shut down by Hawaii, from which the MTR Operations Director has a degree in engineering. He is also an adjunct professor at a HK university!</div>

<h2 class="center">MTR Director's Dodgy Degree (updated)<br>
<span class="headlinedate">27 April 2010</span></h2>
<p class="revisedate"><a href="#update">Update</a> 29-May-2016</p>
<p>Following <a href="barrington.asp">yesterday's story</a> on 
Barrington University and Mengniu Dairy, today's Dodgy Degree award goes to 
Andrew McCusker, the Operations Director of
<a href="../dbpub/orgdata.asp?p=11569">MTR Corporation Limited</a> (<strong>MTRC</strong>, 0066), the 
Government-controlled railway operator. He &quot;holds a degree in Mechanical 
Engineering from the Kensington University in the United States&quot;.</p>
<p>Kensington University, Inc. (<strong>KU</strong>) was an unaccredited company 
incorporated in Hawaii and formerly known as Kensington International 
University, Inc. and Kensington University (Hawaii), Inc.. On 29-Oct-2003 KU was 
ordered by the First Circuit Court&nbsp; of Hawaii to be
<a href="http://hawaii.gov/dcca/ocp/udgi/lawsuits/kensington" target="_blank">
shut down</a> following a complaint by the Hawaii state Office of Consumer 
Protection which said:</p>
<blockquote>&quot;Defendant KU is not now or never has been accredited by a 
recognized accrediting agency or association recognized by the United States 
Secretary of Education.&quot;</blockquote>
<p>According to a series of
<a href="http://articles.latimes.com/keyword/kensington-university" target="_blank">
articles</a> in the Los Angeles Times in 1996, KU's Californian predecessor (of 
the same name) was a company founded by lawyer Alfred Calabro and was once 
operated from an office in Glendale, California, but was ordered to be closed by 
the state's Council for Private Postsecondary and Vocational Education (<strong>CPPVE</strong>). 
This followed a 2-year unsuccessful battle after KU submitted, for the first 
time, an application for degree-awarding status to CPPVE on 12-Jul-1993. CPPVE 
was created by California's somewhat failed effort to clean up its diploma mills 
problem in the form of the Postsecondary and Vocation Reform Act of 1989, which 
became effective on 1-Jan-1991.</p>
<p>KU eventually
<a href="http://articles.latimes.com/1996-06-27/local/me-19075_1_kensington-university" target="_blank">
fled to Hawaii</a> in 1996, and made an unsuccessful appeal in the California 
Court of
<a href="http://www.lawlink.com/research/CaseLevel3/74418" target="_blank">
Appeal</a> in 1997. In any event, CPPVE was not an accreditation agency 
recognized by the United States Department of Education or the 
<a href="http://www.chea.org/" target="_blank">Council for 
Higher Education Accreditation</a>. KU is on the Oregon Office of Degree 
Authorization
<a href="http://www.osac.state.or.us/oda/unaccredited.aspx" target="_blank">list</a> 
of unaccredited degree suppliers. It is also on the Michigan Civil Service 
Commission
<a href="http://www.michigan.gov/documents/Non-accreditedSchools_78090_7.pdf" target="_blank">
list</a> of unacceptable degrees. The Internet Archive has copies of
<a href="http://web.archive.org/web/*/http:/www.kensington.edu" target="_blank">
Kensington's old web site</a>, last updated on 23-Jun-2003. </p>
<p>Mr McCusker joined MTRC as Operations Engineering Manager in 1987. His degree was first mentioned by MTRC in the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20050921/LTN20050921016.pdf" target="_blank">
announcement</a> on 20-Sep-05 of his appointment as Operations Director. The 
degree has been repeated in each annual report, including the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100423/00066_785026/E123.pdf" target="_blank">
2009 annual report</a>. We find it somewhat mind-boggling that MTRC apparently 
repeats any credentials presented by its senior staff without bothering to 
verify the credibility of those credentials.</p>
<p>On 28-Apr-2009, MTRC put out a <a href="../codocs/McCusker090428.pdf">
press release</a> announcing that:</p>
<blockquote>&quot;Hong Kong Polytechnic University is honouring the decades of 
engineering excellence of MTR Operations Director Mr Andrew McCusker by 
appointing him as Adjunct Professor at the University for a term of three 
years.&quot;</blockquote>
<p>So now he is &quot;Professor McCusker&quot;. Mr McCusker is the only person we could 
find with a KU degree in any HK-listed company's corporate documents, so it's 
safe to say there isn't much of an almuni club in HK. He may well be a highly 
experienced and competent engineer; certainly the MTRC seems to think so; but he 
might benefit from dropping his claim to a degree in engineering.</p>
<h3 id="update">Update, 29-May-2016</h3>
<p>Almost 6 years on from this story, and despite <em>Webb-site Reports</em> having 
pointed it out to HK Polytechnic University on 22-Feb-2016, its web site still lists Mr 
McCusker (now
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0621/LTN20100621288.pdf" target="_blank">
retired</a> from MTRC) under "Adjunct Staff" as follows:</p>
<a href="http://www.ee.polyu.edu.hk/en/people.php" target="_blank">
<img class="center" alt="Andrew McCusker at PolyU" src="../images/McCuskerPolyU160529.png"></a>
<p>However, they have edited his 
<a href="http://www.ee.polyu.edu.hk/en/people_detail.php?name=AndrewMcCusker&amp;cid=10&amp;id=94" target="_blank">biography</a> to remove a claim,
<a href="https://web.archive.org/web/20151109074144/http://www.ee.polyu.edu.hk/en/people_detail.php?name=Chi-waiYU&amp;cid=10&amp;id=94" target="_blank">seen in the internet archive</a>, that:</p>
<blockquote>"Mr McCusker holds a degree in Mechanical Engineering from the 
Kensington University in the United States and is a chartered member of both the 
Institution of Mechanical Engineers of the United Kingdom and the Chartered 
Institute of Personnel and Development (U.K.)."</blockquote>
<p>According to the Institution of Mechanical Engineers
<a href="http://www.imeche.org/membership-registration/become-a-member/chartered-engineer" target="_blank">
web site</a>, you normally need at least a bachelor's degree to become a Chartered 
Engineer - and presumably they mean a real one.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=11569">MTR CORPORATION LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=57680">McCusker, Andrew</a></li>
				
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