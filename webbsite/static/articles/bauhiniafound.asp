
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

<script type="text/javascript">document.title="Who is the Bauhinia Foundation?";</script>

	<div class="summary">We look into the Bauhinia Foundation, a tycoon-funded lobby group with an increasingly cosy relationship with Government, and the people behind it. BF refuses to disclose who funds it, or publish its accounts, claiming to be both private and a tax-exempt "trust of public character" at the same time. Who is making policy for HK - the Government, or a secretly-funded lobby group?</div>

<h2 class="center">Who is the Bauhinia Foundation?<br>
<span class="headlinedate">13 June 2008</span></h2>
<p>The <a href="../dbpub/officers.asp?p=45117">Bauhinia Foundation</a> 
(<strong>BF</strong>) has been popping up increasingly often since its launch in 
early 2006, lobbying for a range of big business-friendly proposals, and is often 
referred to as &quot;close to&quot; Donald Tsang, the Chief Executive of Hong 
Kong, yet there is no formal connection. Exactly what is it, who funds it, 
and who runs it? <em>Webb-site.com </em>digs deeper.</p>
<h3>What is BF?</h3>
<p>BF is a charitable trust exempt from tax. The
<a target="_blank" href="http://www.bauhinia.org/governance_structure.htm">
Protector</a> of the trust is Charles Ho Tsu Kwok, who controls
<a target="_blank" href="../dbpub/articles.asp?p=4943">Sing Tao News Corp Ltd</a> 
(1105), publisher of the Sing Tao and Hong Kong Standard newspapers. The web 
page also mentions his &quot;family business&quot; - but doesn't say what it is, so we'll 
remind you. His inherited family fortune is Hong Kong Tobacco Co Ltd, founded by 
his late grandfather Ho Ying Chie, who brought lung cancer to 
generations of Hong Kongers. The company understandably keeps a low profile - 
you won't find a web site.</p>
<h3>Who funds BF?</h3>
<p>To qualify for its tax exemption, (and hence to make donations to it 
tax-deductible), BF must be a <em>&quot;charitable institution or trust of a public 
character&quot;</em> under
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/e1bf50c09a33d3dc482564840019d2f4/23688a01429858c6c825648000410048">
Section 88</a> of the Inland Revenue Ordinance. As such, you might expect that 
BF would be transparent about who funds it. Not so. There is no list of 
donations or donors on its web site, and it doesn't publish its financial 
statements. Perhaps this was just an oversight, we thought, so <em>Webb-site.com</em> 
wrote to BF's Secretary-General and asked for a list of donors. Head of External Affairs Anna Ngai 
replied:</p>
<blockquote>&quot;we are not at liberty to disclose the names of our donors 
without their prior consent&quot;</blockquote>
<p>So your editor asked:</p>
<blockquote>&quot;can I assume that they have all refused to consent to 
disclosure, or have you not asked any of them?&quot;</blockquote>
<p>and at the same time, we asked for aggregate data (if donors really refused 
to be named) disclosing the total amount of donations each year, the total 
amount donated by the top 10 donors since inception, and the amount of the 
largest single donation. We also asked whether and when the foundation would be 
publishing its accounts. To all of this, Ms Ngai replied:</p>
<blockquote>&quot;Bauhinia Foundation is a private trust. We've said in our 
previous reply that we are not at liberty to disclose details regarding our 
donors. On this point, I am afraid that we have nothing further to add.&quot;</blockquote>
<p>So there you have it - BF is a &quot;trust of public character&quot; for tax purposes, 
but it is a &quot;private trust&quot; when it comes to disclosure. So you cannot know who 
is funding the
<a target="_blank" href="http://www.bauhinia.org/publications.htm">proposals and 
wish-lists</a> which seem to be taken forward by the Government increasingly 
frequently.</p>
<h3>BF is tycoon-funded</h3>
<p>However, what we can tell you is that on 5-Mar-06, soon after the BF launch,
<em>SCMP</em> ran a story 
quoting the ever-helpful Macau casino tycoon Stanley Ho Hung Sun as having 
pledged HK$3m to the lobby group and as saying:</p>
<blockquote>&quot;Charles Ho has approached many tycoons, including Lee 
Shau-kee [chairman of Henderson Land Development], Cheng Yu-tung [chairman of 
New World Development] and me....Each of us were asked to give [HK]$3 million.&quot;</blockquote>
<p>Readers may recall that New World and Henderson-related persons were also 
some of the biggest donors to Donald Tsang's election campaigns. In our article
<a target="_blank" href="donsdonations.asp">Don's Donations</a> 
(7-May-07) we analysed the 2007 election returns and concluded that subsidiaries 
and associates of New World were the biggest donors in the 2007 campaign, giving 
a total of $1.5m, while people related to Henderson Land gave a total of $800k 
(at the request of the campaign, donations were broken into individual amounts 
of $50k). Stanley Ho Hung Sun, his family, and directors of his company Shun Tak 
Holdings Ltd (0242), gave a total of $300k. In 2005 they gave $900k.</p>
<p>There are almost certainly more large donors to BF, judging by the scale of 
BF's operations, and it would not be surprising if the list of donors closely 
matched the major donors of Donald Tsang's election campaigns, given that Norman 
Chan was involved in both, as we explain below.</p>
<h3>Norman Chan Tak Lam</h3>
<p>Another key player in establishing BF was Norman Chan Tak Lam (<strong>Norman 
Chan</strong>), who
<a target="_blank" href="http://www.info.gov.hk/hkma/eng/press/2005/20050412e5.htm">
resigned</a> as deputy chief executive of the HK Monetary Authority &quot;to pursue 
other interests&quot; on 12-Apr-05, a month after Tung Chee Hwa's resignation as 
Chief Executive of HK. He emerged the next month as the Secretary-General of 
Donald Tsang's first &quot;election office&quot;, alongside Chairman David Li Kwok Po (<strong>David 
Li</strong>), the consummate insider who runs family firm
<a target="_blank" href="../dbpub/articles.asp?p=377">The Bank of East Asia, Limited</a> 
(<strong>BEA</strong>, 0023), and together they
<a target="_blank" href="../codocs/DTwhipround2005.pdf">passed the hat around</a> 
for that campaign. David Li was appointed to the Executive Council, HK's 
cabinet, on 1-Nov-05 and given HK's highest award, the Grand Bauhinia Medal, on 
1-Jul-07 after Donald Tsang's second election. As readers will know, he resigned 
from ExCo on 16-Feb-08 over his alleged role in the Dow Jones insider dealing 
affair.</p>
<p>On 1-Dec-05, Norman Chan
<a target="_blank" href="http://www.standardchartered.com/media-centre/press-releases/2005/documents/grp_20051124.pdf">
became</a> Vice-Chairman for Asia of Standard Chartered PLC where, 
coincidentally, Donald Tsang's sister Katherine Tsang King Suen is
<a target="_blank" href="http://www.standardchartered.com.cn/news/2005/pdf_press_20050330.pdf">
CEO for China</a>. Bauhinia Foundation Research Centre Ltd was quietly 
incorporated on 5-Dec-05 and its sibling Bauhinia Foundation Ltd, the trustee of 
BF, was incorporated on 16-Dec-05. On 20-Feb-06, BF was publicly 
launched, with Norman Chan as its chairman. After Donald Tsang's second-term 
election campaign, Mr Chan
<a target="_blank" href="http://www.info.gov.hk/gia/general/200706/23/P200706230083.htm">
returned</a> to the Government on 1-Jul-07 as director of the Chief Executive's 
office. He is now widely-tipped to succeed Joseph Yam Chi Kwong as Chief 
Executive of the HK Monetary Authority, which manages the Government's 
quasi-sovereign wealth fund, hoarding money for the people.</p>
<h3>Who runs BF?</h3>
<p>The initial three directors of BF were Norman Chan (chairman), Anthony Wu 
Ting Yuk (<strong>Mr Wu</strong>) and Lawrence Lee Kam Hung (<strong>Mr Lee</strong>). 
At the launch on 20-Feb-06, seven advisers to BF were also announced, 
including Donald Li Kwok Tung (<strong>Donald Li</strong>) and Professor Ceajer Chan Ka 
Keung (<strong>K C Chan</strong>). When Norman Chan returned to Government on 
1-Jul-07, K C Chan went too, as Secretary for Financial Services and the 
Treasury. Mr Wu then became chairman of BF, and Donald Li became a director. The 
other current director is Winnie J Ng (<strong>Ms Ng</strong>).</p>
<p>Mr Wu is former Chairman of Ernst &amp; Young in HK. He is also Chairman of the 
Hospital Authority since 7-Oct-04, and a member since 1-Dec-99. He is also 
Deputy Chairman of the Hong Kong General Chamber of Commerce, which has its own 
seat in the Legislative Council representing big business.</p>
<p>Mr Lee is Hong Kong chairman of global law firm Baker &amp; McKenzie. He&nbsp;is a 
member of the Hospital Authority since 1-Apr-05.</p>
<p>Donald Li, a medical doctor, is a member of the Hospital Authority since 
1-Dec-06. He is former President of the
<a target="_blank" href="http://www.hkcfp.org.hk/">Hong Kong College of Family 
Physicians</a> (<strong>CFP</strong>), which was co-founded by his father, Dr 
Henry Li Fook Kuen, who was a director of family firm BEA from 1970 until his 
death in 1993. BEA was co-founded by Donald Li's grandfather, one of the 
brothers Li Koon Chun or Li Tse Fong (we haven't figured out which). David Li's 
grandfather was Li Koon Chun, so David Li and Donald Li are either first or 
second cousins. Donald Li is also a Steward of the HK Jockey Club.</p>
<p>Ms Ng is an Executive Director of Transport International Holdings Ltd (<strong>TIH</strong>, 
00062), which owns Kowloon Motor Bus, one half of our bus duopoly. She is a 
Governing Committee member of Queen Elizabeth Hospital. The committee is 
appointed by the Hospital Authority. She is also a director of Hong Kong 
Cyberport Management Co Ltd, and a member of the Town Planning Appeal Board 
Panel. Her father, Ng Siu Chan, has been a non-executive director of TIH since 
1983 and was Chairman of Kowloon Development Co Ltd from 1974 to 2002. The Ng 
family still owns about 5.2% of ITH.</p>
<p>The Secretary-General of BF is Gregory Leung Wing Lup, 62, who joined in 
Nov-07. He was a career civil servant whose last post was Director of Food and 
Environmental Hygiene.</p>
<h3>Political appointments</h3>
<p>Of the
<a target="_blank" href="http://www.info.gov.hk/gia/general/200805/20/P200805200121.htm">
eight Undersecretaries</a> and
<a target="_blank" href="http://www.info.gov.hk/gia/general/200805/22/P200805220190.htm">
nine Political Assistants</a> appointed in May-08 as part of the Government's 
plan to &quot;groom political talents&quot;, seven were reportedly close to BF, which 
reportedly held a dinner at the end of May attended by Norman Chan to welcome a new 
batch of associate members, including some of the political assistants (SCMP, 
4-Jun-08). </p>
<p>The new Undersecretary for Home Affairs, Florence Hui Hiu Fai, was Head of 
Business Planning and Development for Northeast Asia at Standard Chartered, 
where Norman Chan worked as Vice Chairman for Asia before returning to the 
Government. She also served on the BF's Health Care Study Group. The Political 
Assistant to the Secretary for Home Affairs, Ms Zandra Mok Yee Tuen, was a 
senior manager of BF.</p>
<h3>Who's in charge here?</h3>
<p>The separation between the Government and this supposedly external and 
secretly tycoon-funded lobby group is becoming increasingly blurred. Hong Kong citizens 
should be asking - who is making policy for Hong Kong - is it the Government, 
led by the Chief Executive, or is it a lobby group funded by anonymous big 
business interests?</p>
<p><em>&copy; Webb-site.com, 2008</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=52557">Bauhinia Foundation Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=45117">Bauhinia Foundation Research Centre Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=21205">Chan, Norman Tak Lam</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=62">Cheng, Yu Tung (1925-08-27)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=4462">Ho, Charles Tsu Kwok</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1014">Ho, Stanley Hung Sun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=30144">Lee, Lawrence Kam Hung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=135">Lee, Shau Kee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=19373">Li, Donald Kwok Tung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1595">Ng, Winnie J Wing Mui</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=23148">Wu, Anthony Ting Yuk</a></li>
				
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