
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

<script type="text/javascript">document.title="Code Agriculture and Nanjing Everyday";</script>

	<div class="summary">Take a RMB8m investment in a start-up TV channel, whip up some projections, sprinkle on a valuation from the ubiquitous BMI Appraisals, add a large pinch of salt according to taste, bake for 2 months and you have a RMB350m sale to Code Agriculture (8153). Too bad that the air then went out of this pudding.</div>

<h2 class="center">Code Agriculture and Nanjing Everyday<br>
<span class="headlinedate">25 May 2010</span></h2>
<p>This story follows on from today's story on <a href="unibioggt.asp">Uni-Bio 
Science and Global Green Tech</a>.</p>
<p>On 21-Sep-2007, <a href="../dbpub/orgdata.asp?p=13386">Code Agriculture 
(Holdings) Ltd</a> (<strong>Code Agriculture</strong>, 8153, then China Chief Cable TV Group Ltd)
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20070921/GLN20070921034.pdf" target="_blank">
announced</a> the purchase of 80% of Nanjing Everyday Buy Trading Co Ltd (<strong>Nanjing 
Everyday</strong>) for RMB350m (then HK$364m) comprising RMB30m in cash, 
HK$49.92m in shares at $0.32 and HK$282.88m in 0% 5-year bonds convertible at 
$0.32. The shares and bonds equated to 72.98% of the enlarged issued share 
capital. 
Nanjing Everyday was owned by <a href="../dbpub/positions.asp?p=23691">Law Kwok Keung</a> (<strong>Mr Law</strong>, 67%) 
and Mr Lin Fang Chih (<strong>Mr Lin</strong>, 33%), both described as 
independent third parties. Mr Law and Mr Lin would retain 13.4% and 6.6% of 
Nanjing Everyday after the sale.</p>
<p>Mr Law was an ED of <a href="../dbpub/orgdata.asp?p=18157">Neo Telemedia Ltd</a> (<strong>Neo 
Telemedia</strong>, 8167) from 19-Nov-2004 to 1-Mar-2007. We know 
nothing about Mr Lin.</p>
<p>Nanjing Everyday was a start-up with no business except entering into an 
agreement 2 months earlier with Jiangsu Digital Media Co Ltd (<strong>Jiangsu 
Digital</strong>, PRC) to establish a joint venture called JiangSu BCTV Fashion 
Media Co Ltd, which would be 49% owned by Nanjing Everyday. The JV company had 
not yet been incorporated. It was expected to require RMB40m of investment from 
Nanjing Everyday, of which RMB10m would be injected prior to completion of the 
sale to Code Agriculture. So for the privilege of owning a RMB8m investment, 
Code Agriculture was paying the vendors RMB350m.</p>
<p>The JV company was to engage in &quot;direct TV sales, programmes production, 
advertising agency, design and production&quot;. Jiangsu Digital had been authorised 
by Jiang Su Broadcasting Corp to operate &quot;Channel Dressy&quot;, which would be 
licensed to the JV for 20 years. The company attempted to justify the purchase 
price by means of a valuation report from 
<a href="../dbpub/adviserships.asp?p=16315">BMI Appraisals Ltd</a> (<strong>BMI</strong>, 
yes, them again), 
contained in the
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20071018/GLN20071018041.pdf" target="_blank">
circular</a>, which valued the JV at RMB980m, based on 1.45 times the projected 
sales of RMB2,200m in 2010 and a discount rate of 18.19% p.a.. There was no 
justification offered for that revenue projection, but the result was that it 
values 49% of the JV at RMB480.2m and 80% of that at RMB384.16m.</p>
<p>The acquisition finally completed on 28-Apr-2008, at a consideration of 
HK$365.9m. The net assets acquired (net of the 20% minority interest) were 
$74.171m (including $66.4m attributed to the TV license), resulting in goodwill 
of $291.7m. In the 
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20090626/GLN20090626081.pdf" target="_blank">annual report</a> for the year to 31-Mar-2009, Code Agriculture 
said (note 14, p56) that on the basis of another valuation by the same valuer, 
BMI, it had now determined that the goodwill was impaired by $231.8m. Direct TV 
sales for the 11 months since acquisition were just $1.5m.</p>
<p>Mr Lin received 51.48m shares and $93.35m of bonds in the sale of Nanjing 
Everyday. On 2-Sep-2008, he
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=26630&amp;lang=EN&amp;dia=Y" target="_blank">
disposed</a> of $77.35m of bonds for $24.17m or $0.10 per underlying share. No 
buyer filed a disclosure of interest. Three days later, he
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=26666&amp;lang=EN&amp;dia=Y" target="_blank">
disposed</a> of his company which owned 51.48m shares for $5.15m or $0.10 per 
share, to someone called Yim Kai Pung, possibly accountant
<a href="../dbpub/positions.asp?p=20814">David Yim Kai Pung</a>. He's an INED of
<a href="../dbpub/orgdata.asp?p=2924">Success Universe Group Ltd</a> (0487).</p>
<p>On 2-Jan-2009, Code Agriculture proposed a capital injection of USD1.65m 
(HK$12.9m) into 
Nanjing Everyday, pro rata to shareholdings. Despite having received RMB350m, 
including RMB30m in cash for the sale of 80% of Nanjing Everyday, and in Mr 
Lin's case, having sold his Code Agriculture shares and most of his bonds, Mr Law and Mr 
Lin did not put up their own cash for this relatively small fund-raising, for 
which their 20% stake would cost them HK$2.57m. 
Instead, they borrowed it interest-free from Code Agriculture and pledged their 
20% stake in Nanjing Everyday as security. </p>
<p>Mr Law received 104.52m shares and $189.53m of bonds in the sale of Nanjing 
Everyday. On 9-Jan-2009, Mr Law
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=28963&amp;lang=EN&amp;dia=Y" target="_blank">
disposed</a> of $64.53m of the bond for $16.13m, a quarter of its face value, or 
$0.08 per underlying share. No buyer filed a disclosure of interest. On 5-Mar-2009, he 
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=29523&amp;lang=EN&amp;dia=Y" target="_blank">
disposed</a> of another $32m of the bond for 
$10m, or $0.10 per underlying share, and on 26-Mar-2009, he disposed of the 
remaining bonds at $0.10 per share. The final tranche of bonds was
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=29819&amp;lang=EN&amp;dia=Y" target="_blank">
purchased</a> by someone named <a href="../dbpub/natarts.asp?p=50671">Au Yeung 
Kai Wah</a> (<strong>Mr Au Yeung</strong>), whose name has featured in our site 
before. </p>
<p>In 2006, Mr Au Yeung filed an affirmation in a
<a href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=54127&amp;currpage=T" target="_blank">
court case</a> on behalf of <a href="../dbpub/orgdata.asp?p=52025">Zhuang PP 
Holdings Ltd</a>, which was a company sold by
<a href="../dbpub/articles.asp?p=3286">Willie International Holdings Ltd</a> 
(0273) to <a href="../dbpub/natarts.asp?p=20431">Eugene Chuang Yue Chien</a> in 
2003. On 11-Oct-2007, he was also one of the purported vendors in the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20071018/ltn20071018360.pdf" target="_blank">
sale</a> of a company called Leapfly Ltd (<strong>Leapfly</strong>, BVI) to
<a href="../dbpub/articles.asp?p=14229">Forefront Group Ltd</a> (0885) for 
H$K20m. That followed an aborted
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20070801/LTN20070801338.pdf" target="_blank">
sale</a> to the same company at the higher price of $39m on 26-Jul-07. In a 
curious game of pass-the-parcel, Leapfly had earlier been acquired on 
10-Apr-2006 from Willie by <a href="../dbpub/articles.asp?p=4997">Freeman Corp 
Ltd</a> (0279) for $7m, according to
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20060731/00279/F113.pdf" target="_blank">
note 36(1)</a> of Freeman's accounts that year. We don't know when Freeman sold 
it, or to whom. Willie, Forefront and Freeman are all part of what we call the 
&quot;Chung Nam Network&quot; of companies surrounding
<a href="../dbpub/articles.asp?p=12651">Chung Nam Securities Ltd</a>.</p>
<p>On 27-Mar-2009, the day after purchasing the bonds from Mr Law at $0.10 per 
underlying share, Mr Au Yeung converted them into 290.625m shares equal to 
16.52% of Code Agriculture. On 22-Mar-2010 he
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20100325/GLN20100325085.pdf" target="_blank">
sold</a> 140m shares at $0.58 in parallel with a placing by the company.</p>
<p>An INED of Neo Telemedia, appointed 31-Mar-2005, is Mr 
<a href="../dbpub/positions.asp?p=13389">Law Kwok Leung</a> 
(no relation to Mr Law, apparently), who is CEO and founder of Code Agriculture, back when 
it was listed as &quot;M21 Technology Limited&quot;. Another overlap is
<a href="../dbpub/positions.asp?p=13390">Dennis Chan Kwok 
Sun</a>, who was an NED of Code Agriculture from its 2001 listing until 3-Dec-2008, 
and was also an ED of Neo Telemedia from 19-Nov-2004 to 28-Mar-2009.</p>
<p>Hopkins
CPA Ltd
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20090402/GLN20090402113.doc" target="_blank">
resigned</a> as auditor of Code Agriculture on 1-Apr-2009. It was replaced by 
<a href="../dbpub/orgdata.asp?p=48911">KL 
CPA Ltd</a>, becoming that firm's first, and so far only, listed client.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4997">Arta TechFin Corporation Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13386">Jiading International Group Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16944">Jonten Hopkins CPA Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=48911">KL CPA Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3286">MASON GROUP HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18157">Neo Telemedia Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14229">Rentian Technology Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12651">SEEKERS MARKETS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=52025">ZHUANG PP HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=50671">Au Yeung, Kai Wah</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13390">Chan, Dennis Kwok Sun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=20431">Chuang, Eugene Yue Chien</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=23691">Law, Kwok Keung (1948)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13389">Law, Kwok Leung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=20814">Yim, David Kai Pung</a></li>
				
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