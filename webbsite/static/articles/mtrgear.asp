
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

<script type="text/javascript">document.title="MTRC and the new Kowloon-Canton railway";</script>

	<div class="summary">We call on Government to disclose what the revenue-sharing deal with China Railway will be and to lease XRL directly to China Railway rather than MTRC, leaving MTRC to run the HK network. The MTRC special dividend should be unconditional and should be increased from $4.40 to $11 per share, slimming down the obese balance sheet to a healthy weight.</div>

<h2 class="center">MTRC and the new Kowloon-Canton railway<br>
<span class="headlinedate">12 January 2016</span></h2>
<p>Let's get a few things straight about what's happening at
<a href="../dbpub/articles.asp?p=11569">MTR Corporation Ltd</a> (<strong>MTRC</strong>, 
0066), Hong Kong's only listed "state-owned enterprise", of which the HK 
Government (<strong>HKSARG</strong>) owns over 76.2%. Yes, there are plenty of
<em>unlisted</em> ones, and there is one other listed HKSARG-<em>controlled</em> 
enterprise, <a href="../dbpub/articles.asp?p=9643">Hong Kong Exchanges and 
Clearing Ltd</a> (<strong>HKEx</strong>, 0388), but it is controlled via 
statutory powers to appoint directors and approve the Chairman and CEO, not 
through ownership. In small-circle HK, the Chairman of HKEx is the former CEO of 
MTRC. The serving Chairman of HKEx (since its incorporation in 1999) has always 
been a member of the HKSAR Executive Council.</p>
<p>Roll the clock back to late 2009, and you may remember an almighty political 
row, culminating in mass protests outside the Legislative Council, when the 
HKSARG sought LegCo Finance Committee approval to build the Express Rail Link (<strong>XRL</strong>) 
to Shenzhen, connecting with the national high speed network run by China 
Railway, which is 100%-owned by the PRC Government. The main concern was about 
the cost and whether cheaper options were available, such as a connection to 
West Rail at a station further north. On 16-Jan-2010 the Finance Committee 
eventually approved spending of HK$66.82bn (voting records
<a href="http://www.legco.gov.hk/yr09-10/english/fc/fc/results/fc20100115.htm" target="_blank">
here</a>) and on 26-Jan-2010, the Government signed an "Entrustment Agreement", 
commissioning the MTRC to manage the project in return for a fee of $4.59bn. The 
approved project cost was already some 52% higher than a
<a href="http://www.legco.gov.hk/yr07-08/english/panels/tp/tp_rdp/papers/tp_rdp-thbtcr11658199-e.pdf" target="_blank">
$44bn estimate</a> in Apr-2008 when approval was given for the design costs of 
HK$2.78bn (voting records
<a href="http://www.legco.gov.hk/yr07-08/chinese/fc/fc/results/0807042.pdf" target="_blank">
here</a>). </p>
<p>Incidentally, it was also in Apr-2008 that the Government decided that the 
train terminus would extend underneath the West Kowloon Cultural District, which 
is why it too is delayed and remains the West Kowloon Cultural Desert apart from 
the occasional open-air concerts. Stand by for another battle over the cost of 
completing the project with its "integrated basement" - perhaps we should bring 
back <a href="../dbpub/natarts.asp?p=2656">Henry Tang Ying Yen</a> with his 
subterranean expertise to oversee it.</p>
<h3>Delays and costs</h3>
<p>Infrastructure budgets are usually measured in "money-of-the-day" (<strong>MOD</strong>) 
prices, so assuming positive inflation, the later an item of expenditure occurs, 
the more it will cost in MOD terms as wages and prices rise, but not necessarily 
in real terms. A delayed project usually results in later payments, but at the 
same time, the Government gets to earn additional returns while the money 
remains in its investment reserves.</p>
<p>The <strong>XRL</strong> is a government project to build a government-owned 
asset, part of the HKSARG's wish to integrate with the mainland's 
centrally-planned government-owned network. Even back in 2008, with an estimated 
cost (in 2009 dollars) of $39.5bn, XRL was not financially viable. As the HKSARG
<a href="http://www.legco.gov.hk/yr07-08/english/panels/tp/tp_rdp/papers/tp_rdp-thbtcr11658199-e.pdf" target="_blank">
put it</a>:</p>
<blockquote>"Based on MTRCL’s assessment, the XRL project in itself 
is not financially viable and a funding gap of $29.5 billion (in 2009 prices) 
would result if the project is carried out under the ownership approach."</blockquote>
<p>In other words, MTRC estimated that taking into account its target rate of 
return and expected revenues, the project could only generate a net present 
value of HK$10bn in 2009 dollars. As a result, either the Government would have 
to pay the difference to MTRC (and forego any upside except as a shareholder), 
or bear the costs and risks of construction and then rent it to MTRC for a very 
low rate of return on the cost, known as the "concession approach", which it 
adopted. At the same time, HKSARG made the usual arguments about "economic 
benefits" to HK. Such arguments always avoid assessment of the economic benefits 
that might have accrued if the capital had been returned to the private sector 
instead through reduced taxation. Other examples of this sophistry include the
<a href="http://www.news.gov.hk/en/categories/finance/html/2015/02/20150204_155348.shtml" target="_blank">
Kai Tak Cruise Terminal</a> and the
<a href="http://www.chinadailyasia.com/business/2014-02/28/content_15121453.html" target="_blank">
HK-Zhuhai-Macau road bridge</a>, neither of which is financially viable on its 
own. Each of those also introduces external costs, such as air pollution, which 
are never subtracted from the "economic benefits" that the Government likes to 
promote.</p>
<p>The XRL was originally set to be opened in Aug-2015, but delays 
accumulated along with cost overruns. Causes included issues with cross-boundary 
tunneling (the route
<a href="https://www.hongkongfp.com/2015/08/12/express-rail-works-halt-as-mtr-fails-to-contain-damage-at-mai-po-marshes/" target="_blank">
goes under</a> the Mai Po wetlands), "unexpected geological problems" and a
<a href="http://www.info.gov.hk/gia/general/201403/31/P201403310908.htm" target="_blank">
black rainstorm on 30-Mar-2014</a> which flooded a tunnel, badly damaging a 
tunnel boring machine (or if civil engineering doesn't excite you, a boring 
tunnel machine). The net result of all that is the current MOD estimate for XRL 
of HK$84.42bn, including both inflation and real increases.</p>
<h3>How will the revenue be shared?</h3>
<p>MTRC agreed to carry out the project management, on the "understanding that 
it would be invited", when the link is completed, to operate the XRL to Shenzhen 
in return for a share of the revenues, with the rest being paid to HKSARG as 
rent. However, so far, despite hundreds of pages of submissions to LegCo, the 
Government has never revealed the proposed terms of this "invitation" or 
concession agreement. What rent or revenue share will HKSARG charge MTRC, and 
how will revenues be divided between China Railway and MTRC? As an operating 
agreement, minority shareholders will have no say in this - the Stock Exchange 
exempted MTRC from the connected transaction rules on specious grounds long ago.</p>
<p>All we know is that according to 
<a href="http://www.legco.gov.hk/yr09-10/english/fc/pwsc/papers/p09-68e.pdf" target="_blank">
a briefing to LegCo in 2009</a>, the financial model 
assumed the following fares, from Kowloon: HK$45 to
<a href="https://goo.gl/maps/bZ25yXuqzY32" target="_blank">Futian Station</a>, 
$49 to <a href="https://goo.gl/maps/D5GxZwdamiJ2" target="_blank">Shenzhen North 
Station</a> in Longhua, $131 to
<a href="https://goo.gl/maps/JHiodhLp4Q62" target="_blank">Humen Station</a> 
(Dongguan) and $180 to
<a href="https://goo.gl/maps/2YdHsmCXAmG2" target="_blank">Guangzhou South 
station</a> (Shibi), outer Guangzhou. We don't know how much of that fare 
revenue will go to China Railway, how much to the operator on the HK side of the 
boundary and how much to the HKSARG. We don't even know whether HKSARG/MTRC and 
China Railway have reached an agreement on this.</p>
<p>However, some guidance is provided by the existing Kowloon-Canton rail link. 
According to the 6-May-1996
<a href="../codocs/0525_960506ipo.pdf" target="_blank">prospectus</a> of
<a href="../dbpub/orgdata.asp?p=4853">Guangshen Railway Co Ltd</a> (<strong>GR</strong>, 
0525), revenues on Hong Kong through trains were split 81.2% to GR and 18.8% to
<a href="../dbpub/articles.asp?p=396">Kowloon-Canton Railway Corporation</a> (<strong>KCRC</strong>), 
which is 100%-owned by HKSARG. That revenue split is almost exactly in 
proportion to the length of the two segments. We assume there has been no change 
in that split. Since 2-Dec-2007, MTRC maintains and operates the KCRC assets 
under a 50-year concession, so the revenue now goes to MTRC, out of which it 
pays a share to the KCRC. After the 1949 communist takeover, KCR through-trains 
were suspended until 1979, but we can go back further. According to the
<a href="../codocs/KCR1934report.pdf" target="_blank">1934 report</a> of the KCR 
(British Section), there was a new "working agreement" for through-traffic under 
which the British Section's share of revenue was reduced from 35% to 28% in the 
last quarter of the year, replacing the 1911 agreement that had never been 
ratified.</p>
<p>If that 18.8% revenue share is applied to a HK$180 XRL fare to Guangzhou, 
then HKSARG and MTRC may be sharing just $34 between them. <strong>Legislators 
appear to be working in the dark on all of this, and it is about time the 
Government told them what the deal with China Railway and HKSARG/MTRC will be</strong>. 
There has also been no disclosure on how much of the rolling stock will be owned 
by the HK side and how much by China Railway, but the MTRC
<a href="http://www.mtr.com.hk/archive/corporate/en/press_release/PR-13-094-E.pdf" target="_blank">
press release of 6-Nov-2013</a> tells us that they have ordered (presumably on 
HKSARG's behalf) 9 trains for HK$1.74bn from CSR Qingdao Sifang Co., Ltd, "based 
on" the
<a href="https://en.wikipedia.org/wiki/China_Railways_CRH380A" target="_blank">
CRH380A</a>. One country, two paint jobs. It is unclear whether these trains 
will operate beyond Futian Station or only as a shuttle on the HK Section, 
leaving all other services to China Railway.</p>
<p><strong>This rather begs the question, what is the point of the MTRC 
accepting an invitation to "operate" the XRL? For sure, someone needs to 
maintain the dedicated tunnel, track, terminus and sidings, but why doesn't 
HKSARG just lease the completed XRL to China Railway for as much as they can 
negotiate, and leave MTRC to operate the domestic HK network? Legislators should 
pay attention to this.</strong></p>
<h3>Travel time</h3>
<p>The much-vaunted travel time of 48 minutes for 140km from West Kowloon to 
Guangzhou South will only apply to non-stop trains. Allowing for braking, 
boarding and acceleration times, you can probably add 15 minutes to that if the 
train stops at all 3 stations in between. Then when you get to Guangzhou South, 
if you are heading to the central business district (let's say Guangzhou IFC at 
Pearl River New Town station),
<a href="https://goo.gl/maps/NQ7WKvg8ufu" target="_blank">according to Google 
Maps</a>, you are just 14 stops, 3 subway lines and 59 minutes away.</p>
<p>The current through-train from Hunghom to Guangzhou East takes a
<a href="http://www.it3.mtr.com.hk/B2C/frmScheduleGuangdong.asp?strLang=Eng" target="_blank">
scheduled</a> 114 minutes non-stop, or 119 minutes with 1 stop. But then to get 
from Guangzhou East to Pearl River New Town is just 14 minutes involving 3 stops 
on a single subway line. So depending on where in HK you are travelling from, 
the XRL may make save very little time. </p>
<p>Yes, there are also going to be express trains from West Kowloon to cities 
further away, but that is only useful up to a point. Even allowing for check-in 
times on flights, the expected 8 hours to Shanghai and 10 hours to Beijing will 
be slower than flying and quite possibly more expensive than budget airlines.</p>
<h3>History repeating</h3>
<p>History is repeating itself. About once a century, HK tries to build a 
railway to Guangzhou. Take a look at the LegCo
<a href="http://www.legco.gov.hk/1910/h100310.pdf" target="_blank">Hansard for 
10-Mar-1910</a>. The Governor, <a href="../dbpub/natperson.asp?p=2092180">
Frederick Lugard</a>, delivered the Annual Report on the construction of the 
"British section" of the Kowloon-Canton (now Guangzhou) railway for 1909. There 
had been huge delays and cost overruns in the previous years but the project was 
now coming to an end. One of the major aspects of that project was the 7,212 ft 
(2,198 metres) tunnel through Beacon Hill, Kowloon, still in use today. He said:</p>
<blockquote>"As we have all learned, these tunnels have been found 
exceedingly difficult to estimate for, and in consequence of the exceedingly 
hard nature of the rock and other causes there has been a total increase on the 
original estimate of $1,607,730, which is something like 73 per cent. on the 
original estimate..."</blockquote>
<p>Weather was also an issue then as now. In the
<a href="../codocs/KCR1908report.pdf" target="_blank">1908 report</a>, the Chief 
Resident Engineer wrote:</p>
<blockquote>&nbsp;"in the end of July and beginning of August the 
typhoon damaged the coolie sheds so much that the coolies all ran away and in 
consequence work stopped for nearly a week."</blockquote>
<p>You can hardly blame them - the roof came off their quarters, according to 
the <a href="../codocs/typhoon19080727.pdf" target="_blank">Report on the 
Typhoon of 27-28-July 1908</a>. </p>
<p>The British Section of the KCR opened on 1-Oct-1910 and through-trains on the 
KCR eventually began on 5-Oct-1911, just 5 days before the
<a href="https://en.wikipedia.org/wiki/Xinhai_Revolution" target="_blank">Xinhai 
Revolution</a>, with a temporary terminal in a godown on Salisbury Road, pending 
completion of the reclamation for the permanent terminal, which opened on 
28-Mar-1916 where the
<a href="https://en.wikipedia.org/wiki/Hong_Kong_Cultural_Centre" target="_blank">
Cultural Centre</a> now stands. All that remains of that terminal is the clock 
tower. After the communist takeover in 1949, through-trains ended and the 
railway was divided into two sections, Guangzhou to Shenzhen, and Lo Wu to HK. 
Through-trains from Kowloon to Guangzhou resumed in 1979 as Deng Xiaoping's 
re-opening of China began.</p>
<h3>The conditional XRL Agreement</h3>
<p>Now, back to the present, and MTRC minority shareholders are being asked (<strong><a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2016/0106/LTN20160106511.pdf" target="_blank">circular 
here</a></strong>) at an EGM on 1-Feb-2016 to approve a deal (<strong>XRL 
Agreement</strong>) with HKSARG in which MTRC will be responsible for any 
further cost overruns. In exchange, it will get a higher management fee of 
HK$6.34bn, up from $4.59bn. Under the previous Entrustment Agreement, there was 
a liability cap basically equal to the Project Management and other fees 
received by MTRC, currently up to $4.94bn, which will increase to $6.69bn. 
However, there are some circumstances (the details of which have not been 
disclosed) in which the Liability Cap would be invalid, presumably including 
gross negligence or willful default of MTRC's obligations.</p>
<p>The XRL Agreement has a small sting in the tail. The Government reserves the 
right to refer part or all of the current cost overrun of $19.42bn to an 
arbitrator. If the arbitrator rules that MTRC would, but for the Liability Cap, 
be liable for an amount greater than the cap, then the XRL Agreement requires 
MTRC to seek approval of its independent shareholders to waive the cap and bear 
the excess liability. We can't imagine why independent shareholders would vote 
in favour of that though, so the risk of such a payment being made is fairly 
small and the clause is there mainly for political effect.</p>
<p>Given that the Government (including the Exchange Fund) owns over 76% of 
MTRC, there is also little point in racking up lawyers' fees in arbitration or 
suing its own subsidiary, so we suspect that part of the arrangement will not be 
pursued. We can also be fairly confident at this stage, with tunneling 
completed, that there is enough cushion in the budget (which includes a 
HK$1.95bn "general contingency reserve") not to exceed the new cost.</p>
<h3>The special dividend should be unconditional and higher</h3>
<p>MTRC proposes a special dividend of HK$4.40 per share in two equal tranches 
in the second halves of 2016 and 2017. The Government will receive HK$19.51bn of 
this, which almost exactly equates to the current cost overrun, so it creates 
the impression that the Government will not have to "put in any cash" to 
finish the project. This is a political optical illusion, of course, but a welcome one 
as it results in the return of some of the surplus capital to MTRC's minority 
shareholders.</p>
<p>What is not welcome, though, is that this dividend is conditional on the XRL 
Agreement being approved and the LegCo Finance Committee giving approval for the 
XRL cost overrun, by 30-Sep-2016. The two issues of whether the MTRC has too 
much capital for its business (it does) and whether the Government should 
complete the XRL (it now should) are completely unrelated. On the second issue, 
it would now be stupid not to complete the XRL, firstly because we would have 
the world's most expensive hole in the ground, and secondly because HKSARG would 
have to compensate contractors for terminated contracts which would cost a 
substantial part of the cost overrun anyway.</p>
<p>MTRC has very little net debt, and for years it has operated with far more 
capital than it needs, dragging down the rate of return on equity for investors. 
MTRC is basically a utility business; although it also has income from property 
developments, this often comes with very little capital commitment because 
typically the various HK developer partners put up most of the land premium and 
construction costs and just pay MTRC a share of the profits and/or retail 
investment properties at the end of the project. As a utility company with a 
steady cash flow, MTRC can and should be more substantially financed by 
borrowings to improve returns on shareholders' equity.</p>
<p>In the transaction circular, MTRC claims that the net debt at 
30-Jun-2015 was 9.1% of total equity of HK$167.4bn. However, even that modest 
gearing includes $10.59bn (6.3%) of "obligations under service concession". 
This is the net present value of HK$750m per year being the fixed component of 
the rent on KCRC assets which have 42 
years remaining. With the dividend of HK$25.76bn, the gearing would increase to 
about 29.0%, or 21.5% excluding the service concession obligations. This is well 
within MTRC's financial capabilities and the real question should be, if they 
now admit that they don't need to hang on to $4.40 per share, then why not more? 
Is this really just the right amount to pay out?</p>
<p>So let's answer that. According to the circular, since privatisation in 2000, MTRC's gearing 
has a historical peak of 59.3%. Since then, it has been hoarding profits and 
reducing gearing. By comparison, HK's two territorial 
electricity monopolies, <a href="../dbpub/articles.asp?p=341">CLP Holdings Ltd</a> 
(0002) and <a href="../dbpub/orgdata.asp?p=2176859">HK Electric Investments Ltd</a> 
(2638), have 
gearing of 66.8% and 88.0% respectively, and nobody is suggesting that they are 
financially unsound. In Singapore, the metro operator, SMRT Corporation, has 
gearing of 79.9%. <strong>To get to the average gearing of these three peers, at 
78.2%, MTRC would need to distribute an extra HK$39.1bn, 
or about $6.67 per share. </strong>That would increase net debt to $80.10bn 
(including the obligation under service concession) and reduce equity to 
$102.49bn.</p>
<p>So in our view, now that the MTRC has recognised its balance sheet obesity 
problem caused by hoarding historical profits, <strong>MTRC should go the whole way and 
slim down by paying out $11 per share</strong>, not $4.40, making a total of 
HK$64.4bn. The distributable reserves are HK$68.3bn at 
30-Jun-2015, so they can do that. The Financial Secretary Inc, on its holding of 75.7%, would receive 
a total of HK$48.78bn, adding a substantial $29.36bn to the public purse even 
after the cost overrun on XRL. No shareholders' approval is required for an 
interim dividend, so the board of MTRC could declare an $11 dividend today, if it so chooses. 
Suitable debt financing would then be lined up to pay out the dividend. The 
proposal of $4.40 merely reduces MTRC's balance sheet from grossly obese to 
seriously overweight. $11 would make it healthy.</p>
<p>Meanwhile, despite the concerns stated above, independent shareholders should
<strong>vote in favour</strong> of the XRL Agreement at the EGM on 1-Feb-2016.</p>
<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2524273">China Railway Corporation</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4853">GUANGSHEN RAILWAY COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=396">KOWLOON-CANTON RAILWAY CORPORATION</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11569">MTR CORPORATION LIMITED</a></li>
				
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