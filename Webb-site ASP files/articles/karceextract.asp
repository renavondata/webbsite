
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

<script type="text/javascript">document.title="Karce chairman extracted hidden fee";</script>

	<div class="summary">According to a judgment published today, when Karce (1159) sold a PCB business in 2008, the price was actually US$4m, not US$3m as Karce announced, and US$1m went as a "consultancy fee" to a company called Extract Group Ltd. And guess who owned Extract? We tell you, and call on the SFC and SEHK to investigate.</div>

<h2 class="center">Karce chairman extracted hidden fee<br>
<span class="headlinedate">21 January 2011</span></h2>
<p>On 12-Sep-2008, <a href="../dbpub/orgdata.asp?p=5104">Karce International 
Holdings Ltd</a> (<strong>Karce</strong>, 1159) agreed to sell its printed 
circuit board business to KFE Hong Kong Co., Ltd (<strong>KFE</strong>), which 
was owned by <a href="../dbpub/orgdata.asp?p=63741">KFE Japan Co., Ltd of Japan</a> (<strong>KFE Japan</strong>), which is 
listed on the Nagoya Stock Exchange. The price was US$3m in cash, of which Karce 
agreed to reinvest US$1m in new shares of KFE Japan.</p>
<p>The sale was effected by Karce selling Jet Master Ltd (<strong>Jet Master</strong>) 
to KFE. Jet Master in turn owned Dongguan Tai Shan Electronics Co., Ltd. It was 
treated as a discloseable transaction under the Listing Rules. The deal was 
covered in a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20081016/LTN20081016247.pdf" target="_blank">
circular</a> dated 17-Oct-2008. Karce was advised by Nuada Ltd -
<a href="../dbpub/adviserships.asp?p=37566">click here</a> to see their other 
clients, several of which have featured in Webb-site horror stories before.</p>
<p>We thought nothing more about that until today, when the case of
<a href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=74894&amp;currpage=T" target="_blank">
KFE v Extract Group Ltd</a> (<strong>Extract</strong>) was published. It turns 
out that, undisclosed to Karce shareholders, there was a side deal between KFE 
and Extract, for a further US$1m, taking the total price on the disposal to 
US$4m. As the judgment put it:</p>
<blockquote>
	<p>&quot;A deal was struck between Karce and [KFE] whereby the total 
	consideration payable by the plaintiff for acquiring the disposal target was 
	US$4 million. The total consideration was divided into 2 parts:</p>
	<p>(i) acquisition of the disposal target for a consideration of 
	US$3 million by way of a sale and purchase agreement; and</p>
	<p>(ii) consultancy service for procurement of an upgraded 
	sewage license for output of up to 800 tons per day ("the License") to be 
	granted to the PRC company for a fee of US$1 million. Karce nominated [Extract] 
	as consultant who eventually entered into the consultancy agreement in question 
	("the Consultancy Agreement") with [KFE].&quot;</p>
</blockquote>
<p>And guess who owned Extract? The judgment doesn't say, but we can tell you. 
According to a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20080929/LTN20080929965.pdf" target="_blank">
circular</a> dated 30-Sep-2008, Extract was owned by the Founder and Chairman of 
Karce, <a href="../dbpub/positions.asp?p=5105">Tong Shek Lun</a> (<strong>Mr 
Tong</strong>). That circular covered the disposal by Karce to Extract of the 
calculator and electronic organiser business for HK$250m.</p>
<p>The &quot;consultancy&quot; side deal has now been revealed because KFE is suing 
Extract, saying that Extract failed to procure the sewage license by 
30-Sep-2009, and so KFE wants its money back.</p>
<p>Mr Tong remained Chairman of Karce until 2-Mar-2009. If, as the judgment 
says, the acquisition was a two-part deal for US$4m, then the circular was 
seriously misleading, and Mr Tong had a secret interest in the disposal, in 
terms of the US$1m &quot;consultancy fee&quot; payable to his wholly-owned company. The 
whole disposal should have been treated as a connected transaction and subject 
to independent shareholders' approval, because there is the obvious question of 
whether an excessive part of the US$4m consideration was allocated to Mr Tong's 
company, and the question of why the &quot;consultancy work&quot; was not done by Karce 
itself.</p>
<p>The
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090429/LTN200904291317.pdf" target="_blank">
Directors' Report</a> (p42) for the year to 31-Dec-2008 also failed to disclose 
Mr Tong's interest in the sale of Jet Master by way of the side deal between 
Extract and KFE.</p>
<p>We call on the SFC to investigate whether the circular dated 17-Oct-2008 and 
the subsequent annual report was false and misleading, and the Stock Exchange to 
investigate whether Karce breached the Listing Rules on connected transactions. 
The SFC should also investigate whether its licensee Nuada Ltd, the adviser to 
Karce on the sale, knew about the side deal.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=63740">KFE HONG KONG CO., LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=63741">KFE Japan Co., Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=37566">Nuada Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5104">Smart Digital Technology Group Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=5105">Tong, Shek Lun</a></li>
				
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