
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

<script type="text/javascript">document.title="Lincoln University, CCIBA and AKMA";</script>

	<div class="summary">Time to lift the lid on another diploma mill, the people behind it, and the distinguished citizens upon whom it has conferred its prestigious awards.</div>

<h2 class="center">Lincoln University, CCIBA and AKMA<br>
<span class="headlinedate">24 May 2010</span></h2>
<p>Time to lift the lid on another diploma mill, the people behind it, and the 
distinguished citizens upon whom it has conferred its prestigious awards.</p>
<p>Lincoln University, Inc. (<strong>LincolnU</strong>) was
<a href="http://coraweb.sos.louisiana.gov/commercialsearch/CommercialSearchDetails_Print.aspx?CharterID=374788" target="_blank">
incorporated</a> in Louisiana, USA on 14-Nov-1990. It has no accreditation 
recognised by the US Department of Education. Its last known address is 
care of J. Gregory Wyrick (<strong>Mr Wyrick</strong>), a CPA and tax lawyer at
<a href="http://www.chaffe.com/" target="_blank">Chaffe McCall</a>, a New 
Orleans law firm.
<a href="http://www.chaffe.com/bios/wyrick.htm" target="_blank">Here's his 
biography</a>. Only one officer of LincolnU is listed, Guenther Ernst Wolf (<strong>Mr 
Wolf</strong>), of Yangon/Rangoon, Myanmar/Burma. There's a picture of him
<a href="http://www.myanmar.gov.mm/myanmartimes/no156/myanmartimes8-156/Timeouts/soc.htm" target="_blank">
on a society page</a> of the government-run Myanmar Times.</p>
<p>According to a
<a href="http://www.myanmartraining.com/mt/categories/training_view.asp?tid=48&amp;cat_id=2&amp;tname=STAMFORD-CITY+BUSINESS+INSTITUTE&amp;type=detail" target="_blank">
page on MyanmarTraining.com</a>, Mr Wolf is also the Principal of
<a href="http://www.stamford-city.com" target="_blank">Stamford City Business 
Institute</a> (<strong>Stamford City</strong>), Yangon, which is part of the 
group of Serge Pun and Associates. The Senior Training Consultant is Suzanne 
Pun. Serge Pun is Chairman and CEO of <a href="../dbpub/orgdata.asp?p=43928">
Yoma Strategic Holdings Ltd</a> (<strong>Yoma</strong>, SGX:Z59), listed in 
Singapore.</p>
<h3>International recognition, in the mirror</h3>
<p>Stamford City offers a
<a href="http://www.stamford-city.com/lincon-university.htm" target="_blank">
Lincoln University MBA</a>. It says that LincolnU is accredited by the Council 
of International Management Standards (<strong>CIMS</strong>). Guess what? CIMS 
was
<a href="http://coraweb.sos.louisiana.gov/commercialsearch/CommercialSearchDetails_Print.aspx?CharterID=648423" target="_blank">
incorporated</a> in Louisiana on 6-Feb-2004, and its agent and only officer is 
Mr Wyrick. CIMS is a bogus accreditation body, a shell with no web presence.</p>
<p>&nbsp;Stamford City also says LincolnU has gained recognition for its 
degrees from the following international bodies:</p>
<ul>
	<li>Institute of Chartered Accountants of America (<strong>ICAA</strong>)</li>
	<li>American Institute of Applied Psychology (<strong>AIAP</strong>)</li>
	<li>Canadian Chartered Institute of Business Administration (<strong>CCIBA</strong>)</li>
	<li>Canadian Institute of Certified Computer Professionals (<strong>CICCP</strong>)</li>
	<li>Canadian Institute of Industrial Engineers (<strong>CIIE</strong>)</li>
</ul>
<p>Sounds impressive, doesn't it? Not when we tell you how these bodies are related 
to each other:</p>
<ul>
	<li>ICAA was
	<a href="http://coraweb.sos.louisiana.gov/commercialsearch/CommercialSearchDetails_Print.aspx?CharterID=378644" target="_blank">
	incorporated</a> in Louisiana on 7-Mar-1991. The agent is Mr Wyrick again, 
	the agent of LincolnU. 
	There are 3 officers, Liao Sheung Kwan, Kitty Kwok Shiu Lun and Roger 
	Cheung &quot;Cho Wam&quot; (<strong>Mr Cheung</strong>, and we think his name 
	should be &quot;Roger Cheung Cho Wah&quot; - see below). <a href="../dbpub/positions.asp?p=51492">
	Peter Liao Sheung Kwan</a> (<strong>Mr Liao</strong>) is President of
	<a href="../dbpub/orgdata.asp?p=51491">Asian Knowledge Management 
	Association Limited</a> (<strong>AKMA</strong>, HK). At one time Mr Liao was 
	also the director of diploma mill
	<a href="http://web.archive.org/web/20010909160753/www.newport.edu/intl/nu_hongkong.html" target="_blank">
	Newport University - Hong Kong</a>.</li>
	<li>AIAP was
	<a href="http://coraweb.sos.louisiana.gov/commercialsearch/CommercialSearchDetails_Print.aspx?CharterID=592132" target="_blank">
	incorporated</a> in Louisiana on 25-Feb-2002, with Mr Wyrick as agent and Mr 
	Liao as the only officer. It has a
	<a href="http://www.appliedpsy.org" target="_blank">web site</a> at 
	appliedpsy.org, which is
	<a href="../codocs/WhoIs_appliedpsy.org.pdf" target="_blank">registered</a> 
	to &quot;CreationTeam&quot; of HK, with a netvigator address as e-mail contact. Very 
	American!</li>
	<li>CCIBA was
	<a href="https://www.ic.gc.ca/app/scr/cc/CorporationsCanada/fdrlCrpDtls.html?corpId=2643375" target="_blank">
	incorporated</a> in Canada on 12-Sep-1990 and has its registered office c/o
	<a href="http://www.boughton.ca/" target="_blank">Boughton Law Corporation</a>. 
	Its directors are &quot;Sheung Kwan&quot; (Mr Liao's Chinese given name), &quot;Roger 
	Cheung&quot; (Mr Cheung, we presume) and &quot;Chi Wai&quot; (see below). 
	We'll tell you more about CCIBA in a moment.</li>
	<li>CICCP was
	<a href="https://www.ic.gc.ca/app/scr/cc/CorporationsCanada/fdrlCrpDtls.html?corpId=2720621" target="_blank">
	incorporated</a> in Canada on 28-May-1991 and has its registered office care 
	of Boughton &amp; Associates, Vancouver and its directors are &quot;Sheung Liao&quot; 
	(presumably Mr Liao), &quot;Roger Cheung&quot; (presumably Mr Cheung) and &quot;Chi Wai&quot; 
	(see below). We could not find any other web presence for CICCP.</li>
	<li>CIIE was
	<a href="https://www.ic.gc.ca/app/scr/cc/CorporationsCanada/fdrlCrpDtls.html?corpId=2709953" target="_blank">
	incorporated</a> in Canada on 25-Apr-1991 and has its registered office 
	again at the Boughton Law offices. Its directors are &quot;Sheung K. 
	Liao&quot; (presumably Mr Liao), &quot;Roger Cho Wah Cheung&quot; (presumably Mr Cheung) 
	and &quot;Chi Wai Wai&quot;. If the name follows the same pattern, then it 
	is WAI Chi Wai. We know nothing else about Mr Cheung or Mr/Ms Wai. We could not find any other web presence for CICCP.</li>
</ul>
<p>LincolnU has a <a href="http://www.lincolnu-edu.us/" target="_blank">web site</a>, 
the domain of which, lincolnu-edu.us, is
<a href="../codocs/WhoIsLincolnU-edu.US.pdf">registered</a> to someone who uses the 
&quot;administrator&quot; e-mail address at AKMA. What a giveaway. The LincolnU site has a
<a href="http://www.lincolnu-edu.us/message.asp" target="_blank">message from 
the President</a> - none other than Mr Wolf, and makes the same claims about 
recognition by the 5 entities named above.</p>
<p>CCIBA has a <a href="http://www.cciba.ca/" target="_blank">web site</a> at 
cciba.ca, which is <a href="../codocs/WhoIs_cciba.ca100523.pdf" target="_blank">
registered</a> to Mr Liao in HK, also using an AKMA e-mail address. Apart from a 
mailing address in Canada, it has no visible presence in the country. The 
mailing address at 203-11240 Bridgeport Road, Richmond, British Columbia used to be the office of 
an accountant, Dennis Wong, and has also been a
<a href="http://www.food-delivery.ca/asian_restaurants_food_delivery/british_columbia_asian_restaurants/wing_kee_restaurant_food_delivery_richmond.html" target="_blank">
restaurant</a>. We don't know what is there now. If you live in Vancouver,
<a href="../contact">do us a favour</a> and go and look inside at Unit 203. 
Here's the Google
<a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=203-11240+Bridgeport+Road,+Vancouver&amp;sll=37.0625,-95.677068&amp;sspn=74.072013,51.679688&amp;ie=UTF8&amp;hq=&amp;hnear=11240+Bridgeport+Rd,+Richmond,+Greater+Vancouver+Regional+District,+British+Columbia+V6X+1T3,+Canada&amp;ll=49.192006,-123.098518&amp;spn=0,0.002575&amp;t=h&amp;z=19&amp;layer=c&amp;cbll=49.192007,-123.099277&amp;panoid=oliqXLxxJrx_PUX38lq51g&amp;cbp=12,197.62,,1,3.93" target="_blank">
street view</a>.</p>
<p>AKMA is the 
&quot;Certification Body&quot; for CCIBA Fellowship, according to an
<a href="http://www.cciba.ca/fellowentryform.pdf" target="_blank">application 
form</a> on the CCIBA site. According to the site, 
the Vice President of CCIBA, Professor Richard Olesen (<strong>Prof 
Olesen</strong>), <a href="http://www.cciba.ca/events.html" target="_blank">
visited HK</a> in Dec-2006. He was the Dean of the School of Business at
<a href="http://camosun.ca/" target="_blank">Camosun College</a>, Victoria, 
British Columbia. 
Prof Oleson has many hats. According to the AKMA site,
<a href="http://www.akma.com.hk/e/events_details.php?action=latestEvents&amp;id=65&amp;pageNum=1" target="_blank">
at a ceremony</a> on 21-Jan-2010, Prof Olesen conferred honorary awards as 
&quot;Honorary Chancellor of Lincoln University&quot;. At an
<a href="http://www.akma.com.hk/e/events_details.php?action=news&amp;id=58&amp;pageNum=1" target="_blank">
earlier ceremony</a> on 20-Sep-2009, Lincoln University was represented by its 
&quot;Vice President of Lincoln University&quot; Dr Sushant Deb PhD. We cannot find any 
trace of him,
<a href="http://www.ibac.org/Files/is-bao/Audit/AuditorDocs/AvResume-mission2009-A.pdf" target="_blank">
unless this is him</a>, an aviation security consultant. That person certainly 
has a lot of degrees, but doesn't say which institutions issued them.</p>
<p>AKMA's web site
<a href="http://www.akma.com.hk/e/worldwide_partnership_lu.php" target="_blank">
lists LincolnU</a> as one of its partners, again mentioning how it has the 
&quot;international recognition&quot; of the 5 related entities we mentioned above. 
The <a href="http://www.akma.com.hk/e/aboutus_commitee.php" target="_blank">Life 
Honorary President</a> of AKMA is toy tycoon <a href="../dbpub/positions.asp?p=22060">
Francis Choi Chee Ming</a>, GBS. We wrote about
<a href="francischoi.asp" target="_blank">Choi's Choice of Degrees</a> 
on 21-Nov-2007. His wife, <a href="../dbpub/positions.asp?p=45007">Margaret Choi 
Lee Wai Lai</a>, is one of three Honorary Presidents of AKMA. Executive 
Councillor <a href="../dbpub/positions.asp?p=10616">Cheng Yiu Tong</a>, GBS is 
another. Mrs Choi also has a Doctorate of Humane Letters from Newport 
University, USA (the diploma mill from which her husband has an MBA) and 
Honorary Fellowship of CCIBA, according to her
<a href="http://www.poleungkuk.org.hk/plk/admin/Data/PageContentPage/ContentPage/20080328115727/attachment/14.pdf" target="_blank">
Po Leung Kuk biography</a>.</p>
<p>One of the most entertaining things about this story is that AKMA/CCIBA has 
actually uploaded its 2006 and 2008
<a href="http://www.youtube.com/user/akmahk#p/u/21/oIDlqtHNsX0" target="_blank">award ceremonies</a> onto YouTube, so you too can share their joy. 
We don't know what it costs to take part, but you get the full works - gown 
mortar board, bagpipes, national anthems and all.</p>
<p>According to AKMA's coverage 
of the CIBA award ceremonies, they've also managed to rope in some senior 
figures at real universities in HK as awardees, including
<a href="../dbpub/positions.asp?p=35855">Liu Liang</a>, the Dean 
of Chinese Medicine at HK Baptist University (awarded &quot;Honorary Fellowship&quot;), 
and <a href="../dbpub/positions.asp?p=14708">Lui Sun Wing</a>, a Vice President 
at PolyU (awarded &quot;Honorary Professorship&quot;). Indeed, HKBU even
<a href="http://www.hkbu.edu.hk/~cpro/online_pub/nh0910_1/nh0910_1p27-29.pdf" target="_blank">
mentioned the award</a>  in its magazine.</p>
<h3>University of St Louis, Lousiana?</h3>
<p>Kudos to the Louisiana State government for having a proper companies 
registry where you can search the officers online for free. HK still only has a
<a href="http://www.icris.cr.gov.hk" target="_blank">pay-per-view </a>approach 
which is, frankly, crappy. Louisiana allows us to tell you that Mr Wyrick, the 
registered agent of LincolnU, CIMS, ICAA and AIAP, is also the registered agent of 
&quot;University of St Louis Inc&quot;, which was
<a href="http://coraweb.sos.louisiana.gov/commercialsearch/CommercialSearchDetails_Print.aspx?CharterID=375117" target="_blank">
incorporated</a> in Louisiana on 27-Nov-1990 and is now inactive after &quot;Action 
by Secretary of State&quot;, with its last report filed 16-Oct-1995. The officers of 
that were Aylwn (probably Aylwin) Chan Wing Tat, Mimi Shum Lai Fong and Daniel 
Lau Ka Fai, each of HK. There is an Aylwin Chan Wing Tat who in 2007 was a 
senior manager with the Hospital Authority, according to
<a href="http://www.thestandard.com.hk/news_detail.asp?art_id=44469&amp;con_type=1" target="_blank">
an article</a> in the <em>HK Standard</em>. St Louis, the city, is, of course, 
in Missouri, not Louisiana. Perhaps they gave doctorates in geography, but as 
far as we can tell, this bogus university was never used in action.</p>
<h3>The awards</h3>
<p>So, who has been receiving these awards from the AKMA and its related bodies, 
CCIBA and LincolnU? Here's a quick rundown of those we can find. If we have 
missed you, we apologise, but you know who you are!</p>
<ul>
	<li>Ho Cheuk Fai, Chairman and CEO of <a href="../dbpub/orgdata.asp?p=2471">
	Karrie International Holdings Ltd</a> (1050), was made a Fellow of AKMA in 
	Sep-2003, and awarded an Honorary Fellowship of CCIBA and Honorary Doctorate 
	in Management by Lincoln University in Apr-2007.</li>
	<li>Beryl Yeung Man Yi is CEO and co-founder of
	<a href="../dbpub/orgdata.asp?p=14358">Mobicon Group Ltd</a> (1213). 
	According to
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20070718/LTN20070718215.pdf" target="_blank">
	this announcement</a>, In Dec-2004, she &quot;became a Full Member and received 
	professional qualifications from the Executive Council of [CCIBA], and she 
	was thereby designated as Chartered Manager. In 2006, Ms Yeung acquired the 
	Fellowship of Business Administration and became a Fellow Member of [AKMA]. 
	In the same year, Ms. Yeung obtained the Master Degree of Business 
	Administration from Lincoln University.&quot;</li>
	<li>Hoffman Ma Ho Man, Deputy Chairman of
	<a href="../dbpub/orgdata.asp?p=2924">Success Universe Group Ltd</a> (0487), 
	&quot;was awarded Fellowship by CCIBA and Honorary Doctorate of Management by 
	Lincoln University in 2009 and 2010 respectively.&quot; See page 36 of the
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100429/ltn20100429899.pdf" target="_blank">
	annual report</a>.</li>
	<li>Cheng Man Tai, Chairman of <a href="../dbpub/orgdata.asp?p=37150">Embry 
	Holdings Ltd</a> (1388), was elected Fellow of AKMA in Dec-2008 and was 
	awarded Honorary Fellowship of CCIBA and and admitted as Honorary Professor 
	by Lincoln University in Sep-2009. At the same time, his daughter, Liza 
	Cheng Pik Ho, who is CEO, was awarded Fellowship of CCIBA and admitted as 
	Visiting Professor by Lincoln University. See page 19 of the
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100419/ltn20100419287.pdf" target="_blank">
	annual report</a>.</li>
	<li>Stephen Tai Tak Fung, SBS, JP, Chairman of
	<a href="../dbpub/orgdata.asp?p=652">Four Seas Food Investment Holdings Ltd</a> 
	(0060) &quot;holds Honorary Professor of [CCIBA] in Canada&quot;.</li>
	<li>Lau Yau Bor, Chairman and co-founder of
	<a href="../dbpub/orgdata.asp?p=18188">Jiwa Bio-Pharm Holdings Ltd</a> 
	(2327), received a Fellowship from CCIBA and &quot;Honourable Doctorate Degree of 
	Management&quot; from Lincoln University on 20-Sep-2009, according to the
	<a href="http://www.jiwa.com.hk/Admin/Data/uploadfile/129/2009_eNL17_e2.pdf" target="_blank">
	company's magazine</a>.</li>
	<li>Tse Siu Sze, a senior manager of <a href="../dbpub/orgdata.asp?p=36501">
	L.K. Technology Holdings Ltd</a> (0558), &quot;was awarded fellow of Business 
	Administration by [AKMA] in 2005 and received his MBA Degree from the 
	Lincoln University, U.S.&quot;. See page 13 of the
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090729/ltn20090729242.pdf" target="_blank">
	annual report</a>.</li>
	<li>Peter Lau Chor Beng, MD and co-founder of Joyas International Holdings 
	Ltd (SGX:E9L) &quot;holds a doctorate in Engineering from the Lincoln University 
	and he was awarded a Honourary FMBA from the [CCIBA]&quot;. See page 10 of 
	the
	<a href="http://info.sgx.com/listprosp.nsf/5a8e36bd740e1bce48256604000bb31e/d221e3a3bc06d7d548257706001892ca/$FILE/Joyas%2009AR%20HAR027%281255%29.pdf" target="_blank">
	annual report</a>.</li>
	<li>Ng Chi Ho, Chairman and MD of <a href="../dbpub/orgdata.asp?p=16397">
	SUGA International Holdings Ltd</a> (0912) was
	<a href="http://www.suga.com.hk/suga_inter/pdf/announcement/Eng_Dr.%20Ng_Honorary%20Fellowship.pdf" target="_blank">
	awarded</a> Honorary Fellowship by CCIBA and Honorary Doctor of Engineering 
	Degree by Lincoln University on 20-Sep-2009.</li>
	<li>Outside of the listed company scene, according to an
	<a href="http://www.iccc2009.org/en/speaker/" target="_blank">Oct-2009 bio</a>, 
	George So, General Manager of DuPont Apollo Ltd, is a Vice President and 
	Fellow of AKMA, a Fellow and Adjunct Professor of CCIBA and holds an 
	Honorary Doctoral degree in Engineering from Lincoln University, USA. Lucky 
	him.</li>
	<li>Christie Wo Man Shan of Charmonde Luxury Ltd was
	<a href="http://www.charmondeluxury.com/news.swf?unique=0.28414459573105" target="_blank">
	awarded</a> &quot;2009 Fellowship of CCIBA and Visiting Professor of Lincoln 
	University&quot;. We should also note that in 2007 she was
	<a href="../dbpub/natarts.asp?p=46480">found liable</a> for insider dealing.</li>
	<li>Steve Wong, MD of plastic recycler
	<a href="../dbpub/orgdata.asp?p=58297">Fukutomi Co Ltd</a>, was
	<a href="http://www.fukutomi.com.hk/en/news/#50" target="_blank">awarded</a> 
	Honorary Fellowship of CCIBA and Honorary Doctorate by Lincoln University on 
	21-Jan-2010.</li>
	<li>
	Chan Chi Sun, a 
	<a href="http://www.tungwah.org.hk/upload/Board/2010/11_CHAN_Chi_Sun.pdf" target="_blank">director</a> of 
	<a href="../dbpub/orgdata.asp?p=12872">Tung Wah Group of Hospitals</a> (<strong>TWGH</strong>), 
	is an Honorary Doctor of Lincoln University, and a Director and Fellow of 
	the <a href="../dbpub/orgdata.asp?p=58299">Asian College of Knowledge 
	Management Ltd</a> recently formed by AKMA.</li>
	<li><a href="../dbpub/positions.asp?p=18054">Ina Chan Un Chan</a>, a
	<a href="http://www.tungwah.org.hk/upload/Board/2010/04_CHAN_Un_Chan.pdf" target="_blank">
	Vice Chairman</a> of TWGH and one of the many wives of casino tycoon Stanley 
	Ho Hung Sun, is an Honorary Fellow of CCIBA and has an Honorary Doctorate of 
	Management from Lincoln University.</li>
</ul>
<h3>Honorary baloney</h3>
<p>If it were possible to earn a degree in the science of creating organisations 
to satisfy people's craving for recognition by awarding honours and 
qualifications, then the people behind LincolnU, CCBA and AKMA would certainly 
deserve one. We hereby award them unaccredited, honorary Webb-site doctorates in 
bogusology.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=51491">ASIAN KNOWLEDGE MANAGEMENT ASSOCIATION LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1896183">CANADIAN CHARTERED INSTITUTE OF BUSINESS ADMINISTRATION</a></li>
				
				<li><a href="/dbpub/articles.asp?p=58298">Charmonde Luxury Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=37150">Embry Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=58297">FUKUTOMI COMPANY LIMITED (b1984-08-10)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=652">HONG KONG FOOD INVESTMENT HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=57191">Joyas International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2471">KARRIE INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=36501">L.K. Technology Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1896181">LINCOLN UNIVERSITY, INC.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18188">Meilleure Health International Industry Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14358">MOBICON GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2924">SUCCESS UNIVERSE GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16397">SUGA INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12872">TUNG WAH GROUP OF HOSPITALS</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=48744">Chan, Chi Sun (1949)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=18054">Chan, Ina Un Chan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=37152">Cheng, Liza Pik Ho</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=37151">Cheng, Man Tai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=45007">Choi Lee, Margaret Wai Lai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=22060">Choi, Francis Chee Ming</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2476">Ho, Cheuk Fai (1946)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=58296">Lau, Peter Chor Beng</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=18604">Lau, Yau Bor</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=51492">Liao, Peter Sheung Kwan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=38744">Ma, Hoffman Ho Man</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=16399">Ng, Chi Ho (1949)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=28380">Tai, Stephen Tak Fung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=58295">Tse, Siu Sze</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=46480">Wo, Christie Man Shan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1896182">Wolf, Guenther Ernst</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=14403">Yeung, Beryl Man Yi</a></li>
				
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