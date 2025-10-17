
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

<script type="text/javascript">document.title="Nuns in the property habit";</script>

	<div class="summary">The Sisters of Saint Paul of Chartres will pay HK$390m for a vacant Kowloon residential site opposite their private hospital. The site changed hands in January for just $298m, and half of it was acquired in 2010-11 for $76.4m. We trace the history of the site.</div>

<h2 class="center">Nuns in the property habit<br>
<span class="headlinedate">20 November 2015</span></h2>
<p><a href="../dbpub/orgdata.asp?p=1848991">The Mother Superior of the Soeurs de 
Saint Paul de Chartres (Hong Kong)</a> (<strong>SRSPC</strong>), a statutory 
body, has conditionally agreed to fork out HK$390m for a pair of vacant residential sites at 8 
and 10 Lomond Road, Kowloon, which is across the street from the private 
hospital they run, <a href="../dbpub/orgdata.asp?p=48688">St. Teresa's</a>. The 
company that owns the land changed hands in January for just $298m, so it is up 
30.9% since then.</p>
<img class="center" alt="8 Lomond Road, from Google Maps" src="../images/8LomondRoad.jpg">
<p>The vendor is <a href="../dbpub/orgdata.asp?p=735770">Super Group Development 
Ltd</a> (<strong>SGD</strong>) which is 100% owned by
<a href="../dbpub/orgdata.asp?p=2502033">Goldee Holdings Ltd</a> (<strong>Goldee</strong>, 
BVI). Goldee is 51% owned by <a href="../dbpub/articles.asp?p=15917">Celebrate 
International Holdings Ltd</a> (<strong>Celebrate</strong>, 8212), which 
acquired the stake from then-100% owner Champion Prospect Ltd (<strong>Champion 
Prospect</strong>, BVI), the owner of which has not been disclosed. You might 
think that is odd, but HK Listing Rules do not require companies to say whom 
they are really dealing with, allowing them to hide behind BVI shells. Celebrate
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/1119/GLN20151119039.pdf" target="_blank">
announced</a> the sale by SGD yesterday.</p>
<p>Celebrate began the acquisition process with an announcement on 2-Dec-2014 
when it
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2014/1202/GLN20141202103.pdf" target="_blank">
signed</a> a non-binding memorandum of understanding to buy 100% of Goldee for 
HK$315m, but this was superceded by an
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0318/GLN20150318063.pdf" target="_blank">
agreement</a> on 16-Mar-2015 to buy 51% for $160.65m, implying the same 
valuation of $315m for 100%.</p>
<p>The announcement revealed that Goldee had acquired SGD for $298m in a 
transaction which completed on 14-Jan-2015. We pause to note that this is a 
common method of avoiding the punitive 8.5% <a href="../dbpub/subject.asp?c=131">
Double Stamp Duty</a> and 15% <a href="../dbpub/subject.asp?c=107">Buyer's Stamp 
Duty</a> which would otherwise apply to acquisitions of residential sites by 
companies, saving 23.5% or $70.03m. Instead, stamp duty of 0.2% ($0.59m) was 
payable on the transfer of SGD, being shares in a HK company. SRSPC will have to 
pay 23.5% on the direct land purchase, but can claim a refund after it obtains 
planning approval to redevelop the sites under
<a href="http://www.hklii.hk/eng/hk/legis/ord/117/s29dd.html" target="_blank">
section 29DD</a> of the Stamp Duty Ordinance.</p>
<p>SGD was incorporated on 8-Jan-1997 and acquired 10 Lomond Road for 
HK$34m on 21-Apr-1997. Starting 13 years later, the identically-sized next-door 
site, in 3 apartments, was acquired between 23-Aug-2010 and 21-Oct-2011 for a 
total of HK$76.4m. So the two sites combined cost SGD HK$110.4m, plus holding 
costs.</p>
<p>A Celebrate
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0526/GLN20150526011.pdf" target="_blank">
circular</a> on its acquisition of 51% of Goldee went out on 26-May-2015 and the 
deal was
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/0617/GLN20150617043.pdf" target="_blank">
completed</a> on 17-Jun-2015.</p>
<p>A clue as to the owner of the vendor, Champion Prospect, lies in the 
directors of Goldee and SGD. <a href="../dbpub/natarts.asp?p=2502036">Michael Ng 
Kwok Wing</a> was appointed as a director of SGD on 14-Jan-2015, the day that 
Goldee completed the acquisition of SGD, and he was the only director of Goldee 
from its incorporation on 26-Sep-2014 at least until 28-Feb-2015, the cut-off 
date in the circular. He was still a director of Goldee when on 13-Oct-2015 Celebrate
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2015/1013/GLN20151013029.pdf" target="_blank">
lent him</a> HK$5m, and it disclosed that the other 49% of Goldee was owned by a 
company "controlled" by him.</p>
<p>SGD had probably been flipped at least once before that though, because all 
but 1 of its directors changed on 17-Jun-2013, when Mr Mak Law Mo, Mr Ng Kam 
Tong and Mr Tam Fung King resigned, and a Mr Chan Chi Keung and Mr Denthur Lee 
Kwok Yin were appointed, both resigning on 14-Jan-2015.
<a href="../dbpub/natarts.asp?p=76368">Denthur Lee Kwok Yin</a> was once a 
member of "key management" at <a href="../dbpub/articles.asp?p=58895">Convoy 
Financial Holdings Ltd</a> (1019) but
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0313/LTN20130313315.pdf" target="_blank">
sold</a> his 20.35% stake in its controlling shareholder, Convoy Inc., on 
13-Mar-2013. The founder of Convoy group was one Chan Chi Keung, who
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0222/LTN20130222392.pdf" target="_blank">
sold</a> his 19.69% stake in Convoy Inc. on 22-Feb-2013. One person was a 
director of SGD throughout the track record period from 1-Jul-2011 to 
28-Feb-2015, Mr Wong Hok Sum, <a href="../dbpub/positions.asp?p=123729">a name 
which briefly appeared</a> in 2008 as a representative of Convoy Asset 
Management Ltd.</p>
<p>The leasehold interest in 8-10 Lomond Road runs for 75+75 years from 
1937 (if you believe the valuation report, p177) or 1939 (if you believe the 
Letter from the Board, p23) and is restricted to "semi-detached houses of 
European type" with a maximum height of 35ft and not within 10 feet of Leven 
Road (now known as Lomond Road). The combined site area is 846.85 sq.m. (9115.5 
sq. ft.) and the existing building plan from 1953 allowed a saleable area of 
1012.6 sq. m. in two semi-detached 3-storey buildings. However, the
<a href="http://www2.ozp.tpb.gov.hk/plan/ozp_plan_notes/en/S_K10_21_e.pdf#nameddest=RB" target="_blank">
Group B zoning in the Outline Zoning Plan</a> allows for a plot ratio of 5, so 
if they pay a lease modification premium then they should be able to develop a 
gross floor area of 45,577 sq. ft.. That means that SRSPC has already paid about 
$8557 per gross square foot, plus construction costs and lease modification 
premium.</p>
<p>Up the road at 20-22 Lomond Road, the Sisters in 2009
<a href="http://www.info.gov.hk/tpb/en/meetings/MPC/Minutes/m392mpc_e.pdf" target="_blank">
obtained approval</a> (<a href="http://www1.ozp.tpb.gov.hk/gist/apply/en_tc/A_K10_229_TC.pdf" target="_blank">more</a>) 
and developed a 15-storey nurse training centre and residential quarters at a 
plot ratio of 5, visible with the red roof in the Google maps view above, so 
perhaps they have similar plans in mind for their latest acquisition.</p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=15917">Celebrate International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=58895">Convoy Global Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2502033">Goldee Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1848991">MOTHER SUPERIOR OF THE SOEURS DE SAINT PAUL DE CHARTRES (HONG KONG) (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=48688">ST. TERESA'S HOSPITAL</a></li>
				
				<li><a href="/dbpub/articles.asp?p=735770">SUPER GROUP DEVELOPMENT LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=76368">Lee, Denthur Kwok Yin</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2502036">Ng, Michael Kwok Wing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=123729">Wong, Hok Sum</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=107">Buyer's Stamp Duty</a></li>
				
				<li><a href="/dbpub/subject.asp?c=131">Double Stamp Duty</a></li>
				
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