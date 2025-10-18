
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

<script type="text/javascript">document.title="Stop Karrie's expensive wedding";</script>

	<div class="summary">We urge independent shareholders to vote against Karrie's proposed HK$43m acquisition of a wedding business and travel agency, loss-making startups with net liabilities of $6.6m.</div>

<h2 class="center">Stop Karrie's expensive wedding<br>
<span class="headlinedate">20 March 2012</span></h2>
<p>It's sad when good companies go bad. <a href="../dbpub/articles.asp?p=2471">
Karrie International Holdings Ltd</a> (<strong>Karrie</strong>, 1050), an electronics 
manufacturing services provider, was once, seven years ago, our &quot;2004 Christmas 
Pick&quot;, gaining 30.8% in the following year for which the recommendation was 
valid. Unfortunately, that pretty much marked its high point. It wasn't just the 
global financial crisis hitting demand for its customers' products and the 
rising cost of Chinese manufacturing, but also a decline in corporate governance 
that has turned the stock sour.</p>
<p>Karrie
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2009/0119/LTN20090119290.pdf" target="_blank">announced</a> on 19-Jan-2009 that there would be no more quarterly results - the 
last set was for the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2008/0911/LTN20080911198.pdf" target="_blank">
quarter ended 30-Jun-2008</a>. On 22-Oct-2010 it
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/1022/LTN20101022502.pdf" target="_blank">
agreed</a> to buy Yixing Karrie Commercial Building Development Co Ltd (<strong>Yixing 
Karrie</strong>, PRC) from a company controlled by the Chairman and controlling 
shareholder, Mr Ho Cheuk Fai (<strong>CF Ho</strong>) and his wife, for 
RMB105.12m (HK$123.68m), satisfied with 291m new shares @$0.425.</p>
<p>Yixing Karrie owned a 50-year lease on a piece of bare land in Yixing, Jiangsu province, 
acquired for RMB52.50m (HK$61.76m), with a site area of 20,012 sq.m. and 
approval for a 21-floor commercial building of 34,733 sq.m. (373,863 sq ft), with 
an expected total investment cost (including land) of RMB198.50m (HK$233.52m). 
Only US$12m (HK$93.6m) had been paid into Yixing Karrie by the vendor at that 
stage. The 1st and 2nd floors would be for a &quot;shopping plaza or office&quot; and the 
other floors as &quot;hotel or service[d] apartments&quot;. The inclusion of these 
alternatives tells you just that the project was still at the planning stage. 
Being part of
<a href="http://www.youtube.com/watch?v=o2SWTguNjlQ" target="_blank">Jiangsu 
Yixing Economic Development Zone</a>, Karrie expected to get incentives from the 
local government of about RMB43.50m (HK$51.18m) &quot;by cash reimbursement&quot; as it 
had done with its nearby factory site.</p>
<p>Incidentally, Karrie's Yixing factory was mothballed in Nov-2011. The
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2011/1214/LTN20111214138.pdf" target="_blank">
interim report</a> says:</p>
<blockquote>&quot;After two years of production and operation in Yixing Plant, 
the Group considers that the fundamental facilities in the surrounding area of 
Yixing Plant are inadequate and suppliers are also scattered. In addition, 
logistics costs and operating costs are high given its location in the Yangtze 
River Delta Region, which is relatively far from the plants in the Pearl River 
Delta Region, and it is difficult to manage.&quot;</blockquote>
<p>Perhaps they should have analysed these problems in advance.</p>
<p>The
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/1111/LTN20101111240.pdf" target="_blank">
circular</a> for the acquisition of Yixing Karrie said that Chairman CF Ho &quot;has 
been invested in the development of 
wedding theme city with all accessory facilities such as hotels, supermarkets, 
shopping mall, residential properties and various leisure facilities in Fenggang 
Qu, Dongguan, the PRC since 2001... the Directors...may explore the possibility 
of developing the commercial building to be built on the Land as a theme city 
for wedding&quot;. The Fenggang facility is probably the
<a href="http://www.castfasthotel.com" target="_blank">Castfast Hotel</a>.</p>
<p>The deal completed on 27-Jan-2011. By the time of the interim results on 
29-Nov-2011, the &quot;external structure of the 21-storey building, Yixing 
Commercial Hotel Building, has been completed and is expected to seal the top 
early next month&quot;. So it appears they went for a hotel. The building was 
expected to commence operation by the end of 2012.</p>
<p>If investors in Karrie wanted to invest in property developers, there are far 
more experienced companies to choose from. Investors generally prefer companies 
to focus on their core competencies, and dislike companies being used as a 
depository for pet projects of the Chairman. Your editor, who owns less than 5% 
of Karrie, voted against the transaction, but it was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/1206/LTN20101206733.pdf" target="_blank">
approved</a> by 65.96% to 34.04% at the meeting on 6-Dec-2010. Only 34.6% of the 
shares which could vote did vote.</p>
<h3>The wedding business</h3>
<p>Now fast forward to last Friday (16-Mar-2012) and Karrie has
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2012/0318/LTN20120318004.pdf" target="_blank">
announced</a> another proposed connected acquisition, this time to buy
<a href="../dbpub/orgdata.asp?p=1578971">Angel Love Studio (HK) Co Ltd</a> (<strong>Angel 
Love</strong>) and <a href="../dbpub/orgdata.asp?p=1545549">The One Travel Co., 
Ltd</a> (<strong>One Travel</strong>) from
<a href="../dbpub/orgdata.asp?p=1483589">The Wedding City Co Ltd</a>, of which 
CF Ho is a substantial shareholder. These are both recent start-ups. Angel Love 
was incorporated in HK on 18-Mar-2010 and One Travel, a travel agency, was 
incorporated in HK on 7-Dec-2009. It's
<a href="http://www.theone-travel.com.hk" target="_blank">web domain</a> was 
registered on 3-Mar-2011, and it
<a href="http://www.itehk.com/ITEHK/index.php?menuid=main&amp;module=exhibitor&amp;topLevel=53&amp;subLevel=0&amp;lang=en&amp;menuID=main&amp;task=category&amp;option=show&amp;category=d4_4&amp;pageSize=30&amp;page=1&amp;id=133" target="_blank">
sends</a> customers to CF Ho's Castfast Hotel in Dongguan, amongst other places.</p>
<p>Angel Love has two even newer subsidiaries,
<a href="../dbpub/orgdata.asp?p=1661694">Dreamy Bridal Ltd</a> (<strong>Dreamy 
Bridal</strong>), incorporated on 15-Oct-2010 and engaged in wedding 
photography, and <a href="../dbpub/orgdata.asp?p=1702900">My Affection Ltd</a>, 
incorporated on 27-Jan-2011 and engaged in wedding planning. Dreamy Bridal was 
known as &quot;Dreamy Island Wedding Co Ltd&quot; until last month (9-Feb-2012) and as 
&quot;Jade International Develop Ltd&quot; until 29-Dec-2011. The earlier name sounds like 
a shelf company name, so it is a fair bet that the Dreamy Bridal business is 
less than 3 months old.</p>
<p>Combined, in 2011 the target companies had unaudited revenue of HK$4.50m and 
a loss of $3.40m. In 2010, they lost $3.99m on revenue of $1.43m. They had net 
liabilities of $6.64m at 31-Dec-2011, although some of that may be a debt which 
Karrie would acquire. Both
<a href="http://www.facebook.com/angellovehk" target="_blank">Angel Love Studio</a> 
and
<a href="http://www.tichk.org/public/website/en/agents/22420/details.html" target="_blank">
One Travel</a> appear to be at Shop G18, G/F,
<a href="http://www.gpwedding.hk/" target="_blank">Golden Plaza, Mongkok</a>, 
Hong Kong's wedding hub.</p>
<p>The price on this deal is HK$43m, to be satisfied with 130m shares @$0.346, 
diluting existing shareholdings by 14.98%. Even if we agreed with the business 
direction that Karrie is taking, we would see no reason to pay this much when 
Karrie itself could have started the same business and got to this stage for an 
investment of about HK$7.39m (assuming that the net liabilities minus the losses 
give the starting point at 1-Jan-2010). They are now trying to sell it for about 
6 times the cost. Barriers to entry in wedding photography and wedding planning 
are almost zero, which is why so many wedding photographers and planners are 
self-employed or SMEs. The sale of wedding gowns and travel agency businesses 
are also easy to enter. The terms of acquisition are simply not fair and 
reasonable, regardless of what any two-bit independent financial adviser that 
they may hire will tell you.</p>
<p>So yes, &quot;we know cause or just impediment why these persons should not be 
joined together&quot;. The dowry is too darn expensive. <strong>Your editor will vote 
against this transaction and urges all minority shareholders to do likewise.
</strong>Karrie should break off her engagement because this wedding is not 
going to happen, if we have any say in the matter.</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=62609">CASTFAST PROPERTIES DEVELOPMENT CO., LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1661694">Fullhouse Kitchen Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1702900">Karrie Automotive Industrial Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2471">KARRIE INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1578971">My Affection Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1545549">One Travel Co., Limited (The)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1483589">Wedding City Co. Limited (The)</a></li>
				
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