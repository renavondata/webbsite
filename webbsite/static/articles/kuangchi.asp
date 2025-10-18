
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

<script type="text/javascript">document.title="Kuangchi the stratospheric stock";</script>

	<div class="summary">Our latest New Year bubble worth popping is Kuangchi (0439), HK's top-performing stock of 2014, valued at HK$32.03bn (US$4.13bn) or 16.1x NTAV.</div>

<h2 class="center">Kuangchi the stratospheric stock<br>
<span class="headlinedate">2 January 2015</span></h2>
<p>Continuing our New Year bubbles theme, the next one worth popping is
<a href="../dbpub/orgdata.asp?p=2538">Kuangchi Science Ltd</a> (<strong>Kuangchi</strong>, 
0439), which was HK's top-performing stock in 2014, with a
<a href="../dbpub/str.asp?i=314">Webb-site Total Return</a> of 2167%, closing at 
$5.26. Appropriately enough, it was renamed from &quot;Climax International Co Ltd&quot; 
during the year, because what follows next may be an anti-climax.</p>
<p>The hype surrounding this stock began on 13-Jun-2014, when Kuangchi
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0613/LTN20140613763.pdf" target="_blank">
announced</a> a massive subscription of new shares. It was so large that in 
order to meet the free float requirement of 25%, part of the new shares had 
to be issued as unlisted non-voting &quot;preferred shares&quot; which are convertible 
into listed ordinary shares when the free float permits (after 
substantial shareholders sell down).</p>
<p>So Kuangchi issued 1667m ordinary shares and 2,683m preferred shares, a 
total of 4350m shares at HK$0.08 each, eventually raising $348m gross. We say 
&quot;eventually&quot;, because the preferred shares were issued in two equal tranches 
partly-paid, with only $0.004 per share payable initially. The remaining $0.076 
is payable on the first tranche within 6 months of completion, and on the 
second tranche within 1 year of completion. The subscription price of $0.08 was 
a 76.1% discount to the closing price of $0.335 before the deal, but close to 
the net tangible asset value of $0.082 per share at 31-Mar-2014.</p>
<p>The buzz behind the deal is that, under an &quot;Outsourcing Technology 
Development Agreement&quot; (<strong>OTDA</strong>) for a fee of HK$55m, Kuang-Chi 
Innovative Technology Ltd (<strong>KCIT</strong>) would:</p>
<blockquote>&quot;research and develop a near space civil flying 
apparatus with a volume of not less than 10,000 cubic metre[s], which shall be 
equipped with communications facilities to be used in the range from ground 
level to near space and shall be able to fly at no less than 20 kilometres above 
sea level&quot;</blockquote>
<p>This may sound exciting, but a large-volume &quot;near space flying apparatus&quot; is of course a 
helium balloon with bells on. As a measure of the difficulty involved, 
the agreement called for KCIT to complete the design and testing of the &quot;scaled 
flying apparatus&quot; (perhaps a trial balloon) by 15-Sep-2014, and by 30-Oct-2014, 
to complete the &quot;research and development of the required materials for the 
flying apparatus&quot;, and by 31-Dec-2014 to &quot;complete the testing of 
the flying apparatus and deliver&quot; it to Kuangchi for a further test run.</p>
<p>On 22-Dec-2014 there was much celebration (the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1222/LTN20141222794.pdf" target="_blank">
announcement</a> says so) when Kuangchi officially opened the &quot;Appollo Base&quot; (or 
possibly, the Apollo Base - they can't seem to decide on the spelling) and there 
erected the &quot;KuangChi Space House No. 1&quot; which is 42 metres tall, covers 10,000 
square metres in site area, and is &quot;currently the greatest construction in the 
PRC.. in terms of height and scale, respectively&quot;. So forget the
<a href="http://en.wikipedia.org/wiki/Shanghai_Tower" target="_blank">Shanghai 
Tower</a>, which is 632 metres tall, or the
<a href="http://en.wikipedia.org/wiki/National_Centre_for_the_Performing_Arts_(China)" target="_blank">
National Grand Theatre</a> which covers 12,000 square metres. This temporary air-supported 
hangar is something like the ones sold by
<a href="http://www.membranestructuresinc.com/industrial-structures/" target="_blank">
Membrane Structures inc</a>., or a larger version of the bubbles over swimming 
pools in the winter.</p>
<p>Then they &quot;revealed for the first time&quot; (revelations are like that):</p>
<blockquote>&quot;a disruptive novel space service platform newly 
developed by the Group, namely the &quot;Cloud&quot;, as well as certain equipment and 
technology specifically developed for the &quot;Traveller&quot;, the civil near space 
flying apparatus, and to be released at the KuangChi Apollo Base.&quot;</blockquote>
<p>Ah yes, &quot;The Cloud&quot; or, if you look at the
<a href="http://www.gettyimages.com/search/events/529973897" target="_blank">
pictures</a>, a giant silvery helium blimp without its tail fins.</p>
<p>A
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0728/LTN201407281096.pdf" target="_blank">
circular</a> went out on 29-Jul-2014 and the deal
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0822/LTN20140822785.pdf" target="_blank">
completed</a> on 22-Aug-2014. Prior to that, Kuangchi (then Climax) was 44.08% 
held by CEO <a href="../dbpub/positions.asp?p=15827">Hans Wong Hin Shek</a>, who 
resigned on completion, along with most of the board. He then held 638,981,013 
shares now worth $3361m at the inflated market price.</p>
<p>According to the circular and details from a subsequent
<a href="http://di.hkex.com.hk/di/NSForm3A.aspx?fn=159410" target="_blank">
disclosure of interest</a>, the main subscriber, with 68% of the placement, was 
New Horizon Wireless Technology Ltd (<strong>New Horizon</strong>), which is 51% 
owned by KCIT and 49% by Shenzhen Kuang-Chi Hezhong Technology Ltd (<strong>SKCHT</strong>). 
KCIT is a 60% subsidiary of Shenzhen Dapeng Kuang-Chi Technology Ltd (<strong>SDKCT</strong>), 
which is a 53% subsidiary of Shenzhen Dapeng Kuang-Chi Lianzhong Technology LLP 
(<strong>SDKCLT</strong>), of which Dr Liu Ruopeng controls 37.73%. He also owns 
35.09% of SKCHT. Multiply all that and he has a 23.31% economic interest in New 
Horizon.</p>
<p>New Horizon would not have to put in cash though, because it was provided 
with a loan by <a href="../dbpub/orgdata.asp?p=2365322">Rosier Investments Ltd</a> 
(<strong>Rosier</strong>, BVI) in 3 tranches. Tranche 1 was sufficient to pay 
the entire cost of its ordinary shares and the $0.004 part-payment on the 
preference shares. Tranche 2, 6 months later, was enough to pay up all but $45m 
of the Tranche-A Preferred Shares, and Tranche 3, a year after completion, was 
sufficient to pay up all but $10m of the Tranche-B preferred shares. It is 
probably not a coincidence that the only funds New Horizon would need to find is 
equal to the $55m that would be due to KCIT under the OTDA, plus interest on the 
loan at 6.5% p.a..</p>
<p>New Horizon has pledged 986m of its Kuangchi ordinary shares (that's 87% of 
its holding of ordinary shares) to Rosier as security for the loan. Rosier is 
owned (via wholly-owned offshore companies) by
<a href="../dbpub/positions.asp?p=7983">Johnson Ko Chun Shun</a> (<strong>Mr Ko</strong>, 
41.7%), Yu Nan (<strong>Ms Yu</strong>, 29.1%), Liu Shu Ling (<strong>Ms Liu</strong>, 
14.6%) and Guo Shanling (<strong>Ms Guo</strong>, 14.6%). Webb-site Who's Who 
has no previous record of Ms Yu, Ms Liu or Ms Guo.</p>
<p>Apart from the 68% of the placement taken by New Horizon, the remainder was 
taken 9.33% each by Mr Ko and Ms Yu, 4.67% each by Ms Liu and Ms Guo, and 4% by
<a href="../dbpub/orgdata.asp?p=4917">Reorient Group Ltd</a> (<strong>Reorient</strong>, 
0376), which is 51.35% owned by Mr Ko, its Chairman.
<a href="../dbpub/adviserships.asp?p=50932">Reorient Financial Markets Ltd</a> 
acted as a financial adviser to Kuangchi on the deal, along with
<a href="../dbpub/adviserships.asp?p=12115">Kingston Corporate Finance Ltd</a>.</p>
<p>Like the planned balloons, the stock quickly inflated and took off to the stratosphere, reaching a 
high of $6.23 on 23-Sep-2014, and closing the year at $5.26. Along the way, on 
12-15-Sep-2014, Kuangchi
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0915/LTN20140915989.pdf" target="_blank">
agreed</a> with 26 unnamed <del>suckers</del> subscribers 
to issue 289.9m shares at $5.386 each, raising $1561m. The price was 67 times the New Horizon subscription price, but a 
5.3% discount to the closing price on 12-Sep-2014. The subscription
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0929/LTN201409291253.pdf" target="_blank">
completed</a> on 29-Sep-2014.</p>
<p>Including the preferred shares, there are 6,089,401,125 issued shares. 
At the 2014 closing price of $5.26, the company is worth HK$32.03bn (US$4.13bn). 
The
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/1209/LTN20141209256.pdf" target="_blank">
interim report</a> shows net tangible assets at 30-Sep-2014 were $1785m. To this 
we add the payments due on the preferred shares of $204m, making $1989m pro 
forma, or $0.327 per share. So the stock is trading at about 16.1x its net 
tangible assets per share.</p>
<p>In our view, Kuangchi shows all the characteristics of a bubble. Helium 
balloons, when they reach a high enough altitude, tend to burst, sending 
their cargo to the ground. If you are on board, now would be a good time to 
<a href="http://www.theguardian.com/science/video/2014/oct/25/google-executive-alan-eustace-jumps-space-felix-baumgartner-record-video" target="_blank">strap on your parachute and jump</a>.</p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=12115">KINGSTON CORPORATE FINANCE LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2538">KuangChi Science Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2365322">Rosier Investments Limited (VG)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4917">Yunfeng Financial Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=50932">Yunfeng Financial Markets Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=7983">Ko, Johnson Chun Shun</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=106">Bubble/concentration warnings</a></li>
				
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