
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

<script type="text/javascript">document.title="Solstice Special";</script>

	<div class="summary">On the summer solstice comes the story of Solartech, an electrical cable maker that has bought a 20% interest in HK1186.com for a ridiculous price. Sounds familiar? The HK Stock Exchange code of Pacific Century Cyberworks just happens to be 1186. We look at the devastating effect of repeated stock issues by Solartech on shareholder value, and turn an eye to the trend of "independent valuations" on internet acquisitions.</div>

<h2 class="center">Solstice Special<br>
<span class="headlinedate">21 June 2000</span></h2>
<p>For our Northern hemisphere readers, while away those bright
summer evenings with a glance at <a href="http://www.chaus.com/" target="_blank">Solartech
International Holdings Ltd</a> (never look directly at this stock - it may cause
permanent blindness to fundamental valuation principles). </p>

<p>Solartech was listed on 12-Dec-96 and until recently had been
doing a decent but unspectacular job of making power cords (the sort of thing
you use to plug in your kettle), audio cables and telephone cords. Turnover was
growing nicely, and although net margins were shrinking, the company remained
profitable. </p>

<p>Solartech has done a string of placings under repeat general
mandates since Nov-99 and spent some of the proceeds on dot-com acquisitions.
For example, it paid HK$49m cash for <a href="http://www.yaso.com.cn/" target="_blank">yaso.com.cn</a>
and HK$43m cash for <a href="http://www.51qq.com/" target="_blank">51qq.com</a>.
Solartech also engaged in an trendy but pointless 10 for 1 stock split. We are
not talking about HSBC here! </p>

<p>Then on 5-Jun-00 the company <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000607/LTN20000607019.doc" target="_blank">announced</a>
the acquisition of a 20% interest in a
company called HK1186.com Ltd. The stock code on the Stock Exchange of Hong Kong
for <a href="../dbpub/articles.asp?p=2925" target="_blank">Pacific Century Cyberworks</a> just
happens to be 1186, but as far as we know there is no connection between the
company and PCCW. </p>

<p>The business of <a href="http://www.hk1186.com/" target="_blank">HK1186.com</a>
is described as &quot;the provision of online VCD/DVD wholesaling and retailing
outlets and online cinemas and the licensing of copyrights to other web sites
for online broadcasting.&quot; The company has another domain which is&nbsp; <a href="http://www.goodtake.st/" target="_blank">Goodtake.st</a>.
Both sites were launched as recently as Apr-00. </p>

<p>Prior to the Solartech investment, HK1186 was 56% owned by Mr.
Wong Chak Wai. He is described as <i>&quot;the head of the marketing team of
equity derivative products in a foreign bank since October 1997&quot;</i>. The
other 46% was owned by a company owned in turn by four individuals who have been
business partners in film production, VCD/DVD distribution and copyright trading
since 1997. </p>

<p>Solartech is paying HK$179.092m (US$23.0m) for a 20% interest in
HK1186.com Ltd. This was done through two different agreements on 23-May-00 and
2-Jun-00. In the first agreement, Solartech bought a 6% interest in HK1186.com
Ltd from Mr Wong for HK$54m in cash, valuing HK1186.com at $900m. </p>

<p>In the second agreement, Solartech bought a further 14% interest
in exchange for 2.2 billion new shares valued at HK$0.05686 per share. The new
shares represent 19.9% of the existing issued share capital - almost exhausting
the 20% general mandate on the day it was granted, which explains why they did
the deal in two stages. No mention was made of the intended acquisition when the
general mandate was sought. The transaction gives the vendors 16.6% of the
enlarged Solartech. </p>

<h3>Valuations</h3>

<p>Solartech said that the acquisition price &quot;represents a 10%
discount to the amount of HK$1 billion at which a firm of independent valuers
valued the business of HK1186 as at 2 June 2000.&quot; </p>

<p>And how was this valuation arrived at? It is as reliable as the
projections on which it was based: </p>

<blockquote>
  <p>&quot;The valuation was arrived at by applying a multiplier of
  8.5 to the revenue projection of HK1186 for the 12 months period ending in
  April 2001 which is estimated to be around HK$118m.&quot; </p>

</blockquote>
<p>Note that is a multiple of revenue, not profit. Solartech says
that &quot;it is expected that HK1186 will begin generating a net profit around
October 2000&quot; but no word on how much. </p>

<p>There has been a growing trend in HK of listed companies coming
up with &quot;independent valuations&quot; in an effort to rationalise paying
ridiculous prices for internet acquisitions. In most cases, these valuations are
based on future projections and either discounting cashflows for years into the
future, or more often, applying multiples to projected turnover and citing
&quot;companies in the USA&quot; with similar valuations. It's a case of the
blind leading the blind. Often the role of the independent valuer is simply to
apply a mathematical rule to the projections and then to disclaim any
responsibility for the projections themselves (since these are made by the
management of the target). That really makes the valuation pointless. </p>

<p>These valuations normally fail to take any regard of the costs
of establishing the company being acquired - and that is a good indicator of the
barriers to entry for would-be competitors. In this case, HK1186.com did not
even commence business until Apr-00. Up to 22-May-00 it had an unaudited loss
before tax of HK$460,000 and the unaudited net assets of its holding company
(which had no other assets) were HK$3,560,000. In addition, there are
shareholders loans of about HK$2,985,000. Add these figures up and you have the
starting shareholders' capital of just <b>HK$7.0m</b>. </p>

<p>So let's see - invest HK$7m, and get a dot-com company worth
HK$1,000m. Get HK$54m in cash and 17% of a listed company in return&nbsp; for
20% of your dot-com company. Nice work if you can get it. </p>

<p>Shareholders of Solartech have suffered huge voting dilution
from this and other deals, none of which has been offered to existing minority
shareholders. They have seen the share price soar to $0.44 on 11-Feb-00 then
collapse by 91%, closing at $0.041 today. </p>

<p>If a shareholder owned 1% of Solartech a year ago, when the
market price was $0.158 (split-adjusted) then he is now sitting on a loss of 74%
and has seen his stake diluted to 0.45% of the company. There's no solace this
solstice. </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=3251">SOLARTECH INTERNATIONAL HOLDINGS LIMITED</a></li>
				
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