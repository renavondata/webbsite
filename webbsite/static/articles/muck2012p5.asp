
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

<script type="text/javascript">document.title="Raking muck, Part 5";</script>

	<div class="summary">In the penultimate episode, we look at a transaction in progress by Railsmedia (0745) and how it connects with CPEC (8041), COMG (0254) and 3 shells. We also introduce a 10th listed company to the story, Zhi Cheng (8130) which has such a track record of value destruction that it has consolidated its shares by 200,000 to 1 since 2007.</div>

<h2 class="center">Raking muck, Part 5<br>
<span class="headlinedate">11 March 2012</span></h2>
<p>As you will recall from <a href="muck2012p4.asp">Part 4</a>, this series has covered transactions by 9 listed 
companies so far:</p>
<ul>
	<li><a href="../dbpub/orgdata.asp?p=4905">China Outdoor Media Group Ltd</a> (<strong>COMG</strong>, 
0254)</li>
	<li><a href="../dbpub/orgdata.asp?p=10770">China Post E-Commerce (Holdings) Ltd</a> (<strong>CPEC</strong>, 8041)</li>
	<li><a href="../dbpub/orgdata.asp?p=23261">China Railsmedia Corp Ltd</a> (<strong>Railsmedia</strong>, 
	0745)</li>
	<li><a href="../dbpub/orgdata.asp?p=1365">China Yunnan Tin Minerals Group Co 
	Ltd</a> (<strong>CYTM</strong>, 0263)</li>
	<li><a href="../dbpub/orgdata.asp?p=60339">CNC Holdings Ltd</a> (<strong>CNC</strong>, 8356)</li>
	<li><a href="../dbpub/orgdata.asp?p=4946">Hycomm Wireless Ltd</a> (<strong>Hycomm</strong>, 
	0499)</li>
	<li><a href="../dbpub/orgdata.asp?p=16958">Inno-Tech Holdings Ltd</a> (<strong>Inno-Tech</strong>, 
	8202)</li>
	<li><a href="../dbpub/orgdata.asp?p=3449">Simsen International Corp 
Ltd</a> (<strong>Simsen</strong>, 0993)</li>
	<li><a href="../dbpub/orgdata.asp?p=1586">Wo Kee Hong (Holdings) 
Ltd</a> (<strong>WKH</strong>, 0720)</li>
</ul>
<p>In this article we will focus on the latest transaction by Railsmedia, which 
also involves CPEC and COMG, and we will introduce a 10th listed company to the 
story:</p>
<ul>
	<li><a href="../dbpub/orgdata.asp?p=16407">Zhi Cheng Holdings Ltd</a> (<strong>Zhi Cheng</strong>, 8130)</li>
</ul>
<h3>Railsmedia to buy Huge Leader (FingerAd)</h3>
<p>On 27-Oct-2011, Railsmedia conditionally
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/1121/LTN20111121569.pdf" target="_blank">
agreed</a> to buy Huge Leader Development Ltd (<strong>Huge Leader</strong>, 
BVI) from Huge Leader Holdings Ltd (<strong>HL Vendor</strong>) for HK$690m, to 
be satisfied with $200m in a 2% 2-year promissory note and $490m in preference 
shares convertible @$0.07. The deal is still pending and on Friday the circular was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2012/0309/LTN20120309565.pdf" target="_blank">delayed again</a> 
until 14-Mar-2012. The domicile of HL Vendor was not disclosed. 
HL Vendor is owned 40% by Ms Chan Ka Wai (this name is so common that there are 
19 in our database), 30% by Mr Xiao Baoyan (about whom we know nothing), and 30% 
by <a href="../dbpub/positions.asp?p=19150">Anthony Tang Tsz Hoo</a> (<strong>Anthony 
Tang</strong>). Anthony Tang was co-founder and an Executive Director of
<a href="../dbpub/articles.asp?p=18154">Heng Xin China Holdings Ltd</a> (<strong>Heng 
Xin</strong>, 8046, then known as &quot;Tiger Tech Holdings Ltd&quot;) until 14-Nov-2005.</p>
<p>Incidentally, in the Heng Xin IPO prospectus, Anthony Tang was an &quot;MBA candidate 
in Newport University of the US&quot;, a diploma mill our readers have
<a href="francischoi.asp">heard about</a> before. He made no further 
mention of the MBA in post-IPO annual reports. Also, one of the INEDs of Heng 
Xin from the IPO until 10-Mar-2006 was <a href="../dbpub/positions.asp?p=17963">Allan Kwok Ming Fai</a>, 
who featured in <a href="muck2012p2.asp">Part 2</a> of this series.</p>
<p>Huge Leader has no track record. It has a single subsidiary,
<a href="../dbpub/orgdata.asp?p=1781638">FingerAd Media Co Ltd</a> (<strong>FingerAd</strong>), 
incorporated in HK on 18-Jul-2011, and consolidated net liabilities at 
30-Sep-2011 of just HK$2,669. Huge Leader group is:</p>
<blockquote>&quot;currently engaged in providing advertising and value added 
services in Hong Kong through mobile devices and digital media network of LCD 
and flat panel screens in retail chain network.&quot;</blockquote>
<p>Does that sound familiar? Yet another TVs-in-shops venture, but with a new 
gimmick. The announcement 
continues:</p>
<blockquote>&quot;FingerAd has teamed up with
<a href="../dbpub/orgdata.asp?p=971507">Amazing World Corporation Limited</a>...trading 
under the name of &quot;<a href="http://www.terage.com/" target="_blank">Tera Age</a>&quot;, 
for the supply of solutions for mobile platforms... FingerAd has entered into a 
legally binding agreement dated 15 September 2011 with Tera Age pursuant to 
which Tera Age shall supply exclusively to FingerAd solutions for mobile 
platforms with online advertising capability for the food &amp; beverage industry 
for an initial term of five years. Tera Age also granted to FingerAd the first 
right of refusal for the exclusive supply of similar solutions for the travel 
industry and apparel industry for an initial term of five years...</blockquote>
<blockquote>&quot;Currently the key solution to be provided is the Dining App. 
The Dining App is not just a software, but a whole new platform for the food &amp; 
beverage industry to market and promote their business and to keep connected 
with their customers...The Dining App...includes 3 key modules, the Mobile App 
for both
<a href="http://itunes.apple.com/us/app/shao-rouno-niu-tai-ben-zhen/id496826560">
Apple iOS</a> and
<a href="https://market.android.com/developer?pub=FingerAd+Media+Company+Limited&amp;hl=en" target="_blank">
Android</a>, System Administration Tool and Content Management System...The 
Dining App services has been launched on 15 September 2011. In order to create 
market awareness and the momentum for market penetration, FingerAd is offering a 
free trial period to new subscribers. Therefore as at the date of this 
announcement, no revenue is recorded for the Dining App services.&quot; (links added)</blockquote>
<p>FingerAd also has a web site
<a href="http://www.fingerad.com.hk/" target="_blank">here</a>. That site claims 
that FingerAd is already a subsidiary of Railsmedia - but the deal hasn't closed 
yet, so that is false. Now, take a look at the Apps at the links above - would you pay HK$690m for 
the right to operate this &quot;whole new platform&quot;? How much do you think FingerAd 
is paying Tera Age? But wait, there's more: our old friend 
<a href="../dbpub/orgdata.asp?p=151491">iKanTV Ltd</a> (<strong>iKanTV</strong>) enters the 
picture. As you will recall from Part 2, iKanTV is now 53% owned by CPEC and 47% by 
COMG. CPEC bought 4% of iKanTV from COMG for HK$9.2m cash, and 49% 
from Mr Kwok Ming Fai and Vicky Yu, for a total of HK$116.84m in shares, while 
COMG paid only US$47 for its stake in the startup. Railsmedia says:</p>
<blockquote>&quot;FingerAd has entered into a legally binding cooperation 
agreement dated 15 September 2011 with iKanTV Limited ("iKan") pursuant to which iKan shall refer clients exclusively to FingerAd for the Dining App services for 
an initial term of two years...iKan operates the "<a href="http://www.babybamboo.com.hk/" target="_blank">babybamboo.com.hk</a>" 
website and is one of the main online group purchasing market player in Hong 
Kong. It focuses on the food and beverage market with a strong sales force and 
large customer base. FingerAd and iKan shall share the revenue generated from 
those clients referred by iKan. As at the date of this announcement, iKan has 
secured 43 restaurants subscribing for the Dining App services...&quot;</blockquote>
<p>Underwhelmed we are. BabyBamboo looks like another Groupon me-too. The 
Railsmedia announcement tell us that iKanTV will be selling its installed 
screens to FingerAd:</p>
<blockquote>&quot;FingerAd will also provide advertising services through 
digital media networks of LCD and flat panel screens in retail chain network. 
FingerAd has entered into a legally binding agreement dated 26 October 2011 with 
a leading chain retail group for household goods in Hong Kong (the "Chain Store 
Group") pursuant to which FingerAd has the right to install and operate a 
digital media network of LCD and flat panel display units at the retail stores 
under the Chain Store Group in Hong Kong. Currently the Chain Store Group has 
approximately 200 retail stores in Hong Kong selling a wide range of household 
products. It is expected that FingerAd will establish a digital media network of 
flat panel screens at over 100 stores under the Chain Store Group. The network 
of flat panel screens has been installed and is currently operated by iKan.
<u>FingerAd will acquire the installed screens and other 
hardware from iKan</u> and roll out the digital media network upon 
commencement of the agreement on 27 November 2011&quot; (emphasis added)</blockquote>
<p><a href="../dbpub/positions.asp?p=1850390">Billy Chan Kai Sing</a> is the CEO 
of Huge Leader group, as well as being the COO of iKanTV over at CPEC - so it is 
not clear where he will end up sitting. He seems to be running two start-ups 
simultaneously which are now pooling their interests. Only one other person is 
mentioned, a &quot;chief technical consultant&quot; of Huge Leader group, who is also the 
COO of Tera Age, so he won't be an employee of Huge Leader or FingerAd. <strong>
Notably CPEC has not made any announcement about the apparent sale by its 
subsidiary, iKanTV, of the network to FingerAd. Nor has COMG, which still owns 
47% of iKanTV.</strong></p>
<p>Railsmedia says that FingerAd and iKan have agreed that iKan shall &quot;provide 
management services to FingerAd in respect of the digital media network under 
the Chain Store Group such as video production, processing and upload, operation 
of program, playlist and maintaining the hardware.&quot; In return, &quot;FingerAd shall 
allow iKan to use a portion of the the advertising air time and certain 
advertising space on the digital media network free of charge.&quot;</p>
<p>A bit of checking reveals that FingerAd and iKanTV are so close that the domain FINGERAD.COM.HK is 
actually <a href="../codocs/whoisFINGERAD.COM.HK.pdf" target="_blank">registered</a> 
to iKanTV and they share the same address at 17/F Bangkok Bank Building, 18 
Bonham Strand West, HK.</p>
<p>Nothing is said about how Ms Chan Ka Wai, Mr Xiao Baoyan and Anthony Tang 
came to invest in FingerAd (or HL Vendor). They initially invested a grand total of 
HK$7,980 for the shares, based on the net liabilities of $2,669 plus the 
start-up loss of $10,649. They do not seem to be part of its management. We call 
on the SFC to investigate whether these people are really acting independently 
of CPEC, COMG, Railsmedia and their respective directors.</p>
<p>So far, the iKanTV story has involved COMG, CPEC and Railsmedia. But there is 
one more listed company involved...</p>
<h3>Zhi Cheng</h3>
<p>On 4-Apr-2011, Zhi Cheng
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0404/GLN20110404149.pdf" target="_blank">
agreed</a> to buy <a href="../dbpub/orgdata.asp?p=1863598">Unique Smart Group 
Ltd</a> (<strong>USG</strong>) from one Mr Wong Sin Lai (<strong>SL Wong</strong>) 
for HK$33m in cash. The BVI company was incorporated 5 months earlier, and 
&quot;carries on the business of program production for advertisements or for 
television and other forms of media&quot;. It's main asset was an agreement with - 
can you guess - iKanTV, for &quot;exclusive advertising agency rights for certain 
airtime slots on display televisions commercial broadcast in a Hong Kong retail 
chain store for a period of 10 months&quot; with an option on either side to renew 
for 3 years. USG would receive 30% of the advertising fees as an agency fee.</p>
<p>Stop and think - a 10-month contract, or 46 months at best, with a 
presumably-normal rate of agency fee for work done - why would that be worth 
paying $33m for? The deal was supported by another ample valuation from <a href="../dbpub/adviserships.asp?p=47074">Ample Appraisal Ltd</a>, who put the 
value of USG at HK$38m. The deal
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0419/GLN20110419023.pdf" target="_blank">
completed</a>  on 19-Apr-2011.</p>
<p>Up to 1-Apr-2011, USG had zero turnover and zero profit or loss. It had 
not traded. Citing the increasing number of mainland shoppers in HK, Zhi Cheng 
said that &quot;movie motion advertisements&quot; (surely, a tautology) can directly 
influence buying decision &quot;in particular to mainland China visitors&quot;. Are they 
particularly more gullible than HK shoppers?</p>
<p>So who is SL Wong? The only person by that name in our database, <a href="../dbpub/positions.asp?p=32610">Wong Sin Lai</a>, formerly known as 
Wong Sin Lei and Wong Tam Yee, is an INED of
<a href="../dbpub/articles.asp?p=13561">China Zenith Chemical Group Ltd</a> (<strong>China 
Zenith</strong>, 0362), the largest shareholder of which is Jimmy Chan Yuen 
Tung, brother of George Chan Yuen Ming, who in turn featured extensively in
<a href="muck2012p3.asp">Part 3</a> of this series in relation to 
Hycomm. SL Wong was
<a href="http://www.hkexnews.hk/listedco/listconews/gem/2011/0404/GLN20110404149.pdf" target="_blank">
appointed</a> by China Zenith on 29-Apr-2011 to replace
<a href="../dbpub/natarts.asp?p=18594">Peter Yau Chung Hong</a>, who resigned on 
8-Apr-2011 and has been rather busy with an inquiry into his conduct by the 
market misconduct tribunal. SL Wong is also an INED of <a href="../dbpub/articles.asp?p=17131">National Investments Fund Ltd</a> 
(1227), which is a member of what we call the "Chung Nam Network". He changed his name to Wong Sin Lai effective 
22-Feb-2011. We don't know why.</p>
<p>Zhi Cheng has a history of value-destroying transactions. From 11-Jan-2007 
onwards it has consolidated its shares 5 times by a total of 200,000:1, and 
still only trades at $0.365. If you had bought fewer than 200,000 shares any 
time before 11-Jan-2007, and not taken up the 3 subsequent open offers, then you 
would now have been rounded down to zero.</p>
<h3>4 listed companies, 3 shells</h3>
<p>So now you have yet another party (USG), along with FingerAd, dealing with 
iKanTV, and 4 listed companies involved. How many times can you slice and dice 
the same business to generate new shell deals?</p>
<ul>
	<li>Railsmedia, via FingerAd, is acquiring the hardware from iKanTV;</li>
	<li>CPEC and COMG, via iKanTV, are going to manage the hardware for 
	FingerAd in return for &quot;a portion&quot; of the advertising airtime; and</li>
	<li>Zhi Cheng, via USG, is going to get an agency commission for 
	selling the airtime given to iKanTV.</li>
</ul>
<p>&nbsp;and all that has been wrapped in shells and sold to 3 listed companies 
by individuals with no apparent role in the businesses:</p>
<ul>
	<li>CPEC paid $116.84m to Kwok Ming Fai and Vicky Yu for 49% of iKanTV</li>
	<li>Railsmedia is paying $690m to Ms Chan Ka Wai, Mr Xiao Baoyan and Anthony 
	Tang for FingerAd</li>
	<li>Zhi Cheng has paid $33m to SL Wong for USG</li>
</ul>
<p>That's a total of about $840m that has gone to these individuals - all of 
whom were purportedly independent third parties, plus $28.8m from Railsmedia to 
Vicky Yu for 7% of CNMHK as mentioned in <a href="muck2012p1.asp">
Part 1</a>.</p>
<p>In <a href="muck2012p6.asp">Part 6</a> today, we will return to COMG and its latest transaction, amongst others.</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=971507">AMAZING WORLD CORPORATION LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=47074">AMPLE APPRAISAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=23261">China National Culture Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16407">Dadi International Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1781638">FingerAd Media Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18154">Heng Xin China Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1851806">Huge Leader Development Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10770">IntelliMark AI International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=151491">Luxey Online Solutions Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4905">NATIONAL UNITED RESOURCES HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1863598">Unique Smart Group Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=1850390">Chan, Billy Kai Sing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=6883">Chan, George Yuen Ming</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=17963">Kwok, Allan Ming Fai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=19150">Tang, Anthony Tsz Hoo</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=32610">Wong, Tam Yee</a></li>
				
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