
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

<script type="text/javascript">document.title="You can call me Dr Sir";</script>

	<div class="summary">We announce the winner of the inaugural Webb-site Award for Ridiculous Titles (WART), and follow a trail which leads to bogus honorary degrees for the dictators of Equatorial Guinea and Gambia. The latter has a special relationship with Hong Kong, one which may surprise you.</div>

<h2 class="center">You can call me Dr Sir<br>
<span class="headlinedate">23 March 2012</span></h2>
<p>There's something rather sad about the way some individuals crave 
respectability by collecting obscure titles, but we are going to feed that 
craving by handing out one of our own - the Webb-site Award for Ridiculous 
Titles (<strong>WART</strong>). The deserving recipients will be entitled to 
append the suffix &quot;WART&quot; to their names in all official correspondence.</p>
<p>We can now announce the inaugural recipient of the WART: he is &quot;Dr., Sir
<a href="../dbpub/positions.asp?p=46846">Wong Wai Sing</a>&quot;, or <strong>Dr Sir 
Wong</strong> as he prefers to be called by his friends, ignoring the clumsy 
punctuation. The list of his accomplishments has gradually grown since he first
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2008/1031/GLN20081031066.pdf" target="_blank">
popped up</a> on 31-Oct-2008, at the tender age of 23, as Chairman of
<a href="../dbpub/orgdata.asp?p=16954">Ming Kei Holdings Ltd</a> (<strong>Ming 
Kei</strong>, 8239), having stuffed (along with his older brother) an 
over-priced coal-mining firm into the GEM shell. His most recent biography was given on 16-Mar-2012 in an
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2012/0316/LTN201203161003.pdf" target="_blank">
announcement</a> by <a href="../dbpub/orgdata.asp?p=63335">Newtree Group 
Holdings Ltd</a> (1323).</p>
<p>He claims to hold a bachelor's degree in science from &quot;the Canterbury 
University, England&quot; which he more recently described as &quot;the Canterbury 
University, London&quot;. There's no such
<a href="http://www.bis.gov.uk/policies/higher-education/recognised-uk-degrees/recognised-bodies" target="_blank">
recognised degree-awarding entity</a> in the UK, although there was a
<a href="http://en.wikipedia.org/wiki/Canterbury_University_(Seychelles)" target="_blank">
degree mill by that name</a>, which had a web site at
<a href="http://web.archive.org/web/20090224054448/http://www.canterburyuni.net/about.htm" target="_blank">
canterburyuni.net</a> (archived version). The site no longer exists.</p>
<p>On 17-Apr-2009, by then aged 24, he was
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2009/0417/GLN20090417016.pdf" target="_blank">
appointed</a> as non-executive Chairman of 
<a href="../dbpub/orgdata.asp?p=14272">TLT Lottotainment Group Ltd</a> (8022), then known as &quot;Argos Enterprise (Holdings) Limited&quot;. By then he had 
obtained a new qualification, a &quot;Master Degree in International Business 
Administration&quot; from &quot;<a href="http://www.stratford.edu/" target="_blank">Stratford University</a>, USA&quot;. There 
is a real accredited place by that name, based in Falls 
Church, Virginia (and later biographies have given that location). But given the degree from &quot;Canterbury University&quot;, you will 
forgive our scepticism if we wonder whether he in fact obtained his second 
degree from
<a href="http://web.archive.org/web/20050204074119/http://www.sfiu.edu/" target="_blank">
Stratford International University</a> (archived), another diploma mill later 
known as
<a href="http://en.wikipedia.org/wiki/Rutherford_University" target="_blank">
Rutherford University</a>. You will see why below. </p>
<p>His biography in the Ming Kei 2011
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0628/GLN20110628029.pdf" target="_blank">
annual report</a>, which was published on 28-Jun-2011, has nothing new, but by 
19-Sep-2011, when he was
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0916/GLN20110916017.pdf" target="_blank">
redesignated</a> as executive Chairman, he had graduated again, with &quot;a master 
of arts and a doctor of philosophy from the Universidad Empresarial De Costa 
Rica&quot; (<strong>UNEM</strong>). That is an entity with a
<a href="http://www.unem.edu.pl/" target="_blank">web site</a> on a Polish 
domain, unem.edu.pl. There is also a domain unem.edu, 
which has no web site <a href="http://www.unem.edu/" target="_blank">at its root</a>, 
but there is a site
<a href="http://www.unem.edu/international/indexen.htm" target="_blank">in a 
subdirectory</a> which has similar content to the Polish one. The site states 
that the President and Rector of UNEM is a Mr William Zamora, who is also the 
administrative contact for the unem.edu domain.</p>
<p>But wait, there's more. Dr Sir Wong is also &quot;the Trade Adviser of the 
Honorary Consulate of
<a href="http://en.wikipedia.org/wiki/Equatorial_Guinea" target="_blank">
Equatorial Guinea</a> to Bucharest Romania&quot;. Apparently the Honorary Consul is a 
&quot;Professor&quot; Eugenio Caligiuri (<strong>Mr Caligiuri</strong>), an Australian of 
Italian extraction, and <a href="http://www.ecaligiuri.com/" target="_blank">
here is his web site</a> and here is
<a href="http://honorary-consul.eu/" target="_blank">another one</a> and
<a href="http://guineaecuatorialconsulado.blogspot.com/" target="_blank">another</a> 
and <a href="http://dreugeniocaligiuri.blogspot.com/" target="_blank">another</a> 
and
<a href="http://profeugeniocaligiuriconsulhonorario.blogspot.com/" target="_blank">
another</a>. How many blogs does a guy need? What a legend. So Dr Sir Wong is 
his adviser. According to his
<a href="http://www.ecaligiuri.com/wap/wap_files/a.htm" target="_blank">WAP site</a>, 
Mr Caligiuri is a &quot;Full Professor&quot; of UNEM, and he has a Phd in law from UNEM.</p>
<p>And there's more! Dr Sir Wong is &quot;the Diplomatic Adviser to the Special 
Representatives for the People's Republic of China of the Sovereign Order of 
Saint John of Jerusalem, Knights of Malta, Federation of the Autonomous Priories 
(<strong>KMFAP</strong>)&quot;. So that is where he gets his &quot;Sir&quot;. And what on earth 
is the KMFAP? Well there is indeed a web site for the Sovereign Order of the 
blah blah at <a href="http://www.kmfap.org/" target="_blank">this link</a>. And 
according to an undated
<a href="http://www.kmfap.net/index.php?article_id=328" target="_blank">press 
release</a>, it has opened a representative office in Macau, and a &quot;Special 
Cabinet Representative&quot;, H.E. Ambassador Dr Eugenio Caligiuri, has been assigned 
to attend the opening ceremony. There he is again - not only is Mr Caligiuri the 
Honorary Consul of Equatorial Guinea in Bucharest, but he is also an ambassador 
for KMFAP, and Dr Sir Wong his is Diplomatic Adviser.</p>
<p>The domains KMFAP.net and KMFAP.org are registered to Adam Popper, of
<a href="https://www.e-szamla.hu/" target="_blank">E-szamla Zrt</a>, some kind 
of e-billing system in Hungary. Szamla is Hungarian for bill or invoice. 
According to the web site, the Secretary General of The Grand Magisterial See of 
KMFAP is &quot;Rev. Manoel Arruda&quot;, whose address is at 7, Pulaski Street, Auburn, NY 
13021, USA. That <a href="http://binged.it/GFd0k5" target="_blank">looks like a 
warehouse</a> and is the address of
<a href="http://www.magiccirclemusic.com/credits.html" target="_blank">Magic 
Circle Music</a>, a heavy metal label, which credits Manoel Arruda for IT 
Management/Web Management. He's also listed as an assistant engineer on this
<a href="http://www.discogs.com/HolyHell-Apocalypse/release/2181822" target="_blank">
discography</a>.</p>
<h3>For our readers in Equatorial Guinea</h3>
<p>So what is the connection between Mr Caligiuri and Equatorial Guinea? Well it 
turns out&nbsp; that not only is Mr Caligiuri a full professor of UNEM, but he 
also doubles as Vice Rector of the &quot;<a href="http://www.iufs.edu/" target="_blank">International 
University of Fundamental Studies in St Petersburg, Russia</a>&quot; (<strong>IUFS</strong>), 
another diploma mill.
<a href="http://www.iufs.edu/presidents-of-countries-guinea-mbasago.html" target="_blank">
According to its web site</a>, IUFS was &quot;invited by the Government of Equatorial 
Guinea&quot; on 6-Jun-2009 to award a &quot;GRAND Doctor of Philosophy in International 
Diplomacy in Defence of Peace&quot; to the President of that country (since 1979),
<a href="http://en.wikipedia.org/wiki/Teodoro_Obiang_Nguema_Mbasogo" target="_blank">
Teodoro Obiang Nguema Mbasogo</a>. So Mr Caligiuri went to Malabo and bestowed 
the award on Mr Obiang.</p>
<p>In case you are wondering, Equatorial Guinea has an
<a href="http://www.protocol.gov.hk/eng/consular/africa/equatorial.htm" target="_blank">
Honorary Consul in HK</a>. Since 19-Aug-2011, that has been Mr
<a href="../dbpub/positions.asp?p=67981">Hui Man Chiu</a>. We know nothing about 
him.</p>
<h3>For our readers in The Gambia</h3>
<p>At the risk of destabilising another small African country,
<a href="http://en.wikipedia.org/wiki/Gambia" target="_blank">The Republic of 
the Gambia</a>, we have to note that their President (since 1994),
<a href="http://en.wikipedia.org/wiki/Yahya_Jammeh" target="_blank">Yahya Jammeh</a>, 
accepted the &quot;prestigious award of the Grand Doctorate of Philosophy in 
International Relations and Diplomacy&quot; from IUFS, presented to him by Mr 
Caligiuri, on 2-Jul-2010, and you can read all about it on the
<a href="http://www.statehouse.gm/award-Grand-Dr-philosophy-Int'l-Relations-Diplmacy_02072010.htm" target="_blank">presidential web site</a>. The award was for his &quot;outstanding services to 
humanity&quot; (but not, perhaps, to human rights). The site says that &quot;Dr. Caligiuri 
reiterated his institution's faith in the Presidential Herbal Treatment 
Programme&quot;. Ah yes, that would be his innovative
<a href="http://observer.gm/africa/gambia/article/president-jammeh-discharges-41-hivaids-treated-patients" target="_blank">
3-day herbal cure for HIV/AIDS</a>.</p>
<h3>The IPSP and Stephen Lee Kwok Leung</h3>
<p>Tagging along with Mr Caligiuri to both Equatorial Guinea and The Gambia was 
a &quot;Dr Lee Kwok Leung&quot;, who is a &quot;senior member of
<a href="http://en.wikipedia.org/wiki/International_Parliament_for_Safety_and_Peace" target="_blank">
International (States) Parliament for Safety and Peace</a>&quot; (<strong>IPSP</strong>), an 
unrecognised accreditation outfit run by one Viktor Ivan Busa. IUFS claims that 
it is <a href="http://www.iufs.edu/Accreditation-Members.htm" target="_blank">
accredited</a> by IPSP, amongst other accreditation mills. IPSP has a
<a href="http://www.internationalparliament.org/" target="_blank">web site here</a>. 
Dr Lee Kwok Leung is also known as Stephen Lee. He has a
<a href="http://drstephenlee.blogspot.com/" target="_blank">blog here</a> and he 
is the Chairman, President, Treasurer and Secretary of
<a href="../dbpub/orgdata.asp?p=1867998">Green Dragon Wood Products, Inc</a>, a 
wood trader based in Kowloon which trades on the US OTCBB. His mum is the only other 
director - so board meetings must be a hoot. He too has an honorary doctor degree from IUFS and is an honorary 
professor of it.</p>
<p>Rutherford University, also known as Stratford International University (where Dr Sir Wong 
might or might not have obtained his second degree)
<a href="http://web.archive.org/web/20081222100328/http://www.rutherford.edu/about.cfm" target="_blank">claimed accreditation</a> from IPSP on its 
web site.</p>
<h3>Hong Kong's special relationship with Gambia</h3>
<p>Gambia has a special relationship with Hong Kong: although it has no 
consulate here, Gambia has been the largest single conduit for Chinese 
mainlanders seeking residency in HK via the
<a href="http://www.immd.gov.hk/ehtml/hkvisas_13.htm" target="_blank">Capital 
Investment Entrant Scheme</a>. In order to qualify for that, apart from making 
an investment of a certain size in certain assets, mainlanders must have 
permanent residence in a foreign country. This is so that we can all pretend 
that mainlanders moving to HK under the scheme are coming with their money from 
overseas and not bypassing mainland capital controls and treating HK as the 
Monaco of China that it is.</p>
<p>So they shop around, looking for 
countries to grant them &quot;permanent&nbsp; residency&quot; without actually expecting 
them to go and live there. The scheme was launched in Oct-2003. In an
<a href="http://www.info.gov.hk/gia/general/200804/16/P200804160211.htm" target="_blank">
answer to LegCo</a> on 16-Apr-2008, the Government revealed that by 31-Dec-2007, 
1,114 Chinese nationals had been formally approved, of whom 414 or 37.2% had 
permanent residency in Gambia. Ranking behind them were Canada and New Zealand, 
and then the world's smallest republic,
<a href="http://en.wikipedia.org/wiki/Nauru" target="_blank">Nauru</a>, with 75. 
There were also 58 from
<a href="http://en.wikipedia.org/wiki/Niger" target="_blank">Niger</a> and 42 
from <a href="http://en.wikipedia.org/wiki/Guinea-bissau" target="_blank">
Guinea-Bissau</a>. Incidentally, the Honorary Consul of Niger is
<a href="../dbpub/positions.asp?p=16241">Hari Harilela</a>, and the Honorary 
Vice Consul is his brother, <a href="../dbpub/positions.asp?p=25303">Gary 
Harilela</a>.</p>
<p>That was the last time the somewhat embarrassing breakdown was published - perhaps David Li Kwok Po 
would be kind enough to ask the question again. Four years later on 31-Dec-2011, 
the <a href="http://www.immd.gov.hk/ehtml/hkvisas_13_19.htm" target="_blank">
total number</a> of mainlanders formally approved has mushroomed to 11,022. They 
account for 84.1% of all approved applicants, with 332 (2.5%) from Taiwan, with 
280 (2.1%) from Macau, and 1,474 (11.2%) being nationals from other countries.</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=16954">Capital Finance Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=48138">Equatorial Guinea</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14272">Evershine Group Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1867998">GREEN DRAGON WOOD PRODUCTS, INC.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=63335">Huasheng International Holding Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=48145">Niger</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=67981">Hui, Man Chiu</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1867996">Lee, Stephen Kwok Leung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=46846">Wong, Nelson Wai Sing</a></li>
				
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